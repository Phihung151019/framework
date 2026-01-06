.class synthetic Lcom/samsung/android/sep/camera/SemCameraConfig$1;
.super Ljava/lang/Object;
.source "SemCameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$AutoFramingMode:[I

.field static final synthetic $SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$ExposureControlMode:[I

.field static final synthetic $SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$OperationMode:[I

.field static final synthetic $SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SelfieToneMode:[I

.field static final synthetic $SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SuperNightOperationMode:[I

.field static final synthetic $SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoLiveHDRMode:[I

.field static final synthetic $SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoVDISMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 449
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SelfieToneMode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SelfieToneMode:[I

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->NATURAL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SelfieToneMode:[I

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->WARM:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SelfieToneMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->NONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 418
    :goto_2
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$ExposureControlMode:[I

    :try_start_3
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$ExposureControlMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->DEFAULT:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$ExposureControlMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->ENHANCED:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 303
    :goto_4
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$AutoFramingMode:[I

    :try_start_5
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$AutoFramingMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->VIDEO_AUTO_FRAMING_MODE_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    :try_start_6
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$AutoFramingMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->VIDEO_AUTO_FRAMING_MODE_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    .line 305
    :goto_6
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoVDISMode:[I

    :try_start_7
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoVDISMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    :goto_7
    :try_start_8
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoVDISMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    .line 227
    :goto_8
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;->values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SuperNightOperationMode:[I

    :try_start_9
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SuperNightOperationMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;->SUPER_NIGHT_AUTO:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v3

    :goto_9
    :try_start_a
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SuperNightOperationMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;->SUPER_NIGHT_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v3

    .line 187
    :goto_a
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$OperationMode:[I

    :try_start_b
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$OperationMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->FULL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v3

    :goto_b
    :try_start_c
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$OperationMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->HDR_ONLY:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v3

    :goto_c
    :try_start_d
    sget-object v3, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$OperationMode:[I

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->LOW_LIGHT_ONLY:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v2

    :goto_d
    :try_start_e
    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$OperationMode:[I

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->SINGLE_FRAME:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v2

    .line 152
    :goto_e
    invoke-static {}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->values()[Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoLiveHDRMode:[I

    :try_start_f
    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoLiveHDRMode:[I

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoLiveHDRMode:[I

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    return-void
.end method
