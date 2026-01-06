.class Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProtocol;
.super Ljava/lang/Object;
.source "CaeProtocol.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertToCae(I)I
    .locals 1
    .param p0, "service"    # I

    .line 29
    packed-switch p0, :pswitch_data_0

    .line 120
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 118
    :pswitch_1
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_AR_DISTANCE_SERVICE:I

    return v0

    .line 116
    :pswitch_2
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FREE_FALL_DETECTION_SERVICE:I

    return v0

    .line 114
    :pswitch_3
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CH_LOC_TRIGGER_SERVICE:I

    return v0

    .line 112
    :pswitch_4
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_CALIBRATION_SERVICE:I

    return v0

    .line 110
    :pswitch_5
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SENSOR_STATUS_CHECK_SERVICE:I

    return v0

    .line 108
    :pswitch_6
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

    return v0

    .line 106
    :pswitch_7
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ANY_MOTION_DETECTOR_SERVICE:I

    return v0

    .line 104
    :pswitch_8
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MAIN_SCREEN_DETECTION_SERVICE:I

    return v0

    .line 101
    :pswitch_9
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    return v0

    .line 99
    :pswitch_a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WIRELESS_CHARGING_MONITOR:I

    return v0

    .line 97
    :pswitch_b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EAD_SERVICE:I

    return v0

    .line 95
    :pswitch_c
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->HALL_SENSOR_SERVICE:I

    return v0

    .line 93
    :pswitch_d
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PHONE_STATE_MONITOR_SERVICE:I

    return v0

    .line 91
    :pswitch_e
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    return v0

    .line 89
    :pswitch_f
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    return v0

    .line 87
    :pswitch_10
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    return v0

    .line 85
    :pswitch_11
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    return v0

    .line 83
    :pswitch_12
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    return v0

    .line 81
    :pswitch_13
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    return v0

    .line 79
    :pswitch_14
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    return v0

    .line 77
    :pswitch_15
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    return v0

    .line 75
    :pswitch_16
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    return v0

    .line 73
    :pswitch_17
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    return v0

    .line 71
    :pswitch_18
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    return v0

    .line 69
    :pswitch_19
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    return v0

    .line 67
    :pswitch_1a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    return v0

    .line 65
    :pswitch_1b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    return v0

    .line 63
    :pswitch_1c
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    return v0

    .line 60
    :pswitch_1d
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    return v0

    .line 58
    :pswitch_1e
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    return v0

    .line 55
    :pswitch_1f
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    return v0

    .line 53
    :pswitch_20
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    return v0

    .line 51
    :pswitch_21
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    return v0

    .line 49
    :pswitch_22
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    return v0

    .line 47
    :pswitch_23
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    return v0

    .line 45
    :pswitch_24
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    return v0

    .line 43
    :pswitch_25
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    return v0

    .line 41
    :pswitch_26
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    return v0

    .line 39
    :pswitch_27
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    return v0

    .line 37
    :pswitch_28
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    return v0

    .line 35
    :pswitch_29
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    return v0

    .line 33
    :pswitch_2a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    return v0

    .line 31
    :pswitch_2b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static convertToSemContext(I)I
    .locals 1
    .param p0, "cae_type"    # I

    .line 125
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    if-ne p0, v0, :cond_0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    if-ne p0, v0, :cond_1

    .line 128
    const/4 v0, 0x2

    return v0

    .line 129
    :cond_1
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    if-ne p0, v0, :cond_2

    .line 130
    const/4 v0, 0x3

    return v0

    .line 131
    :cond_2
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    if-ne p0, v0, :cond_3

    .line 132
    const/4 v0, 0x5

    return v0

    .line 133
    :cond_3
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    if-ne p0, v0, :cond_4

    .line 134
    const/4 v0, 0x6

    return v0

    .line 135
    :cond_4
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    if-ne p0, v0, :cond_5

    .line 136
    const/16 v0, 0xb

    return v0

    .line 137
    :cond_5
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    if-ne p0, v0, :cond_6

    .line 138
    const/16 v0, 0xc

    return v0

    .line 139
    :cond_6
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    if-ne p0, v0, :cond_7

    .line 140
    const/16 v0, 0xd

    return v0

    .line 141
    :cond_7
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    if-ne p0, v0, :cond_8

    .line 142
    const/16 v0, 0xe

    return v0

    .line 143
    :cond_8
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    if-ne p0, v0, :cond_9

    .line 144
    const/16 v0, 0xf

    return v0

    .line 145
    :cond_9
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    if-ne p0, v0, :cond_a

    .line 146
    const/16 v0, 0x10

    return v0

    .line 147
    :cond_a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    if-ne p0, v0, :cond_b

    .line 148
    const/16 v0, 0x11

    return v0

    .line 149
    :cond_b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    if-ne p0, v0, :cond_c

    .line 150
    const/16 v0, 0x12

    return v0

    .line 151
    :cond_c
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    if-ne p0, v0, :cond_d

    .line 153
    const/16 v0, 0x13

    return v0

    .line 154
    :cond_d
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    if-ne p0, v0, :cond_e

    .line 155
    const/16 v0, 0x14

    return v0

    .line 156
    :cond_e
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    if-ne p0, v0, :cond_f

    .line 158
    const/16 v0, 0x15

    return v0

    .line 159
    :cond_f
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    if-ne p0, v0, :cond_10

    .line 160
    const/16 v0, 0x16

    return v0

    .line 161
    :cond_10
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    if-ne p0, v0, :cond_11

    .line 162
    const/16 v0, 0x18

    return v0

    .line 163
    :cond_11
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    if-ne p0, v0, :cond_12

    .line 164
    const/16 v0, 0x19

    return v0

    .line 165
    :cond_12
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    if-ne p0, v0, :cond_13

    .line 166
    const/16 v0, 0x1a

    return v0

    .line 167
    :cond_13
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    if-ne p0, v0, :cond_14

    .line 168
    const/16 v0, 0x1b

    return v0

    .line 169
    :cond_14
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    if-ne p0, v0, :cond_15

    .line 170
    const/16 v0, 0x1c

    return v0

    .line 171
    :cond_15
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    if-ne p0, v0, :cond_16

    .line 172
    const/16 v0, 0x1e

    return v0

    .line 173
    :cond_16
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    if-ne p0, v0, :cond_17

    .line 174
    const/16 v0, 0x20

    return v0

    .line 175
    :cond_17
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    if-ne p0, v0, :cond_18

    .line 176
    const/16 v0, 0x21

    return v0

    .line 177
    :cond_18
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    if-ne p0, v0, :cond_19

    .line 178
    const/16 v0, 0x22

    return v0

    .line 179
    :cond_19
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    if-ne p0, v0, :cond_1a

    .line 180
    const/16 v0, 0x23

    return v0

    .line 181
    :cond_1a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    if-ne p0, v0, :cond_1b

    .line 182
    const/16 v0, 0x24

    return v0

    .line 183
    :cond_1b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    if-ne p0, v0, :cond_1c

    .line 184
    const/16 v0, 0x27

    return v0

    .line 185
    :cond_1c
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    if-ne p0, v0, :cond_1d

    .line 186
    const/16 v0, 0x29

    return v0

    .line 187
    :cond_1d
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PHONE_STATE_MONITOR_SERVICE:I

    if-ne p0, v0, :cond_1e

    .line 188
    const/16 v0, 0x2a

    return v0

    .line 189
    :cond_1e
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->HALL_SENSOR_SERVICE:I

    if-ne p0, v0, :cond_1f

    .line 190
    const/16 v0, 0x2b

    return v0

    .line 191
    :cond_1f
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EAD_SERVICE:I

    if-ne p0, v0, :cond_20

    .line 192
    const/16 v0, 0x2c

    return v0

    .line 193
    :cond_20
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WIRELESS_CHARGING_MONITOR:I

    if-ne p0, v0, :cond_21

    .line 194
    const/16 v0, 0x2e

    return v0

    .line 195
    :cond_21
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    if-ne p0, v0, :cond_22

    .line 196
    const/16 v0, 0x2f

    return v0

    .line 197
    :cond_22
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MAIN_SCREEN_DETECTION_SERVICE:I

    if-ne p0, v0, :cond_23

    .line 199
    const/16 v0, 0x31

    return v0

    .line 200
    :cond_23
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ANY_MOTION_DETECTOR_SERVICE:I

    if-ne p0, v0, :cond_24

    .line 201
    const/16 v0, 0x32

    return v0

    .line 202
    :cond_24
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

    if-ne p0, v0, :cond_25

    .line 203
    const/16 v0, 0x33

    return v0

    .line 204
    :cond_25
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CH_LOC_TRIGGER_SERVICE:I

    if-ne p0, v0, :cond_26

    .line 205
    const/16 v0, 0x36

    return v0

    .line 206
    :cond_26
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SENSOR_STATUS_CHECK_SERVICE:I

    if-ne p0, v0, :cond_27

    .line 207
    const/16 v0, 0x34

    return v0

    .line 208
    :cond_27
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FREE_FALL_DETECTION_SERVICE:I

    if-ne p0, v0, :cond_28

    .line 209
    const/16 v0, 0x37

    return v0

    .line 210
    :cond_28
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_AR_DISTANCE_SERVICE:I

    if-ne p0, v0, :cond_29

    .line 211
    const/16 v0, 0x38

    return v0

    .line 213
    :cond_29
    const/4 v0, -0x1

    return v0
.end method
