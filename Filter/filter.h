#ifndef FILTER_H
#define FILTER_H

#include <stdint.h>
#include "../Sensors/AccelerationSensor/lsm6dsl.h"  // für LSM6DSL_VALUES
#include "../Sensors/MagnetometerSensor/lis3mdl.h"   // für LIS3MDL_VALUES

/* --- Struktur für gefilterte LSM6DSL-IMU-Werte --- */
typedef struct {
    float acc_x;
    float acc_y;
    float acc_z;
    float gyro_x;
    float gyro_y;
    float gyro_z;
    float temperature;
} LSM6DSL_FILTERED_VALUES;

/* --- Struktur für gefilterte LIS3MDL-Magnetometer-Werte --- */
typedef struct {
    float x;
    float y;
    float z;
    float temperature;
} LIS3MDL_FILTERED_VALUES;

/* GLOBALE FILTERWERTE, nur Deklaration */
extern volatile LSM6DSL_FILTERED_VALUES lsm6dsl_filtered_values;
extern volatile LIS3MDL_FILTERED_VALUES lis3mdl_filtered_values;

/* --- LSM6DSL-Filterfunktionen --- */
void LSM6DSL_Filter_Init(void);
LSM6DSL_FILTERED_VALUES LSM6DSL_Filter_Update(LSM6DSL_VALUES current);

/* --- LIS3MDL-Filterfunktionen --- */
void LIS3MDL_Filter_Init(void);
LIS3MDL_FILTERED_VALUES LIS3MDL_Filter_Update(LIS3MDL_VALUES current);

#endif
