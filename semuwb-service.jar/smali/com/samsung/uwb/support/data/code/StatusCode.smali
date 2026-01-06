.class public Lcom/samsung/uwb/support/data/code/StatusCode;
.super Ljava/lang/Object;
.source "StatusCode.java"


# static fields
.field public static final STATUS_CODE_CALIBRATION_FORBIDDEN:I = 0xb0

.field public static final STATUS_CODE_CALIBRATION_INVALID_CONFIG_VERSION:I = 0xb2

.field public static final STATUS_CODE_CALIBRATION_NOT_AUTHORIZED:I = 0xb1

.field public static final STATUS_CODE_CALIBRATION_NO_PLATFORM_ID:I = 0xb3

.field public static final STATUS_CODE_COMMAND_RETRY:I = 0xa

.field public static final STATUS_CODE_ERROR_ACTIVE_SESSIONS_ONGOING:I = 0x16

.field public static final STATUS_CODE_ERROR_ADDRESS_ALREADY_PRESENT:I = 0x19

.field public static final STATUS_CODE_ERROR_ADDRESS_NOT_FOUND:I = 0x18

.field public static final STATUS_CODE_ERROR_DL_TDOA_DEVICE_ADDRESS_NOT_MATCHING_IN_REPLY_TIME_LIST:I = 0x2b

.field public static final STATUS_CODE_ERROR_MAX_SESSIONS_EXCEEDED:I = 0x14

.field public static final STATUS_CODE_ERROR_MULTICAST_LIST_FULL:I = 0x17

.field public static final STATUS_CODE_ERROR_NUMBER_OF_ACTIVE_RANGING_ROUNDS_EXCEEDED:I = 0x29

.field public static final STATUS_CODE_ERROR_ROUND_INDEX_NOT_ACTIVATED:I = 0x28

.field public static final STATUS_CODE_ERROR_ROUND_INDEX_NOT_SET_AS_INITIATOR:I = 0x2a

.field public static final STATUS_CODE_ERROR_SESSION_ACTIVE:I = 0x13

.field public static final STATUS_CODE_ERROR_SESSION_DUPLICATE:I = 0x12

.field public static final STATUS_CODE_ERROR_SESSION_NOT_CONFIGURED:I = 0x15

.field public static final STATUS_CODE_ERROR_SESSION_NOT_EXIST:I = 0x11

.field public static final STATUS_CODE_FAILED:I = 0x2

.field public static final STATUS_CODE_INVALID_MESSAGE_SIZE:I = 0x6

.field public static final STATUS_CODE_INVALID_PARAM:I = 0x4

.field public static final STATUS_CODE_INVALID_RANGE:I = 0x5

.field public static final STATUS_CODE_OK:I = 0x0

.field public static final STATUS_CODE_OK_NEGATIVE_DISTANCE_REPORT:I = 0x1b

.field public static final STATUS_CODE_RANGING_RX_MAC_DEC_FAILED:I = 0x25

.field public static final STATUS_CODE_RANGING_RX_MAC_IE_DEC_FAILED:I = 0x26

.field public static final STATUS_CODE_RANGING_RX_MAC_IE_MISSING:I = 0x27

.field public static final STATUS_CODE_RANGING_RX_PHY_DEC_FAILED:I = 0x22

.field public static final STATUS_CODE_RANGING_RX_PHY_STS_FAILED:I = 0x24

.field public static final STATUS_CODE_RANGING_RX_PHY_TOA_FAILED:I = 0x23

.field public static final STATUS_CODE_RANGING_RX_TIMEOUT:I = 0x21

.field public static final STATUS_CODE_RANGING_TX_FAILED:I = 0x20

.field public static final STATUS_CODE_READ_ONLY:I = 0x9

.field public static final STATUS_CODE_REJECTED:I = 0x1

.field public static final STATUS_CODE_SYNTAX_ERROR:I = 0x3

.field public static final STATUS_CODE_UNKNOWN_GID:I = 0x7

.field public static final STATUS_CODE_UNKNOWN_OID:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusName(I)Ljava/lang/String;
    .locals 8
    .param p1, "status"    # I

    .line 48
    const-class v0, Lcom/samsung/uwb/support/data/code/StatusCode;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 49
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/code/StatusCode;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/code/StatusCode;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 52
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p1, :cond_0

    .line 53
    return-object v5

    .line 48
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_1
    goto :goto_1

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getReasonName Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "INVALID"

    return-object v0
.end method

.method protected isDefinedValue(I)Z
    .locals 9
    .param p1, "status"    # I

    .line 65
    const-class v0, Lcom/samsung/uwb/support/data/code/StatusCode;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 66
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    new-instance v7, Lcom/samsung/uwb/support/data/code/StatusCode;

    invoke-direct {v7}, Lcom/samsung/uwb/support/data/code/StatusCode;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 68
    .local v7, "value":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, p1, :cond_0

    .line 69
    return v6

    .line 65
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_1
    goto :goto_1

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isDefinedValue Exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method
