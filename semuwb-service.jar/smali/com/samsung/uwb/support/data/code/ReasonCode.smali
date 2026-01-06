.class public Lcom/samsung/uwb/support/data/code/ReasonCode;
.super Ljava/lang/Object;
.source "ReasonCode.java"


# static fields
.field public static final ERROR_HUS_CAP_PHASE_TOO_SHORT:I = 0x28

.field public static final ERROR_HUS_CFP_PHASE_TOO_SHORT:I = 0x27

.field public static final ERROR_HUS_NOT_ENOUGH_SLOTS:I = 0x26

.field public static final ERROR_HUS_OTHERS:I = 0x29

.field public static final ERROR_INSUFFICIENT_SLOTS_PER_RR:I = 0x21

.field public static final ERROR_INVALID_DST_ADDRESS_LIST:I = 0x35

.field public static final ERROR_INVALID_MULTI_NODE_MODE:I = 0x3a

.field public static final ERROR_INVALID_NUM_OF_CONTROLEES:I = 0x33

.field public static final ERROR_INVALID_NUM_OF_STS_SEGMENTS:I = 0x32

.field public static final ERROR_INVALID_OR_NOT_FOUND_SUB_SESSION_ID:I = 0x36

.field public static final ERROR_INVALID_PHR_DATA_RATE:I = 0x2f

.field public static final ERROR_INVALID_PREAMBLE_CODE_INDEX:I = 0x2c

.field public static final ERROR_INVALID_PREAMBLE_DURATION:I = 0x30

.field public static final ERROR_INVALID_PSDU_DATA_RATE:I = 0x2e

.field public static final ERROR_INVALID_RANGING_DURATION:I = 0x23

.field public static final ERROR_INVALID_RANGING_ROUND_CONTROL_CONFIG:I = 0x38

.field public static final ERROR_INVALID_RANGING_ROUND_USAGE:I = 0x39

.field public static final ERROR_INVALID_RESULT_REPORT_CONFIG:I = 0x37

.field public static final ERROR_INVALID_RFRAME_CONFIG:I = 0x25

.field public static final ERROR_INVALID_SFD_ID:I = 0x2d

.field public static final ERROR_INVALID_STS_CONFIG:I = 0x24

.field public static final ERROR_INVALID_STS_LENGTH:I = 0x31

.field public static final ERROR_INVALID_UL_TDOA_RANDOM_WINDOW:I = 0x1d

.field public static final ERROR_MAC_ADDRESS_MODE_NOT_SUPPORTED:I = 0x22

.field public static final ERROR_MAX_RANGING_REPLY_TIME_EXCEEDED:I = 0x34

.field public static final ERROR_MIN_RFRAMES_PER_RR_NOT_SUPPORTED:I = 0x1e

.field public static final ERROR_RDS_FETCH_FAILURE:I = 0x3b

.field public static final ERROR_REF_UWB_SESSION_DOES_NOT_EXIST:I = 0x3c

.field public static final ERROR_REF_UWB_SESSION_INVALID_OFFSET_TIME:I = 0x3e

.field public static final ERROR_REF_UWB_SESSION_LOST:I = 0x3f

.field public static final ERROR_REF_UWB_SESSION_RANGING_DURATION_MISMATCH:I = 0x3d

.field public static final ERROR_SLOT_LENGTH_NOT_SUPPORTED:I = 0x20

.field public static final ERROR_STATUS_SESSION_KEY_NOT_FOUND:I = 0x2a

.field public static final ERROR_STATUS_SUB_SESSION_KEY_NOT_FOUND:I = 0x2b

.field public static final ERROR_TX_DELAY_NOT_SUPPORTED:I = 0x1f

.field public static final MAX_NUMBER_OF_MEASUREMENTS_REACHED:I = 0x2

.field public static final MAX_RANGING_ROUND_RETRY_COUNT_REACHED:I = 0x1

.field public static final SESSION_RESUMED_DUE_TO_INBAND_SIGNAL:I = 0x4

.field public static final SESSION_STOPPED_DUE_TO_INBAND_SIGNAL:I = 0x5

.field public static final SESSION_SUSPENDED_DUE_TO_INBAND_SIGNAL:I = 0x3

.field public static final STATE_CHANGE_WITH_SESSION_MANAGEMENT_COMMANDS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReasonName(I)Ljava/lang/String;
    .locals 8
    .param p1, "status"    # I

    .line 52
    const-class v0, Lcom/samsung/uwb/support/data/code/ReasonCode;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 53
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/code/ReasonCode;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/code/ReasonCode;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 56
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p1, :cond_0

    .line 57
    return-object v5

    .line 52
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_1
    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getReasonName Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "INVALID"

    return-object v0
.end method

.method protected isDefinedValue(I)Z
    .locals 9
    .param p1, "status"    # I

    .line 69
    const-class v0, Lcom/samsung/uwb/support/data/code/ReasonCode;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 70
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    new-instance v7, Lcom/samsung/uwb/support/data/code/ReasonCode;

    invoke-direct {v7}, Lcom/samsung/uwb/support/data/code/ReasonCode;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 72
    .local v7, "value":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, p1, :cond_0

    .line 73
    return v6

    .line 69
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_1
    goto :goto_1

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isDefinedValue Exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method
