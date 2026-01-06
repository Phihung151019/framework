.class Lcom/samsung/android/hardware/context/SemContextVersion;
.super Ljava/lang/Object;
.source "SemContextVersion.java"


# static fields
.field private static final ALL_SERVICE_MAP_INT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_SERVICE_MAP_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATH_ENV_VENDOR_DIR:Ljava/lang/String; = "vendor/"

.field private static final SEM_CONTEXT_SERVICE_DEVICE:I = 0x12c

.field private static final SEM_CONTEXT_SERVICE_LEVEL_DYNAMIC:I = 0x64

.field private static final SEM_CONTEXT_SERVICE_LIST_JSON:Ljava/lang/String; = "etc/sensorhub_services.json"

.field private static final TAG:Ljava/lang/String; = "SemContextVersion"


# instance fields
.field private mAvailableServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    .line 63
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/4 v1, 0x1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 63
    filled-new-array {v1, v1}, [I

    move-result-object v3

    const-string v4, "APPROACH"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 64
    filled-new-array {v4, v3}, [I

    move-result-object v3

    const-string v6, "PEDOMETER"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/4 v3, 0x3

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 65
    filled-new-array {v3, v1}, [I

    move-result-object v7

    const-string v8, "STEP_COUNT_ALERT"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/4 v7, 0x5

    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 66
    filled-new-array {v7, v1}, [I

    move-result-object v9

    const-string v10, "MOVEMENT"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/4 v9, 0x6

    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 67
    filled-new-array {v9, v1}, [I

    move-result-object v11

    const-string v12, "AUTO_ROTATION"

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/4 v11, 0x7

    filled-new-array {v11, v3}, [I

    move-result-object v12

    const-string v13, "AIRMOTION"

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v12, 0xb

    .line 118
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 69
    filled-new-array {v12, v1}, [I

    move-result-object v12

    const-string v14, "CALL_POSE"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v12, 0xc

    filled-new-array {v12, v1}, [I

    move-result-object v12

    const-string v14, "SHAKE_MOTION"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v12, 0xd

    filled-new-array {v12, v1}, [I

    move-result-object v12

    const-string v14, "FLIP_COVER_ACTION"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v12, 0xe

    .line 121
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 72
    filled-new-array {v12, v1}, [I

    move-result-object v15

    move/from16 v16, v3

    const-string v3, "GYRO_TEMPERATURE"

    invoke-interface {v0, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0xf

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 73
    move/from16 v17, v7

    filled-new-array {v3, v1}, [I

    move-result-object v7

    move/from16 v18, v3

    const-string v3, "PUT_DOWN_MOTION"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x10

    filled-new-array {v3, v1}, [I

    move-result-object v3

    const-string v7, "WAKE_UP_VOICE"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x11

    filled-new-array {v3, v1}, [I

    move-result-object v3

    const-string v7, "BOUNCE_SHORT_MOTION"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x12

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 76
    move/from16 v19, v9

    filled-new-array {v3, v1}, [I

    move-result-object v9

    move/from16 v20, v3

    const-string v3, "BOUNCE_LONG_MOTION"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x13

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 77
    move/from16 v21, v11

    filled-new-array {v3, v1}, [I

    move-result-object v11

    move/from16 v22, v3

    const-string v3, "WRIST_UP_MOTION"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x14

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 78
    move/from16 v23, v12

    filled-new-array {v3, v1}, [I

    move-result-object v12

    move/from16 v24, v3

    const-string v3, "FLAT_MOTION"

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x15

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 79
    filled-new-array {v3, v1}, [I

    move-result-object v4

    move/from16 v26, v3

    const-string v3, "MOVEMENT_ALERT"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x16

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 80
    move-object/from16 v27, v4

    filled-new-array {v3, v1}, [I

    move-result-object v4

    move/from16 v28, v3

    const-string v3, "DEVICE_POSITION"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x18

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-string v1, "ACTIVITY_LOCATION_LOGGING"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x19

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 82
    move-object/from16 v30, v3

    filled-new-array {v1, v4}, [I

    move-result-object v3

    move/from16 v31, v1

    const-string v1, "ACTIVITY_TRACKER"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x1a

    filled-new-array {v1, v4}, [I

    move-result-object v3

    move/from16 v32, v1

    const-string v1, "ACTIVITY_BATCH"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x1b

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-string v3, "ACTIVITY_NOTIFICATION"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x1c

    const/4 v3, 0x1

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v3, "SPECIFIC_POSE_ALERT"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x1e

    const/4 v4, 0x2

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-string v3, "ACTIVITY_NOTIFICATION_FOR_LOCATION"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x20

    const/4 v3, 0x1

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "CALL_MOTION"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x21

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "STEP_LEVEL_MONITOR"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x22

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "ACTIVE_TIME_MONITOR"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x23

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "SEDENTARY_TIMER"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x24

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "FLAT_MOTION_FOR_TABLE_MODE"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x27

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "AUTO_BRIGHTNESS"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x29

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v3, "ABNORMAL_PRESSURE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x2a

    const/4 v4, 0x2

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-string v3, "PHONE_STATUS_MONITOR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x2b

    const/4 v3, 0x1

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "HALL_SENSOR"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x2c

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "ENVIRONMENT_ADAPTIVE_DISPLAY"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x2e

    filled-new-array {v1, v3}, [I

    move-result-object v4

    const-string v3, "WIRELESS_CHARGING_DETECTION"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v3, 0x2f

    move/from16 v33, v1

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v1

    const-string v4, "LOCATION_CORE"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x30

    const/4 v4, 0x1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    move/from16 v34, v3

    const-string v3, "INTERRUPTED_GYRO"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x31

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-string v3, "FLIP_MOTION"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x32

    filled-new-array {v1, v4}, [I

    move-result-object v3

    move/from16 v35, v1

    const-string v1, "ANY_MOTION_DETECTOR"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x33

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-string v3, "CARRYING_DETECTION"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x34

    const/4 v4, 0x2

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-string v3, "SENSOR_STATUS_CHECK"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x35

    const/4 v3, 0x1

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v4, "ACTIVITY_CALIBRATION"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x36

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 105
    move-object/from16 v29, v4

    filled-new-array {v1, v3}, [I

    move-result-object v4

    const-string v1, "LOCATION_CHANGE_TRIGGER"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x37

    filled-new-array {v1, v3}, [I

    move-result-object v4

    move/from16 v37, v1

    const-string v1, "FREE_FALL_DETECTION"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const/16 v1, 0x38

    filled-new-array {v1, v3}, [I

    move-result-object v4

    move/from16 v38, v1

    const-string v1, "SLOCATION_AR_DISTANCE"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    const-string v1, "DEVICE_ACTIVITY_DETECTOR"

    const/16 v4, 0x36

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    move-object/from16 v3, v30

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x1c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x21

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x24

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x27

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x29

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x2b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x31

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x33

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x34

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    move-object/from16 v4, v29

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v13}, [Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v5}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v6}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v10}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v8}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v14}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v15}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v7}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v9}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v11}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v28 .. v28}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v12}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array/range {v27 .. v27}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v31 .. v31}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 185
    nop

    .line 186
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 187
    const/16 v5, 0x1b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 188
    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v2, v5, v6}, [Ljava/lang/Integer;

    move-result-object v2

    .line 184
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v33 .. v33}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v34 .. v34}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v35 .. v35}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v36, 0x36

    invoke-static/range {v36 .. v36}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v37 .. v37}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static/range {v38 .. v38}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "isSensorhubEnabled"    # Z

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextVersion;->initialize(IZ)V

    .line 233
    return-void
.end method

.method constructor <init>([I)V
    .locals 1
    .param p1, "serviceList"    # [I

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    .line 239
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextVersion;->initializeFromList([I)V

    .line 240
    return-void
.end method

.method private getFeatureMap(IZ)[[I
    .locals 54
    .param p1, "version"    # I
    .param p2, "isSensorhubEnabled"    # Z

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "featureMap":[[I
    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 424
    const/16 v4, 0x37

    const/16 v7, 0x38

    const/16 v9, 0x14

    const/16 v10, 0x2f

    const/16 v11, 0x1e

    const/16 v12, 0x1b

    const/16 v13, 0x1a

    const/16 v3, 0xf

    const/16 v5, 0x34

    const/16 v6, 0x19

    const/4 v8, 0x4

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1048
    move-object/from16 v26, v0

    .end local v0    # "featureMap":[[I
    .local v26, "featureMap":[[I
    goto/16 :goto_0

    .line 1040
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    :pswitch_0
    filled-new-array {v2, v8}, [I

    move-result-object v23

    filled-new-array {v15, v1}, [I

    move-result-object v24

    filled-new-array {v14, v1}, [I

    move-result-object v25

    filled-new-array {v5, v2}, [I

    move-result-object v26

    filled-new-array {v10, v2}, [I

    move-result-object v27

    filled-new-array {v6, v2}, [I

    move-result-object v28

    filled-new-array/range {v23 .. v28}, [[I

    move-result-object v1

    move-object v0, v1

    .line 1046
    goto/16 :goto_1

    .line 1028
    :pswitch_1
    filled-new-array {v2, v8}, [I

    move-result-object v4

    filled-new-array {v15, v1}, [I

    move-result-object v5

    filled-new-array {v14, v1}, [I

    move-result-object v7

    move-object v8, v4

    filled-new-array {v3, v1}, [I

    move-result-object v4

    move-object v3, v5

    filled-new-array {v9, v1}, [I

    move-result-object v5

    filled-new-array {v6, v2}, [I

    move-result-object v6

    move-object v1, v3

    move-object v3, v7

    filled-new-array {v13, v2}, [I

    move-result-object v7

    move-object v9, v1

    move-object v1, v8

    filled-new-array {v12, v2}, [I

    move-result-object v8

    move-object v10, v9

    filled-new-array {v11, v2}, [I

    move-result-object v9

    move-object v2, v10

    filled-new-array/range {v1 .. v9}, [[I

    move-result-object v1

    move-object v0, v1

    .line 1038
    goto/16 :goto_1

    .line 1021
    :pswitch_2
    filled-new-array {v2, v8}, [I

    move-result-object v3

    filled-new-array {v15, v1}, [I

    move-result-object v4

    filled-new-array {v14, v1}, [I

    move-result-object v1

    filled-new-array {v5, v2}, [I

    move-result-object v5

    filled-new-array {v6, v2}, [I

    move-result-object v2

    filled-new-array {v3, v4, v1, v5, v2}, [[I

    move-result-object v1

    move-object v0, v1

    .line 1026
    goto/16 :goto_1

    .line 1015
    :pswitch_3
    filled-new-array {v10, v2}, [I

    move-result-object v2

    filled-new-array {v7, v1}, [I

    move-result-object v3

    filled-new-array {v4, v1}, [I

    move-result-object v4

    const/4 v5, 0x3

    filled-new-array {v5, v1}, [I

    move-result-object v1

    filled-new-array {v2, v3, v4, v1}, [[I

    move-result-object v1

    move-object v0, v1

    .line 1019
    goto/16 :goto_1

    .line 1004
    :pswitch_4
    filled-new-array {v2, v8}, [I

    move-result-object v3

    filled-new-array {v15, v1}, [I

    move-result-object v4

    move-object v8, v3

    filled-new-array {v14, v1}, [I

    move-result-object v3

    const/16 v9, 0x33

    filled-new-array {v9, v1}, [I

    move-result-object v9

    filled-new-array {v5, v2}, [I

    move-result-object v5

    filled-new-array {v10, v2}, [I

    move-result-object v10

    filled-new-array {v7, v1}, [I

    move-result-object v7

    move-object v11, v8

    filled-new-array {v6, v2}, [I

    move-result-object v8

    const/16 v2, 0x16

    filled-new-array {v2, v1}, [I

    move-result-object v1

    move-object v2, v4

    move-object v4, v9

    move-object v6, v10

    move-object v9, v1

    move-object v1, v11

    filled-new-array/range {v1 .. v9}, [[I

    move-result-object v1

    move-object v0, v1

    .line 1013
    goto/16 :goto_1

    .line 990
    :pswitch_5
    filled-new-array {v2, v8}, [I

    move-result-object v8

    filled-new-array {v15, v1}, [I

    move-result-object v9

    filled-new-array {v14, v1}, [I

    move-result-object v11

    filled-new-array {v3, v1}, [I

    move-result-object v3

    const/16 v12, 0x33

    filled-new-array {v12, v1}, [I

    move-result-object v12

    filled-new-array {v5, v2}, [I

    move-result-object v5

    filled-new-array {v10, v2}, [I

    move-result-object v10

    move-object v13, v8

    filled-new-array {v7, v1}, [I

    move-result-object v8

    move-object v7, v9

    filled-new-array {v6, v2}, [I

    move-result-object v9

    const/16 v2, 0x16

    filled-new-array {v2, v1}, [I

    move-result-object v2

    move-object v6, v3

    move-object v3, v11

    filled-new-array {v4, v1}, [I

    move-result-object v11

    const/16 v4, 0x36

    filled-new-array {v4, v1}, [I

    move-result-object v1

    move-object v4, v10

    move-object v10, v2

    move-object v2, v7

    move-object v7, v4

    move-object v4, v6

    move-object v6, v5

    move-object v5, v12

    move-object v12, v1

    move-object v1, v13

    filled-new-array/range {v1 .. v12}, [[I

    move-result-object v1

    move-object v0, v1

    .line 1002
    goto/16 :goto_1

    .line 978
    :pswitch_6
    filled-new-array {v2, v8}, [I

    move-result-object v8

    filled-new-array {v15, v1}, [I

    move-result-object v9

    filled-new-array {v14, v1}, [I

    move-result-object v11

    filled-new-array {v3, v1}, [I

    move-result-object v3

    const/16 v12, 0x33

    filled-new-array {v12, v1}, [I

    move-result-object v12

    filled-new-array {v5, v2}, [I

    move-result-object v5

    filled-new-array {v10, v2}, [I

    move-result-object v10

    move-object v13, v8

    filled-new-array {v7, v1}, [I

    move-result-object v8

    move-object v7, v9

    filled-new-array {v6, v2}, [I

    move-result-object v9

    move-object v2, v7

    move-object v7, v10

    filled-new-array {v4, v1}, [I

    move-result-object v10

    move-object v4, v3

    move-object v6, v5

    move-object v3, v11

    move-object v5, v12

    move-object v1, v13

    filled-new-array/range {v1 .. v10}, [[I

    move-result-object v1

    move-object v0, v1

    .line 988
    goto/16 :goto_1

    .line 963
    :pswitch_7
    filled-new-array {v2, v8}, [I

    move-result-object v5

    filled-new-array {v15, v1}, [I

    move-result-object v8

    filled-new-array {v14, v1}, [I

    move-result-object v9

    const/16 v14, 0x16

    filled-new-array {v14, v1}, [I

    move-result-object v14

    move-object v15, v5

    filled-new-array {v3, v1}, [I

    move-result-object v5

    const/16 v3, 0x33

    filled-new-array {v3, v1}, [I

    move-result-object v3

    filled-new-array {v10, v2}, [I

    move-result-object v10

    move-object/from16 v16, v8

    filled-new-array {v7, v1}, [I

    move-result-object v8

    move-object v7, v3

    move-object v3, v9

    filled-new-array {v6, v2}, [I

    move-result-object v9

    move-object v6, v7

    move-object v7, v10

    filled-new-array {v13, v2}, [I

    move-result-object v10

    filled-new-array {v12, v2}, [I

    move-result-object v12

    move-object v13, v12

    filled-new-array {v11, v2}, [I

    move-result-object v12

    move-object v11, v13

    filled-new-array {v4, v1}, [I

    move-result-object v13

    move-object v4, v14

    move-object v1, v15

    move-object/from16 v2, v16

    filled-new-array/range {v1 .. v13}, [[I

    move-result-object v1

    move-object v0, v1

    .line 976
    goto/16 :goto_1

    .line 952
    :pswitch_8
    filled-new-array {v2, v8}, [I

    move-result-object v3

    filled-new-array {v15, v1}, [I

    move-result-object v8

    move-object v9, v3

    filled-new-array {v14, v1}, [I

    move-result-object v3

    const/16 v12, 0x33

    filled-new-array {v12, v1}, [I

    move-result-object v11

    filled-new-array {v5, v2}, [I

    move-result-object v5

    filled-new-array {v10, v2}, [I

    move-result-object v10

    filled-new-array {v7, v1}, [I

    move-result-object v7

    move-object v12, v8

    filled-new-array {v6, v2}, [I

    move-result-object v8

    move-object v2, v9

    filled-new-array {v4, v1}, [I

    move-result-object v9

    move-object v1, v2

    move-object v6, v10

    move-object v4, v11

    move-object v2, v12

    filled-new-array/range {v1 .. v9}, [[I

    move-result-object v1

    move-object v0, v1

    .line 961
    goto/16 :goto_1

    .line 927
    :pswitch_9
    filled-new-array {v2, v8}, [I

    move-result-object v8

    const/4 v4, 0x3

    filled-new-array {v4, v1}, [I

    move-result-object v4

    filled-new-array {v15, v1}, [I

    move-result-object v15

    move-object/from16 v22, v4

    filled-new-array {v14, v1}, [I

    move-result-object v4

    filled-new-array {v3, v1}, [I

    move-result-object v3

    filled-new-array {v9, v1}, [I

    move-result-object v9

    const/16 v14, 0x16

    filled-new-array {v14, v1}, [I

    move-result-object v14

    move-object/from16 v20, v8

    filled-new-array {v6, v2}, [I

    move-result-object v8

    move-object v6, v9

    filled-new-array {v13, v2}, [I

    move-result-object v9

    filled-new-array {v12, v2}, [I

    move-result-object v12

    filled-new-array {v11, v2}, [I

    move-result-object v11

    const/16 v13, 0x21

    filled-new-array {v13, v1}, [I

    move-result-object v13

    const/16 v5, 0x22

    filled-new-array {v5, v1}, [I

    move-result-object v5

    const/16 v7, 0x23

    filled-new-array {v7, v1}, [I

    move-result-object v7

    move-object/from16 v26, v0

    const/16 v0, 0x2e

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v0, v1}, [I

    move-result-object v0

    filled-new-array {v10, v2}, [I

    move-result-object v16

    const/16 v10, 0x38

    filled-new-array {v10, v1}, [I

    move-result-object v17

    const/16 v10, 0x32

    filled-new-array {v10, v1}, [I

    move-result-object v18

    const/16 v10, 0x33

    filled-new-array {v10, v1}, [I

    move-result-object v19

    const/16 v10, 0x34

    filled-new-array {v10, v2}, [I

    move-result-object v2

    const/16 v10, 0x35

    filled-new-array {v10, v1}, [I

    move-result-object v21

    const/16 v10, 0x36

    filled-new-array {v10, v1}, [I

    move-result-object v10

    move-object/from16 v24, v0

    const/16 v0, 0x37

    filled-new-array {v0, v1}, [I

    move-result-object v23

    move-object v1, v14

    move-object v14, v7

    move-object v7, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v10

    move-object v10, v12

    move-object v12, v13

    move-object v13, v5

    move-object v5, v3

    move-object v3, v15

    move-object/from16 v15, v24

    filled-new-array/range {v1 .. v23}, [[I

    move-result-object v0

    .line 950
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 922
    :pswitch_a
    move-object/from16 v26, v0

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v10, v2}, [I

    move-result-object v0

    const/16 v10, 0x38

    filled-new-array {v10, v1}, [I

    move-result-object v2

    const/4 v4, 0x3

    filled-new-array {v4, v1}, [I

    move-result-object v1

    filled-new-array {v0, v2, v1}, [[I

    move-result-object v0

    .line 925
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 911
    :pswitch_b
    move-object/from16 v26, v0

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v2, v8}, [I

    move-result-object v0

    filled-new-array {v15, v1}, [I

    move-result-object v3

    move-object v4, v3

    filled-new-array {v14, v1}, [I

    move-result-object v3

    const/16 v9, 0x33

    filled-new-array {v9, v1}, [I

    move-result-object v1

    filled-new-array {v6, v2}, [I

    move-result-object v5

    filled-new-array {v13, v2}, [I

    move-result-object v6

    filled-new-array {v12, v2}, [I

    move-result-object v7

    filled-new-array {v11, v2}, [I

    move-result-object v8

    move-object v2, v4

    move-object v4, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v8}, [[I

    move-result-object v0

    .line 920
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 886
    :pswitch_c
    move-object/from16 v26, v0

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v2, v8}, [I

    move-result-object v0

    filled-new-array {v15, v1}, [I

    move-result-object v4

    filled-new-array {v14, v1}, [I

    move-result-object v5

    move-object v7, v4

    filled-new-array {v3, v1}, [I

    move-result-object v4

    move-object v3, v5

    filled-new-array {v9, v1}, [I

    move-result-object v5

    const/16 v14, 0x16

    filled-new-array {v14, v1}, [I

    move-result-object v8

    move-object v9, v7

    filled-new-array {v6, v2}, [I

    move-result-object v7

    move-object v6, v8

    filled-new-array {v13, v2}, [I

    move-result-object v8

    move-object v13, v9

    filled-new-array {v12, v2}, [I

    move-result-object v9

    filled-new-array {v11, v2}, [I

    move-result-object v11

    const/16 v12, 0x21

    filled-new-array {v12, v1}, [I

    move-result-object v12

    const/16 v14, 0x22

    filled-new-array {v14, v1}, [I

    move-result-object v14

    const/16 v15, 0x23

    filled-new-array {v15, v1}, [I

    move-result-object v15

    move-object/from16 v17, v0

    const/16 v0, 0x2e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    move-object/from16 v16, v13

    move-object v13, v15

    filled-new-array {v10, v2}, [I

    move-result-object v15

    const/16 v10, 0x32

    filled-new-array {v10, v1}, [I

    move-result-object v10

    move-object/from16 v18, v0

    const/16 v0, 0x33

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x34

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x35

    move-object/from16 v19, v9

    const/4 v9, 0x1

    filled-new-array {v2, v9}, [I

    move-result-object v2

    move-object/from16 v20, v0

    const/16 v0, 0x36

    filled-new-array {v0, v9}, [I

    move-result-object v0

    move-object/from16 v21, v0

    const/16 v0, 0x37

    filled-new-array {v0, v9}, [I

    move-result-object v0

    move-object/from16 v22, v0

    const/16 v0, 0x38

    filled-new-array {v0, v9}, [I

    move-result-object v0

    move-object/from16 v9, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v0

    filled-new-array/range {v1 .. v22}, [[I

    move-result-object v0

    .line 909
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 876
    :pswitch_d
    move-object/from16 v26, v0

    move v9, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v2, v8}, [I

    move-result-object v1

    filled-new-array {v15, v9}, [I

    move-result-object v0

    filled-new-array {v14, v9}, [I

    move-result-object v3

    const/16 v12, 0x33

    filled-new-array {v12, v9}, [I

    move-result-object v4

    const/16 v5, 0x34

    filled-new-array {v5, v2}, [I

    move-result-object v5

    filled-new-array {v10, v2}, [I

    move-result-object v7

    const/16 v10, 0x38

    filled-new-array {v10, v9}, [I

    move-result-object v8

    move-object v9, v7

    move-object v7, v8

    filled-new-array {v6, v2}, [I

    move-result-object v8

    move-object v2, v0

    move-object v6, v9

    filled-new-array/range {v1 .. v8}, [[I

    move-result-object v0

    .line 884
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 863
    :pswitch_e
    move-object/from16 v26, v0

    move v9, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v2, v8}, [I

    move-result-object v1

    filled-new-array {v15, v9}, [I

    move-result-object v0

    filled-new-array {v14, v9}, [I

    move-result-object v3

    const/16 v4, 0x27

    filled-new-array {v4, v9}, [I

    move-result-object v4

    filled-new-array {v6, v2}, [I

    move-result-object v5

    filled-new-array {v13, v2}, [I

    move-result-object v6

    filled-new-array {v12, v2}, [I

    move-result-object v7

    filled-new-array {v11, v2}, [I

    move-result-object v8

    const/16 v13, 0x21

    filled-new-array {v13, v9}, [I

    move-result-object v10

    const/16 v12, 0x33

    filled-new-array {v12, v9}, [I

    move-result-object v9

    const/16 v11, 0x34

    filled-new-array {v11, v2}, [I

    move-result-object v11

    move-object v2, v10

    move-object v10, v9

    move-object v9, v2

    move-object v2, v0

    filled-new-array/range {v1 .. v11}, [[I

    move-result-object v0

    .line 874
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 837
    :pswitch_f
    move-object/from16 v26, v0

    move v0, v9

    move v9, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v9, v9}, [I

    move-result-object v27

    filled-new-array {v2, v8}, [I

    move-result-object v28

    const/4 v4, 0x3

    filled-new-array {v4, v9}, [I

    move-result-object v29

    filled-new-array {v15, v9}, [I

    move-result-object v30

    filled-new-array {v14, v9}, [I

    move-result-object v31

    filled-new-array {v3, v9}, [I

    move-result-object v32

    filled-new-array {v0, v9}, [I

    move-result-object v33

    const/16 v14, 0x16

    filled-new-array {v14, v9}, [I

    move-result-object v34

    filled-new-array {v6, v2}, [I

    move-result-object v35

    filled-new-array {v13, v2}, [I

    move-result-object v36

    filled-new-array {v12, v2}, [I

    move-result-object v37

    filled-new-array {v11, v2}, [I

    move-result-object v38

    const/16 v13, 0x21

    filled-new-array {v13, v9}, [I

    move-result-object v39

    const/16 v14, 0x22

    filled-new-array {v14, v9}, [I

    move-result-object v40

    const/16 v15, 0x23

    filled-new-array {v15, v9}, [I

    move-result-object v41

    const/16 v0, 0x2e

    filled-new-array {v0, v9}, [I

    move-result-object v42

    filled-new-array {v10, v2}, [I

    move-result-object v43

    const/16 v10, 0x38

    filled-new-array {v10, v9}, [I

    move-result-object v44

    const/16 v0, 0x32

    filled-new-array {v0, v9}, [I

    move-result-object v45

    const/16 v12, 0x33

    filled-new-array {v12, v9}, [I

    move-result-object v46

    const/16 v1, 0x34

    filled-new-array {v1, v2}, [I

    move-result-object v47

    const/16 v0, 0x35

    filled-new-array {v0, v9}, [I

    move-result-object v48

    const/16 v0, 0x36

    filled-new-array {v0, v9}, [I

    move-result-object v49

    const/16 v0, 0x37

    filled-new-array {v0, v9}, [I

    move-result-object v50

    filled-new-array/range {v27 .. v50}, [[I

    move-result-object v0

    .line 861
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 810
    :pswitch_10
    move-object/from16 v26, v0

    move v0, v9

    move v9, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v9, v9}, [I

    move-result-object v1

    filled-new-array {v2, v8}, [I

    move-result-object v4

    filled-new-array {v15, v9}, [I

    move-result-object v5

    move-object v7, v4

    filled-new-array {v14, v9}, [I

    move-result-object v4

    move-object v8, v5

    filled-new-array {v3, v9}, [I

    move-result-object v5

    filled-new-array {v0, v9}, [I

    move-result-object v0

    const/16 v14, 0x16

    filled-new-array {v14, v9}, [I

    move-result-object v3

    move-object v14, v7

    move-object v7, v3

    move-object v3, v8

    filled-new-array {v6, v2}, [I

    move-result-object v8

    filled-new-array {v13, v2}, [I

    move-result-object v6

    filled-new-array {v12, v2}, [I

    move-result-object v12

    filled-new-array {v11, v2}, [I

    move-result-object v11

    const/16 v13, 0x21

    filled-new-array {v13, v9}, [I

    move-result-object v13

    const/16 v15, 0x22

    filled-new-array {v15, v9}, [I

    move-result-object v15

    const/16 v2, 0x23

    filled-new-array {v2, v9}, [I

    move-result-object v2

    const/16 v10, 0x27

    filled-new-array {v10, v9}, [I

    move-result-object v10

    move-object/from16 v17, v0

    const/16 v0, 0x2e

    filled-new-array {v0, v9}, [I

    move-result-object v16

    move-object/from16 v18, v3

    const/16 v0, 0x2f

    const/4 v3, 0x2

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const/16 v3, 0x38

    filled-new-array {v3, v9}, [I

    move-result-object v3

    move-object/from16 v19, v0

    const/16 v0, 0x32

    filled-new-array {v0, v9}, [I

    move-result-object v0

    move-object/from16 v20, v0

    const/16 v0, 0x33

    filled-new-array {v0, v9}, [I

    move-result-object v0

    move-object/from16 v21, v0

    const/4 v0, 0x2

    const/16 v9, 0x34

    filled-new-array {v9, v0}, [I

    move-result-object v0

    const/16 v9, 0x35

    move-object/from16 v22, v11

    const/4 v11, 0x1

    filled-new-array {v9, v11}, [I

    move-result-object v9

    move-object/from16 v24, v0

    const/16 v0, 0x36

    filled-new-array {v0, v11}, [I

    move-result-object v0

    move-object/from16 v25, v0

    const/16 v0, 0x37

    filled-new-array {v0, v11}, [I

    move-result-object v0

    move-object v11, v14

    move-object v14, v2

    move-object v2, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v3

    move-object v3, v11

    move-object v11, v15

    move-object v15, v10

    move-object v10, v12

    move-object v12, v13

    move-object v13, v11

    move-object/from16 v11, v22

    move-object/from16 v23, v25

    move-object/from16 v22, v9

    move-object v9, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v24

    move-object/from16 v24, v0

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    .line 835
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 798
    :pswitch_11
    move/from16 v26, v11

    move v11, v1

    move/from16 v1, v26

    move-object/from16 v26, v0

    move v0, v2

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v0, v8}, [I

    move-result-object v27

    filled-new-array {v15, v11}, [I

    move-result-object v28

    filled-new-array {v14, v11}, [I

    move-result-object v29

    filled-new-array {v6, v0}, [I

    move-result-object v30

    filled-new-array {v13, v0}, [I

    move-result-object v31

    filled-new-array {v12, v0}, [I

    move-result-object v32

    filled-new-array {v1, v0}, [I

    move-result-object v33

    const/16 v13, 0x21

    filled-new-array {v13, v11}, [I

    move-result-object v34

    const/16 v12, 0x33

    filled-new-array {v12, v11}, [I

    move-result-object v35

    const/16 v1, 0x34

    filled-new-array {v1, v0}, [I

    move-result-object v36

    filled-new-array/range {v27 .. v36}, [[I

    move-result-object v0

    .line 808
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 771
    :pswitch_12
    move/from16 v26, v11

    move v11, v1

    move/from16 v1, v26

    move-object/from16 v26, v0

    move v0, v2

    move v2, v9

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v11, v11}, [I

    move-result-object v29

    filled-new-array {v0, v8}, [I

    move-result-object v30

    const/4 v4, 0x3

    filled-new-array {v4, v11}, [I

    move-result-object v31

    filled-new-array {v15, v11}, [I

    move-result-object v32

    filled-new-array {v14, v11}, [I

    move-result-object v33

    filled-new-array {v3, v11}, [I

    move-result-object v34

    filled-new-array {v2, v11}, [I

    move-result-object v35

    const/16 v14, 0x16

    filled-new-array {v14, v11}, [I

    move-result-object v36

    filled-new-array {v6, v0}, [I

    move-result-object v37

    filled-new-array {v13, v0}, [I

    move-result-object v38

    filled-new-array {v12, v0}, [I

    move-result-object v39

    filled-new-array {v1, v0}, [I

    move-result-object v40

    const/16 v13, 0x21

    filled-new-array {v13, v11}, [I

    move-result-object v41

    const/16 v14, 0x22

    filled-new-array {v14, v11}, [I

    move-result-object v42

    const/16 v15, 0x23

    filled-new-array {v15, v11}, [I

    move-result-object v43

    const/16 v1, 0x27

    filled-new-array {v1, v11}, [I

    move-result-object v44

    const/16 v1, 0x2e

    filled-new-array {v1, v11}, [I

    move-result-object v45

    const/16 v1, 0x2f

    filled-new-array {v1, v0}, [I

    move-result-object v46

    const/16 v10, 0x38

    filled-new-array {v10, v11}, [I

    move-result-object v47

    const/16 v1, 0x32

    filled-new-array {v1, v11}, [I

    move-result-object v48

    const/16 v12, 0x33

    filled-new-array {v12, v11}, [I

    move-result-object v49

    const/16 v1, 0x34

    filled-new-array {v1, v0}, [I

    move-result-object v50

    const/16 v0, 0x35

    filled-new-array {v0, v11}, [I

    move-result-object v51

    const/16 v0, 0x36

    filled-new-array {v0, v11}, [I

    move-result-object v52

    const/16 v0, 0x37

    filled-new-array {v0, v11}, [I

    move-result-object v53

    filled-new-array/range {v29 .. v53}, [[I

    move-result-object v0

    .line 796
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 765
    :pswitch_13
    move-object/from16 v26, v0

    move v11, v1

    move v0, v2

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v0, v8}, [I

    move-result-object v0

    filled-new-array {v15, v11}, [I

    move-result-object v1

    filled-new-array {v14, v11}, [I

    move-result-object v2

    const/16 v5, 0x34

    filled-new-array {v5, v11}, [I

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    .line 769
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 762
    :pswitch_14
    move-object/from16 v26, v0

    move v11, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v15, v11}, [I

    move-result-object v0

    filled-new-array {v0}, [[I

    move-result-object v0

    .line 763
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 736
    :pswitch_15
    move v2, v11

    move v11, v1

    move v1, v2

    move-object/from16 v26, v0

    move v2, v9

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v11, v11}, [I

    move-result-object v0

    const/4 v4, 0x2

    filled-new-array {v4, v8}, [I

    move-result-object v5

    const/4 v7, 0x3

    filled-new-array {v7, v11}, [I

    move-result-object v7

    filled-new-array {v15, v11}, [I

    move-result-object v8

    move-object v9, v5

    filled-new-array {v14, v11}, [I

    move-result-object v5

    filled-new-array {v3, v11}, [I

    move-result-object v3

    move-object v10, v3

    move-object v3, v7

    filled-new-array {v2, v11}, [I

    move-result-object v7

    const/16 v14, 0x16

    filled-new-array {v14, v11}, [I

    move-result-object v2

    move-object v14, v8

    move-object v8, v2

    move-object v2, v9

    filled-new-array {v6, v4}, [I

    move-result-object v9

    move-object v6, v10

    filled-new-array {v13, v4}, [I

    move-result-object v10

    filled-new-array {v12, v4}, [I

    move-result-object v12

    move-object v13, v12

    filled-new-array {v1, v4}, [I

    move-result-object v12

    const/16 v1, 0x21

    filled-new-array {v1, v11}, [I

    move-result-object v1

    const/16 v15, 0x22

    filled-new-array {v15, v11}, [I

    move-result-object v15

    const/16 v4, 0x23

    filled-new-array {v4, v11}, [I

    move-result-object v4

    move-object/from16 v17, v0

    const/16 v0, 0x27

    filled-new-array {v0, v11}, [I

    move-result-object v0

    move-object/from16 v18, v0

    const/16 v0, 0x2e

    filled-new-array {v0, v11}, [I

    move-result-object v0

    move-object/from16 v16, v0

    move-object/from16 v19, v1

    const/16 v0, 0x2f

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x38

    filled-new-array {v1, v11}, [I

    move-result-object v1

    move-object/from16 v20, v0

    const/16 v0, 0x32

    filled-new-array {v0, v11}, [I

    move-result-object v0

    move-object/from16 v22, v0

    const/16 v0, 0x33

    filled-new-array {v0, v11}, [I

    move-result-object v21

    move-object/from16 v24, v12

    const/16 v0, 0x34

    const/4 v12, 0x2

    filled-new-array {v0, v12}, [I

    move-result-object v0

    const/16 v12, 0x35

    filled-new-array {v12, v11}, [I

    move-result-object v12

    move-object/from16 v25, v0

    const/16 v0, 0x37

    filled-new-array {v0, v11}, [I

    move-result-object v0

    move-object v11, v15

    move-object v15, v4

    move-object v4, v14

    move-object v14, v11

    move-object/from16 v23, v12

    move-object v11, v13

    move-object/from16 v13, v19

    move-object/from16 v12, v24

    move-object/from16 v24, v0

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v25

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    .line 760
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 728
    :pswitch_16
    move-object/from16 v26, v0

    move v11, v1

    move v12, v2

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v12, v8}, [I

    move-result-object v1

    filled-new-array {v15, v11}, [I

    move-result-object v2

    filled-new-array {v14, v11}, [I

    move-result-object v3

    filled-new-array {v6, v12}, [I

    move-result-object v4

    const/16 v13, 0x21

    filled-new-array {v13, v11}, [I

    move-result-object v5

    const/16 v0, 0x33

    filled-new-array {v0, v11}, [I

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [[I

    move-result-object v0

    .line 734
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 723
    :pswitch_17
    move-object/from16 v26, v0

    move v11, v1

    move v12, v2

    const/16 v0, 0x33

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v12, v8}, [I

    move-result-object v1

    filled-new-array {v14, v11}, [I

    move-result-object v2

    filled-new-array {v0, v11}, [I

    move-result-object v0

    filled-new-array {v1, v2, v0}, [[I

    move-result-object v0

    .line 726
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 715
    :pswitch_18
    move-object/from16 v26, v0

    move v11, v1

    move v12, v2

    const/16 v0, 0x33

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v12, v8}, [I

    move-result-object v1

    filled-new-array {v15, v11}, [I

    move-result-object v2

    filled-new-array {v14, v11}, [I

    move-result-object v3

    const/16 v4, 0x27

    filled-new-array {v4, v11}, [I

    move-result-object v4

    filled-new-array {v0, v11}, [I

    move-result-object v5

    const/16 v9, 0x34

    filled-new-array {v9, v12}, [I

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [[I

    move-result-object v0

    .line 721
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 709
    :pswitch_19
    move-object/from16 v26, v0

    move v11, v1

    move v12, v2

    move v9, v5

    const/16 v0, 0x33

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v12, v8}, [I

    move-result-object v1

    filled-new-array {v15, v11}, [I

    move-result-object v2

    filled-new-array {v0, v11}, [I

    move-result-object v0

    filled-new-array {v9, v12}, [I

    move-result-object v3

    filled-new-array {v1, v2, v0, v3}, [[I

    move-result-object v0

    .line 713
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 683
    :pswitch_1a
    move/from16 v26, v11

    move v11, v1

    move/from16 v1, v26

    move-object/from16 v26, v0

    move v0, v12

    move v12, v2

    move v2, v9

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v11, v11}, [I

    move-result-object v29

    filled-new-array {v12, v8}, [I

    move-result-object v30

    filled-new-array {v15, v11}, [I

    move-result-object v31

    filled-new-array {v14, v11}, [I

    move-result-object v32

    filled-new-array {v3, v11}, [I

    move-result-object v33

    filled-new-array {v2, v11}, [I

    move-result-object v34

    const/16 v14, 0x16

    filled-new-array {v14, v11}, [I

    move-result-object v35

    filled-new-array {v6, v12}, [I

    move-result-object v36

    filled-new-array {v13, v12}, [I

    move-result-object v37

    filled-new-array {v0, v12}, [I

    move-result-object v38

    filled-new-array {v1, v12}, [I

    move-result-object v39

    const/16 v13, 0x21

    filled-new-array {v13, v11}, [I

    move-result-object v40

    const/16 v14, 0x22

    filled-new-array {v14, v11}, [I

    move-result-object v41

    const/16 v15, 0x23

    filled-new-array {v15, v11}, [I

    move-result-object v42

    const/16 v0, 0x2e

    filled-new-array {v0, v11}, [I

    move-result-object v43

    const/16 v0, 0x2f

    filled-new-array {v0, v12}, [I

    move-result-object v44

    const/16 v10, 0x38

    filled-new-array {v10, v11}, [I

    move-result-object v45

    const/16 v0, 0x32

    filled-new-array {v0, v11}, [I

    move-result-object v46

    const/16 v0, 0x33

    filled-new-array {v0, v11}, [I

    move-result-object v47

    const/16 v1, 0x34

    filled-new-array {v1, v12}, [I

    move-result-object v48

    const/16 v0, 0x35

    filled-new-array {v0, v11}, [I

    move-result-object v49

    const/16 v0, 0x36

    filled-new-array {v0, v11}, [I

    move-result-object v50

    const/16 v0, 0x37

    filled-new-array {v0, v11}, [I

    move-result-object v51

    filled-new-array/range {v29 .. v51}, [[I

    move-result-object v0

    .line 707
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 657
    :pswitch_1b
    move v2, v11

    move v11, v1

    move v1, v2

    move-object/from16 v26, v0

    move v2, v9

    move v0, v12

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v11, v11}, [I

    move-result-object v4

    const/4 v12, 0x2

    filled-new-array {v12, v8}, [I

    move-result-object v5

    filled-new-array {v15, v11}, [I

    move-result-object v7

    move-object v8, v4

    filled-new-array {v14, v11}, [I

    move-result-object v4

    move-object v9, v5

    filled-new-array {v3, v11}, [I

    move-result-object v5

    filled-new-array {v2, v11}, [I

    move-result-object v2

    const/16 v14, 0x16

    filled-new-array {v14, v11}, [I

    move-result-object v3

    const/16 v10, 0x18

    filled-new-array {v10, v12}, [I

    move-result-object v10

    move-object v14, v2

    move-object v2, v9

    filled-new-array {v6, v12}, [I

    move-result-object v9

    move-object v6, v8

    move-object v8, v10

    filled-new-array {v13, v12}, [I

    move-result-object v10

    filled-new-array {v0, v12}, [I

    move-result-object v0

    const/16 v13, 0x1c

    filled-new-array {v13, v11}, [I

    move-result-object v13

    move-object v15, v13

    filled-new-array {v1, v12}, [I

    move-result-object v13

    const/16 v1, 0x21

    filled-new-array {v1, v11}, [I

    move-result-object v1

    const/16 v12, 0x22

    filled-new-array {v12, v11}, [I

    move-result-object v12

    move-object/from16 v18, v0

    const/16 v0, 0x23

    filled-new-array {v0, v11}, [I

    move-result-object v0

    move-object/from16 v17, v0

    const/16 v0, 0x24

    filled-new-array {v0, v11}, [I

    move-result-object v0

    const/16 v11, 0x2a

    move-object/from16 v19, v1

    const/4 v1, 0x2

    filled-new-array {v11, v1}, [I

    move-result-object v11

    const/16 v1, 0x2c

    move-object/from16 v20, v0

    const/4 v0, 0x1

    filled-new-array {v1, v0}, [I

    move-result-object v1

    move-object/from16 v22, v1

    const/16 v1, 0x2e

    filled-new-array {v1, v0}, [I

    move-result-object v1

    move-object/from16 v16, v1

    const/16 v1, 0x2f

    filled-new-array {v1, v0}, [I

    move-result-object v1

    move-object/from16 v23, v1

    const/16 v1, 0x32

    filled-new-array {v1, v0}, [I

    move-result-object v1

    move-object/from16 v25, v1

    const/16 v1, 0x33

    filled-new-array {v1, v0}, [I

    move-result-object v0

    move-object/from16 v21, v13

    const/16 v1, 0x34

    const/4 v13, 0x2

    filled-new-array {v1, v13}, [I

    move-result-object v24

    move-object v1, v7

    move-object v7, v3

    move-object v3, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v11

    move-object v11, v1

    move-object v1, v15

    move-object v15, v12

    move-object v12, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    move-object v1, v6

    move-object v6, v14

    move-object/from16 v14, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v25

    move-object/from16 v23, v0

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    .line 681
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 630
    :pswitch_1c
    move-object/from16 v26, v0

    move v0, v1

    move v1, v11

    move v4, v12

    move v5, v13

    move v13, v2

    move v2, v9

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v0, v0}, [I

    move-result-object v29

    filled-new-array {v13, v8}, [I

    move-result-object v30

    const/4 v7, 0x3

    filled-new-array {v7, v0}, [I

    move-result-object v31

    filled-new-array {v15, v0}, [I

    move-result-object v32

    filled-new-array {v14, v0}, [I

    move-result-object v33

    const/16 v7, 0xb

    filled-new-array {v7, v0}, [I

    move-result-object v34

    filled-new-array {v3, v0}, [I

    move-result-object v35

    filled-new-array {v2, v0}, [I

    move-result-object v36

    const/16 v14, 0x16

    filled-new-array {v14, v0}, [I

    move-result-object v37

    const/16 v2, 0x18

    filled-new-array {v2, v13}, [I

    move-result-object v38

    filled-new-array {v6, v13}, [I

    move-result-object v39

    filled-new-array {v5, v13}, [I

    move-result-object v40

    filled-new-array {v4, v13}, [I

    move-result-object v41

    const/16 v2, 0x1c

    filled-new-array {v2, v0}, [I

    move-result-object v42

    filled-new-array {v1, v13}, [I

    move-result-object v43

    const/16 v1, 0x21

    filled-new-array {v1, v0}, [I

    move-result-object v44

    const/16 v14, 0x22

    filled-new-array {v14, v0}, [I

    move-result-object v45

    const/16 v15, 0x23

    filled-new-array {v15, v0}, [I

    move-result-object v46

    const/16 v1, 0x24

    filled-new-array {v1, v0}, [I

    move-result-object v47

    const/16 v1, 0x2a

    filled-new-array {v1, v13}, [I

    move-result-object v48

    const/16 v1, 0x2c

    filled-new-array {v1, v0}, [I

    move-result-object v49

    const/16 v1, 0x2e

    filled-new-array {v1, v0}, [I

    move-result-object v50

    const/16 v1, 0x2f

    filled-new-array {v1, v0}, [I

    move-result-object v51

    const/16 v1, 0x32

    filled-new-array {v1, v0}, [I

    move-result-object v52

    const/16 v1, 0x34

    filled-new-array {v1, v13}, [I

    move-result-object v53

    filled-new-array/range {v29 .. v53}, [[I

    move-result-object v0

    .line 655
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 604
    :pswitch_1d
    move-object/from16 v26, v0

    move v0, v1

    move v1, v11

    move v4, v12

    move v5, v13

    move v13, v2

    move v2, v9

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v0, v0}, [I

    move-result-object v7

    filled-new-array {v13, v8}, [I

    move-result-object v8

    filled-new-array {v15, v0}, [I

    move-result-object v9

    filled-new-array {v14, v0}, [I

    move-result-object v10

    const/16 v11, 0xb

    filled-new-array {v11, v0}, [I

    move-result-object v11

    filled-new-array {v3, v0}, [I

    move-result-object v3

    move-object v12, v7

    filled-new-array {v2, v0}, [I

    move-result-object v7

    const/16 v14, 0x16

    filled-new-array {v14, v0}, [I

    move-result-object v2

    const/16 v14, 0x18

    filled-new-array {v14, v13}, [I

    move-result-object v14

    move-object v15, v10

    filled-new-array {v6, v13}, [I

    move-result-object v10

    move-object v6, v11

    filled-new-array {v5, v13}, [I

    move-result-object v11

    move-object v5, v12

    filled-new-array {v4, v13}, [I

    move-result-object v12

    const/16 v4, 0x1c

    filled-new-array {v4, v0}, [I

    move-result-object v4

    move-object/from16 v20, v5

    move-object v5, v6

    move-object v6, v3

    move-object v3, v9

    move-object v9, v14

    filled-new-array {v1, v13}, [I

    move-result-object v14

    const/16 v1, 0x21

    filled-new-array {v1, v0}, [I

    move-result-object v1

    const/16 v13, 0x22

    filled-new-array {v13, v0}, [I

    move-result-object v13

    move-object/from16 v18, v1

    const/16 v1, 0x23

    filled-new-array {v1, v0}, [I

    move-result-object v17

    const/16 v1, 0x24

    filled-new-array {v1, v0}, [I

    move-result-object v1

    const/16 v0, 0x2a

    move-object/from16 v19, v1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x2c

    move-object/from16 v21, v4

    const/4 v4, 0x1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    move-object/from16 v22, v0

    const/16 v0, 0x2e

    filled-new-array {v0, v4}, [I

    move-result-object v0

    move-object/from16 v16, v0

    const/16 v0, 0x2f

    filled-new-array {v0, v4}, [I

    move-result-object v0

    move-object/from16 v23, v0

    const/16 v0, 0x32

    filled-new-array {v0, v4}, [I

    move-result-object v0

    move-object/from16 v24, v5

    const/16 v4, 0x34

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    move-object/from16 v5, v20

    move-object/from16 v20, v1

    move-object v1, v5

    move-object v5, v8

    move-object v8, v2

    move-object v2, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v13

    move-object/from16 v13, v21

    move-object/from16 v21, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v4

    move-object v4, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v0

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    .line 628
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 579
    :pswitch_1e
    move-object/from16 v26, v0

    move v4, v1

    move v5, v2

    move v2, v9

    move v1, v11

    move v0, v12

    move v7, v13

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v4, v4}, [I

    move-result-object v29

    filled-new-array {v5, v8}, [I

    move-result-object v30

    filled-new-array {v15, v4}, [I

    move-result-object v31

    filled-new-array {v14, v4}, [I

    move-result-object v32

    filled-new-array {v3, v4}, [I

    move-result-object v33

    filled-new-array {v2, v4}, [I

    move-result-object v34

    const/16 v14, 0x16

    filled-new-array {v14, v4}, [I

    move-result-object v35

    filled-new-array {v6, v5}, [I

    move-result-object v36

    filled-new-array {v7, v5}, [I

    move-result-object v37

    filled-new-array {v0, v5}, [I

    move-result-object v38

    filled-new-array {v1, v5}, [I

    move-result-object v39

    const/16 v13, 0x21

    filled-new-array {v13, v4}, [I

    move-result-object v40

    const/16 v14, 0x22

    filled-new-array {v14, v4}, [I

    move-result-object v41

    const/16 v15, 0x23

    filled-new-array {v15, v4}, [I

    move-result-object v42

    const/16 v0, 0x2b

    filled-new-array {v0, v4}, [I

    move-result-object v43

    const/16 v0, 0x2e

    filled-new-array {v0, v4}, [I

    move-result-object v44

    const/16 v0, 0x2f

    filled-new-array {v0, v5}, [I

    move-result-object v45

    const/16 v0, 0x32

    filled-new-array {v0, v4}, [I

    move-result-object v46

    const/16 v12, 0x33

    filled-new-array {v12, v4}, [I

    move-result-object v47

    const/16 v1, 0x34

    filled-new-array {v1, v5}, [I

    move-result-object v48

    const/16 v0, 0x35

    filled-new-array {v0, v4}, [I

    move-result-object v49

    const/16 v0, 0x36

    filled-new-array {v0, v4}, [I

    move-result-object v50

    const/16 v0, 0x37

    filled-new-array {v0, v4}, [I

    move-result-object v51

    filled-new-array/range {v29 .. v51}, [[I

    move-result-object v0

    .line 602
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 553
    :pswitch_1f
    move-object/from16 v26, v0

    move v4, v1

    move v5, v2

    move v2, v9

    move v1, v11

    move v0, v12

    move v7, v13

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v4, v5}, [I

    move-result-object v9

    filled-new-array {v5, v8}, [I

    move-result-object v8

    filled-new-array {v15, v4}, [I

    move-result-object v10

    filled-new-array {v14, v4}, [I

    move-result-object v11

    const/16 v12, 0xb

    filled-new-array {v12, v4}, [I

    move-result-object v12

    filled-new-array {v3, v4}, [I

    move-result-object v3

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const/16 v14, 0x16

    filled-new-array {v14, v4}, [I

    move-result-object v13

    const/16 v14, 0x18

    filled-new-array {v14, v5}, [I

    move-result-object v14

    move-object v15, v3

    move-object v3, v10

    filled-new-array {v6, v5}, [I

    move-result-object v10

    move-object v6, v11

    filled-new-array {v7, v5}, [I

    move-result-object v11

    move-object v7, v12

    filled-new-array {v0, v5}, [I

    move-result-object v12

    const/16 v0, 0x1c

    filled-new-array {v0, v4}, [I

    move-result-object v0

    move-object/from16 v20, v9

    move-object v9, v14

    filled-new-array {v1, v5}, [I

    move-result-object v14

    const/16 v1, 0x21

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v5, 0x22

    filled-new-array {v5, v4}, [I

    move-result-object v5

    move-object/from16 v18, v0

    const/16 v0, 0x23

    filled-new-array {v0, v4}, [I

    move-result-object v17

    const/16 v0, 0x24

    filled-new-array {v0, v4}, [I

    move-result-object v0

    move-object/from16 v19, v0

    const/16 v0, 0x29

    filled-new-array {v0, v4}, [I

    move-result-object v0

    const/16 v4, 0x2a

    move-object/from16 v21, v1

    const/4 v1, 0x2

    filled-new-array {v4, v1}, [I

    move-result-object v4

    const/16 v1, 0x2c

    move-object/from16 v22, v8

    const/4 v8, 0x1

    filled-new-array {v1, v8}, [I

    move-result-object v1

    move-object/from16 v23, v0

    const/16 v0, 0x2e

    filled-new-array {v0, v8}, [I

    move-result-object v0

    move-object/from16 v16, v0

    const/16 v0, 0x32

    filled-new-array {v0, v8}, [I

    move-result-object v0

    move-object/from16 v24, v0

    const/4 v0, 0x2

    const/16 v8, 0x34

    filled-new-array {v8, v0}, [I

    move-result-object v0

    move-object/from16 v8, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v4

    move-object v4, v6

    move-object v6, v15

    move-object v15, v8

    move-object v8, v7

    move-object v7, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v16

    move-object/from16 v16, v5

    move-object v5, v8

    move-object v8, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v0

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    .line 577
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 535
    :pswitch_20
    move-object/from16 v26, v0

    move v8, v1

    move v0, v2

    move v2, v9

    move v1, v11

    move v4, v12

    move v7, v13

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v8, v8}, [I

    move-result-object v27

    const/4 v5, 0x3

    filled-new-array {v0, v5}, [I

    move-result-object v28

    filled-new-array {v15, v8}, [I

    move-result-object v29

    filled-new-array {v14, v8}, [I

    move-result-object v30

    const/16 v0, 0xb

    filled-new-array {v0, v8}, [I

    move-result-object v31

    const/16 v0, 0xc

    filled-new-array {v0, v8}, [I

    move-result-object v32

    filled-new-array {v3, v8}, [I

    move-result-object v33

    filled-new-array {v2, v8}, [I

    move-result-object v34

    const/16 v14, 0x16

    filled-new-array {v14, v8}, [I

    move-result-object v35

    const/16 v0, 0x18

    filled-new-array {v0, v8}, [I

    move-result-object v36

    filled-new-array {v6, v8}, [I

    move-result-object v37

    filled-new-array {v7, v8}, [I

    move-result-object v38

    filled-new-array {v4, v8}, [I

    move-result-object v39

    const/16 v0, 0x1c

    filled-new-array {v0, v8}, [I

    move-result-object v40

    filled-new-array {v1, v8}, [I

    move-result-object v41

    const/16 v0, 0x20

    filled-new-array {v0, v8}, [I

    move-result-object v42

    filled-new-array/range {v27 .. v42}, [[I

    move-result-object v0

    .line 551
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 512
    :pswitch_21
    move-object/from16 v26, v0

    move v0, v8

    move v2, v9

    move v4, v12

    move v7, v13

    move v8, v1

    move v1, v11

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v8, v8}, [I

    move-result-object v28

    const/4 v12, 0x2

    filled-new-array {v12, v0}, [I

    move-result-object v29

    const/4 v5, 0x3

    filled-new-array {v5, v8}, [I

    move-result-object v30

    filled-new-array {v15, v8}, [I

    move-result-object v31

    filled-new-array {v14, v8}, [I

    move-result-object v32

    const/4 v0, 0x7

    filled-new-array {v0, v5}, [I

    move-result-object v33

    const/16 v0, 0xb

    filled-new-array {v0, v8}, [I

    move-result-object v34

    const/16 v0, 0xc

    filled-new-array {v0, v8}, [I

    move-result-object v35

    filled-new-array {v3, v8}, [I

    move-result-object v36

    filled-new-array {v2, v8}, [I

    move-result-object v37

    const/16 v14, 0x16

    filled-new-array {v14, v8}, [I

    move-result-object v38

    const/16 v0, 0x18

    filled-new-array {v0, v8}, [I

    move-result-object v39

    filled-new-array {v6, v8}, [I

    move-result-object v40

    filled-new-array {v7, v8}, [I

    move-result-object v41

    filled-new-array {v4, v8}, [I

    move-result-object v42

    filled-new-array {v1, v8}, [I

    move-result-object v43

    const/16 v0, 0x20

    filled-new-array {v0, v8}, [I

    move-result-object v44

    const/16 v13, 0x21

    filled-new-array {v13, v8}, [I

    move-result-object v45

    const/16 v14, 0x22

    filled-new-array {v14, v8}, [I

    move-result-object v46

    const/16 v15, 0x23

    filled-new-array {v15, v8}, [I

    move-result-object v47

    const/16 v0, 0x24

    filled-new-array {v0, v8}, [I

    move-result-object v48

    filled-new-array/range {v28 .. v48}, [[I

    move-result-object v0

    .line 533
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 493
    :pswitch_22
    move-object/from16 v26, v0

    move v8, v1

    move v2, v9

    move v1, v11

    move v4, v12

    move v7, v13

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v8, v8}, [I

    move-result-object v0

    const/4 v5, 0x3

    const/4 v12, 0x2

    filled-new-array {v12, v5}, [I

    move-result-object v9

    filled-new-array {v15, v8}, [I

    move-result-object v10

    filled-new-array {v14, v8}, [I

    move-result-object v11

    const/4 v12, 0x7

    filled-new-array {v12, v5}, [I

    move-result-object v5

    const/16 v12, 0xb

    filled-new-array {v12, v8}, [I

    move-result-object v12

    const/16 v13, 0xc

    filled-new-array {v13, v8}, [I

    move-result-object v13

    filled-new-array {v3, v8}, [I

    move-result-object v3

    move-object v14, v9

    filled-new-array {v2, v8}, [I

    move-result-object v9

    const/16 v2, 0x16

    filled-new-array {v2, v8}, [I

    move-result-object v2

    const/16 v15, 0x18

    filled-new-array {v15, v8}, [I

    move-result-object v15

    filled-new-array {v6, v8}, [I

    move-result-object v6

    filled-new-array {v7, v8}, [I

    move-result-object v7

    filled-new-array {v4, v8}, [I

    move-result-object v4

    move-object/from16 v16, v0

    const/16 v0, 0x1c

    filled-new-array {v0, v8}, [I

    move-result-object v0

    filled-new-array {v1, v8}, [I

    move-result-object v1

    move-object/from16 v17, v0

    const/16 v0, 0x20

    filled-new-array {v0, v8}, [I

    move-result-object v0

    move-object/from16 v8, v16

    move-object/from16 v16, v1

    move-object v1, v8

    move-object v8, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v13

    move-object v13, v7

    move-object v7, v8

    move-object v8, v3

    move-object v3, v10

    move-object v10, v2

    move-object v2, v14

    move-object v14, v4

    move-object v4, v11

    move-object v11, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v0

    filled-new-array/range {v1 .. v17}, [[I

    move-result-object v0

    .line 510
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 485
    :pswitch_23
    move-object/from16 v26, v0

    move v8, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    const/4 v1, 0x2

    filled-new-array {v1, v1}, [I

    move-result-object v2

    filled-new-array {v15, v1}, [I

    move-result-object v3

    filled-new-array {v14, v8}, [I

    move-result-object v4

    const/16 v0, 0xc

    filled-new-array {v0, v8}, [I

    move-result-object v5

    const/16 v0, 0x13

    filled-new-array {v0, v8}, [I

    move-result-object v6

    const/16 v0, 0x15

    filled-new-array {v0, v8}, [I

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [[I

    move-result-object v0

    .line 491
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 470
    :pswitch_24
    move-object/from16 v26, v0

    move v8, v1

    move v2, v9

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v8, v8}, [I

    move-result-object v1

    const/4 v12, 0x2

    filled-new-array {v12, v12}, [I

    move-result-object v0

    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v4

    move-object v5, v4

    filled-new-array {v15, v8}, [I

    move-result-object v4

    move-object v6, v5

    filled-new-array {v14, v8}, [I

    move-result-object v5

    const/4 v7, 0x7

    filled-new-array {v7, v12}, [I

    move-result-object v7

    const/16 v9, 0xb

    filled-new-array {v9, v8}, [I

    move-result-object v9

    const/16 v10, 0xd

    filled-new-array {v10, v8}, [I

    move-result-object v10

    move-object v11, v6

    move-object v6, v7

    move-object v7, v9

    filled-new-array {v3, v8}, [I

    move-result-object v9

    const/16 v3, 0x10

    filled-new-array {v3, v8}, [I

    move-result-object v3

    const/16 v12, 0x11

    filled-new-array {v12, v8}, [I

    move-result-object v12

    const/16 v13, 0x12

    filled-new-array {v13, v8}, [I

    move-result-object v13

    move-object v14, v10

    move-object v10, v3

    move-object v3, v11

    move-object v11, v12

    move-object v12, v13

    filled-new-array {v2, v8}, [I

    move-result-object v13

    move-object v2, v0

    move-object v8, v14

    filled-new-array/range {v1 .. v13}, [[I

    move-result-object v0

    .line 483
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 461
    :pswitch_25
    move-object/from16 v26, v0

    move v8, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v8, v8}, [I

    move-result-object v1

    const/4 v12, 0x2

    filled-new-array {v12, v8}, [I

    move-result-object v2

    filled-new-array {v15, v8}, [I

    move-result-object v0

    filled-new-array {v14, v8}, [I

    move-result-object v4

    const/16 v5, 0xb

    filled-new-array {v5, v8}, [I

    move-result-object v5

    const/16 v6, 0xe

    filled-new-array {v6, v8}, [I

    move-result-object v6

    filled-new-array {v3, v8}, [I

    move-result-object v7

    move-object v3, v0

    filled-new-array/range {v1 .. v7}, [[I

    move-result-object v0

    .line 468
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 446
    :pswitch_26
    move-object/from16 v26, v0

    move v8, v1

    move v2, v9

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v8, v8}, [I

    move-result-object v1

    const/4 v12, 0x2

    filled-new-array {v12, v12}, [I

    move-result-object v0

    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v4

    move-object v5, v4

    filled-new-array {v15, v8}, [I

    move-result-object v4

    move-object v6, v5

    filled-new-array {v14, v8}, [I

    move-result-object v5

    const/4 v7, 0x7

    filled-new-array {v7, v12}, [I

    move-result-object v7

    const/16 v9, 0xb

    filled-new-array {v9, v8}, [I

    move-result-object v9

    const/16 v10, 0xc

    filled-new-array {v10, v8}, [I

    move-result-object v10

    move-object v11, v6

    move-object v6, v7

    move-object v7, v9

    filled-new-array {v3, v8}, [I

    move-result-object v9

    const/16 v3, 0x10

    filled-new-array {v3, v8}, [I

    move-result-object v3

    filled-new-array {v2, v8}, [I

    move-result-object v2

    const/16 v14, 0x16

    filled-new-array {v14, v8}, [I

    move-result-object v12

    const/16 v13, 0x1c

    filled-new-array {v13, v8}, [I

    move-result-object v13

    move-object v8, v10

    move-object v10, v3

    move-object v3, v11

    move-object v11, v2

    move-object v2, v0

    filled-new-array/range {v1 .. v13}, [[I

    move-result-object v0

    .line 459
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto/16 :goto_1

    .line 432
    :pswitch_27
    move-object/from16 v26, v0

    move v8, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v8, v8}, [I

    move-result-object v1

    const/4 v12, 0x2

    filled-new-array {v12, v12}, [I

    move-result-object v2

    filled-new-array {v15, v8}, [I

    move-result-object v0

    filled-new-array {v14, v8}, [I

    move-result-object v4

    const/4 v5, 0x7

    filled-new-array {v5, v8}, [I

    move-result-object v5

    const/16 v6, 0xb

    filled-new-array {v6, v8}, [I

    move-result-object v6

    const/16 v7, 0xc

    filled-new-array {v7, v8}, [I

    move-result-object v7

    const/16 v9, 0xd

    filled-new-array {v9, v8}, [I

    move-result-object v9

    const/16 v10, 0xe

    filled-new-array {v10, v8}, [I

    move-result-object v10

    filled-new-array {v3, v8}, [I

    move-result-object v3

    const/16 v14, 0x16

    filled-new-array {v14, v8}, [I

    move-result-object v11

    const/16 v12, 0x1c

    filled-new-array {v12, v8}, [I

    move-result-object v12

    move-object v8, v9

    move-object v9, v10

    move-object v10, v3

    move-object v3, v0

    filled-new-array/range {v1 .. v12}, [[I

    move-result-object v0

    .line 444
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto :goto_1

    .line 426
    :pswitch_28
    move-object/from16 v26, v0

    move v8, v1

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    filled-new-array {v8, v8}, [I

    move-result-object v0

    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v1

    filled-new-array {v15, v8}, [I

    move-result-object v2

    filled-new-array {v14, v8}, [I

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    .line 430
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto :goto_1

    .line 1051
    :cond_0
    move-object/from16 v26, v0

    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1054
    :pswitch_29
    const/4 v4, 0x3

    const/4 v12, 0x2

    filled-new-array {v12, v4}, [I

    move-result-object v0

    filled-new-array {v0}, [[I

    move-result-object v0

    .line 1055
    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    goto :goto_1

    .line 1061
    .end local v0    # "featureMap":[[I
    .restart local v26    # "featureMap":[[I
    :goto_0
    move-object/from16 v0, v26

    .end local v26    # "featureMap":[[I
    .restart local v0    # "featureMap":[[I
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
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
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method private getFeatureMapFromFormat()[[I
    .locals 16

    .line 325
    const-string v1, ", "

    const/4 v2, 0x0

    .line 326
    .local v2, "serviceMap":[[I
    const/4 v0, 0x0

    .line 327
    .local v0, "isListExist":Z
    const-string v3, ""

    .line 329
    .local v3, "json":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "vendor/etc/sensorhub_services.json"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v4, "serviceListFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    .line 331
    const-string v5, "SemContextVersion"

    if-nez v0, :cond_0

    .line 332
    const-string v6, "getFeatureMapFromFormat() : Failed to find from 1st place."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/sensorhub_services.json"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v6

    .line 334
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    move v4, v0

    goto :goto_0

    .line 331
    :cond_0
    move-object v6, v4

    move v4, v0

    .line 337
    .end local v0    # "isListExist":Z
    .local v4, "isListExist":Z
    .local v6, "serviceListFile":Ljava/io/File;
    :goto_0
    const/4 v0, 0x0

    if-nez v4, :cond_1

    .line 338
    const-string v1, "getFeatureMapFromFormat() : There is also nothing at 2nd place."

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v0

    .line 342
    :cond_1
    const-string v7, "getFeatureMapFromFormat() : There are additional services."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 346
    .local v8, "size":I
    const/high16 v9, 0x100000

    if-le v8, v9, :cond_2

    .line 347
    const-string v9, "getFeatureMapFromFormat() : File size too large"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    nop

    .line 353
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    return-object v0

    .line 350
    :cond_2
    :try_start_3
    new-array v0, v8, [B

    .line 351
    .local v0, "buf":[B
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 352
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v9

    .line 353
    .end local v0    # "buf":[B
    .end local v8    # "size":I
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 355
    .end local v7    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 344
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "serviceMap":[[I
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "isListExist":Z
    .end local v6    # "serviceListFile":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/hardware/context/SemContextVersion;
    :goto_1
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 353
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v2    # "serviceMap":[[I
    .restart local v3    # "json":Ljava/lang/String;
    .restart local v4    # "isListExist":Z
    .restart local v6    # "serviceListFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/hardware/context/SemContextVersion;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v7, "services"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 389
    .local v7, "jsonServiceArray":Lorg/json/JSONArray;
    const-string v8, "model_name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, "model":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initialize by file. model: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x2

    new-array v11, v10, [I

    const/4 v12, 0x1

    aput v10, v11, v12

    const/4 v10, 0x0

    aput v9, v11, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    move-object v2, v9

    .line 395
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 396
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v13, "name"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 397
    .local v11, "typeStr":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "size"

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 398
    .local v13, "dataLen":I
    sget-object v14, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_STRING:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    aput-object v14, v2, v9

    .line 399
    aget-object v14, v2, v9

    if-nez v14, :cond_3

    .line 400
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initialize failed to find ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] from the map."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 402
    :cond_3
    if-le v13, v15, :cond_4

    .line 403
    aget-object v14, v2, v9

    aput v13, v14, v12

    .line 405
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initialize added: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v2, v9

    aget v15, v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v2, v9

    aget v15, v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 395
    .end local v11    # "typeStr":Ljava/lang/String;
    .end local v13    # "dataLen":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 410
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    .end local v7    # "jsonServiceArray":Lorg/json/JSONArray;
    .end local v8    # "model":Ljava/lang/String;
    .end local v9    # "i":I
    :cond_5
    goto :goto_5

    .line 408
    :catch_1
    move-exception v0

    .line 409
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 412
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5
    return-object v2
.end method

.method private initialize(IZ)V
    .locals 11
    .param p1, "version"    # I
    .param p2, "isSensorhubEnabled"    # Z

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "featureMap":[[I
    const/4 v1, 0x0

    .line 263
    .local v1, "featureMapExtra":[[I
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextVersion;->getFeatureMapFromFormat()[[I

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextVersion;->getFeatureMap(IZ)[[I

    move-result-object v0

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextVersion;->getFeatureMapFromFormat()[[I

    move-result-object v1

    .line 270
    :goto_0
    const-string v2, "SemContextVersion"

    if-nez v0, :cond_1

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize() : this version ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not supported!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 275
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    .line 277
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2

    aget-object v7, v0, v5

    .line 278
    .local v7, "aFeatureMap":[I
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    aget v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v7    # "aFeatureMap":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 281
    :cond_2
    if-eqz v1, :cond_3

    .line 282
    const-string v3, "initialize() : Apply additional services."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    array-length v3, v1

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v7, v1, v5

    .line 284
    .restart local v7    # "aFeatureMap":[I
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    aget v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v10, v7, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .end local v7    # "aFeatureMap":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 288
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize() : this version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private initializeFromList([I)V
    .locals 13
    .param p1, "data"    # [I

    .line 292
    array-length v0, p1

    .line 293
    .local v0, "len":I
    const/4 v1, 0x0

    .line 295
    .local v1, "serviceMap":[[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeFromList: size = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / 16]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemContextVersion"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    .line 300
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 301
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v5, 0x20

    if-ge v4, v5, :cond_4

    .line 302
    aget v5, p1, v2

    shr-int/2addr v5, v4

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move v6, v7

    .line 303
    .local v6, "exist":Z
    :goto_2
    if-eqz v6, :cond_3

    .line 304
    mul-int/lit8 v5, v2, 0x20

    add-int/2addr v5, v4

    .line 306
    .local v5, "caeType":I
    sget-object v8, Lcom/samsung/android/hardware/context/SemContextVersion;->CAE_TO_SEM_TYPE_CONVERT_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    .line 307
    .local v8, "types":[Ljava/lang/Integer;
    if-nez v8, :cond_2

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeFromList: Failed to match caeType: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    goto :goto_4

    .line 312
    :cond_2
    array-length v9, v8

    :goto_3
    if-ge v7, v9, :cond_3

    aget-object v10, v8, v7

    .line 313
    .local v10, "semContextType":Ljava/lang/Integer;
    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    sget-object v12, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Added ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] CAE: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " => SEM: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/hardware/context/SemContextVersion;->ALL_SERVICE_MAP_INT:Ljava/util/Map;

    .line 316
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 314
    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v10    # "semContextType":Ljava/lang/Integer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 301
    .end local v5    # "caeType":I
    .end local v6    # "exist":Z
    .end local v8    # "types":[Ljava/lang/Integer;
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 300
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeFromList: Done! "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " services."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method


# virtual methods
.method getAvailableServiceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextVersion;->mAvailableServiceMap:Ljava/util/Map;

    return-object v0
.end method
