#include "filter.h"
#include <string.h>

/* GLOBALE GEFILTERTE WERTE (ECHTE DEFINITION) */
LSM6DSL_FILTERED_VALUES lsm6dsl_filtered_values = {0};
LIS3MDL_FILTERED_VALUES lis3mdl_filtered_values = {0};

/* ============================================================
 * 5th Order Butterworth (SOS) Filter – coefficients from MATLAB
 * fs = 100 Hz, fc = 10 Hz
 * ============================================================ */
static const float sos[3][6] = {
    {0.0013f, 0.0013f, 0.0000f, 1.0000f, -0.5095f,  0.0000f},
    {1.0000f, 2.0016f, 1.0016f, 1.0000f, -1.0966f,  0.3554f},
    {1.0000f, 1.9994f, 0.9994f, 1.0000f, -1.3693f,  0.6926f}
};

/* 3 SOS sections → 3 biquads */
static Biquad biquads[3];

/* ============================================================
 * Initialize all biquad filters (set delay states to zero)
 * ============================================================ */
void LSM6DSL_Filter_Init(void)
{
    memset(biquads, 0, sizeof(biquads));

    for (int i = 0; i < 3; i++)
    {
        biquads[i].b0 = sos[i][0];
        biquads[i].b1 = sos[i][1];
        biquads[i].b2 = sos[i][2];
        biquads[i].a1 = sos[i][4];
        biquads[i].a2 = sos[i][5];
    }
}

/* ============================================================
 * Single sample processing through one biquad (DF2 transposed)
 * ============================================================ */
static inline float Biquad_Process(Biquad *bq, float x)
{
    float w = x - bq->a1 * bq->z1 - bq->a2 * bq->z2;
    float y = bq->b0 * w + bq->b1 * bq->z1 + bq->b2 * bq->z2;

    bq->z2 = bq->z1;    // update delay states
    bq->z1 = w;

    return y;
}

/* ============================================================
 * Process one value through all 3 SOS sections
 * ============================================================ */
float Filter_Process(float x)
{
    float y = x;

    for (int i = 0; i < 3; i++)
    {
        y = Biquad_Process(&biquads[i], y);
    }

    return y;
}

/* ============================================================
 * Apply the filter to all LSM6DSL sensor channels
 * ============================================================ */
LSM6DSL_FILTERED_VALUES LSM6DSL_Filter_Update(LSM6DSL_VALUES current)
{
    lsm6dsl_filtered_values.acc_x = Filter_Process(current.acc_x);
    lsm6dsl_filtered_values.acc_y = Filter_Process(current.acc_y);
    lsm6dsl_filtered_values.acc_z = Filter_Process(current.acc_z);

    lsm6dsl_filtered_values.gyro_x = Filter_Process(current.gyro_x);
    lsm6dsl_filtered_values.gyro_y = Filter_Process(current.gyro_y);
    lsm6dsl_filtered_values.gyro_z = Filter_Process(current.gyro_z);

    /* Temperatur NICHT filtern */
    lsm6dsl_filtered_values.temperature = current.temperature;

    return lsm6dsl_filtered_values;
}

/* ============================================================
 * LIS3MDL Filter
 * ============================================================ */
void LIS3MDL_Filter_Init(void)
{
    /* using same biquad chain → no extra states required */
    /* if you want separate filters, I can split biquads[] */
}

LIS3MDL_FILTERED_VALUES LIS3MDL_Filter_Update(LIS3MDL_VALUES current)
{
    lis3mdl_filtered_values.x = Filter_Process(current.x);
    lis3mdl_filtered_values.y = Filter_Process(current.y);
    lis3mdl_filtered_values.z = Filter_Process(current.z);

    /* Temperatur NICHT filtern */
    lis3mdl_filtered_values.temperature = current.temperature;

    return lis3mdl_filtered_values;
}
