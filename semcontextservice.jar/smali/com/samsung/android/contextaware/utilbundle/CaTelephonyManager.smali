.class public Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.super Ljava/lang/Object;
.source "CaTelephonyManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    }
.end annotation


# static fields
.field private static final CALL_STATE_ACTIVE:B = -0x27t

.field private static final CALL_STATE_IDLE:B = -0x28t

.field private static CALL_STATE_IDLE_1:I

.field private static CALL_STATE_INCOMING_ANSWERED:I

.field private static CALL_STATE_INCOMING_MISSED:I

.field private static CALL_STATE_INCOMING_RINGING:I

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# instance fields
.field private mCellLocation:Landroid/telephony/CellLocation;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$msendCallStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_IDLE_1:I

    .line 62
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_RINGING:I

    .line 63
    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_ANSWERED:I

    .line 64
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_MISSED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .locals 2

    .line 84
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    .line 88
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    return-object v0

    .line 88
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isCellLocationChanged(Landroid/telephony/CellLocation;)Z
    .locals 7
    .param p1, "cl"    # Landroid/telephony/CellLocation;

    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    if-eqz v1, :cond_6

    .line 263
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v1, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    .line 264
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 269
    .local v1, "prevCid":I
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 271
    .local v2, "prevLac":I
    move-object v3, p1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 272
    .local v3, "curCid":I
    move-object v4, p1

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    .line 274
    .local v4, "curLac":I
    if-eq v1, v3, :cond_0

    if-eq v2, v4, :cond_0

    .line 275
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 279
    .end local v1    # "prevCid":I
    .end local v2    # "prevLac":I
    .end local v3    # "curCid":I
    .end local v4    # "curLac":I
    :cond_0
    goto/16 :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v1, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_9

    .line 286
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    .line 291
    .local v1, "prevBid":I
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 292
    .local v2, "prevNid":I
    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    .line 294
    .local v3, "prevSid":I
    move-object v4, p1

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    .line 295
    .local v4, "curBid":I
    move-object v5, p1

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v5

    .line 296
    .local v5, "curNid":I
    move-object v6, p1

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v6

    .line 298
    .local v6, "curSid":I
    if-ne v1, v4, :cond_3

    if-ne v2, v5, :cond_3

    if-eq v3, v6, :cond_4

    .line 299
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 300
    const/4 v0, 0x1

    .line 303
    .end local v1    # "prevBid":I
    .end local v2    # "prevNid":I
    .end local v3    # "prevSid":I
    .end local v4    # "curBid":I
    .end local v5    # "curNid":I
    .end local v6    # "curSid":I
    :cond_4
    goto :goto_0

    .line 306
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :cond_6
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_8

    .line 313
    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 314
    .local v1, "curCid":I
    move-object v2, p1

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 316
    .local v2, "curLac":I
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 317
    const/4 v0, 0x1

    .line 319
    .end local v1    # "curCid":I
    .end local v2    # "curLac":I
    :cond_7
    goto :goto_0

    .line 320
    :cond_8
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_9

    .line 322
    move-object v1, p1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    .line 323
    .local v1, "curBid":I
    move-object v2, p1

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 324
    .local v2, "curNid":I
    move-object v3, p1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    .line 326
    .local v3, "curSid":I
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    .line 327
    const/4 v0, 0x1

    .line 332
    .end local v1    # "curBid":I
    .end local v2    # "curNid":I
    .end local v3    # "curSid":I
    :cond_9
    :goto_0
    return v0
.end method

.method private sendCallStatusToSensorHub(I)V
    .locals 4
    .param p1, "state"    # I

    .line 411
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 413
    .local v1, "dataPacket":[B
    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 414
    const/4 v2, 0x1

    aput-byte v3, v1, v2

    .line 416
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    .line 420
    return-void

    nop

    :array_0
    .array-data 1
        -0x4ct
        0x11t
    .end array-data
.end method

.method private sendCellInfoToSensorHub()V
    .locals 13

    .line 422
    const/16 v0, 0xe

    new-array v0, v0, [B

    .line 423
    .local v0, "dataPacket":[B
    const/4 v1, 0x4

    .line 424
    .local v1, "size":I
    const/4 v2, 0x0

    .line 427
    .local v2, "toSendData":Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v3

    .line 429
    .local v3, "utcTime":[I
    const/4 v4, 0x0

    aget v5, v3, v4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 430
    const/4 v5, 0x1

    aget v6, v3, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 431
    const/4 v6, 0x2

    aget v7, v3, v6

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 433
    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v7, v7, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eqz v7, :cond_0

    .line 434
    aput-byte v4, v0, v8

    .line 436
    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    .line 437
    .local v7, "cid":I
    iget-object v8, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v8

    .line 438
    .local v8, "lac":I
    const/4 v10, 0x0

    .line 439
    .local v10, "mcc":I
    const/4 v11, 0x0

    .line 441
    .local v11, "mnc":I
    invoke-static {v7, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    invoke-static {v12, v4, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    invoke-static {v8, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    add-int/lit8 v1, v1, 0x4

    invoke-static {v9, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    add-int/2addr v1, v6

    invoke-static {v9, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    add-int/2addr v1, v6

    invoke-static {v9, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    const/4 v2, 0x1

    .line 447
    .end local v7    # "cid":I
    .end local v8    # "lac":I
    .end local v10    # "mcc":I
    .end local v11    # "mnc":I
    goto :goto_0

    .line 448
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v7, v7, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v7, :cond_1

    .line 449
    aput-byte v5, v0, v8

    .line 451
    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v7, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v7

    .line 452
    .local v7, "baseStationId":I
    iget-object v8, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v8, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v8}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v8

    .line 453
    .local v8, "networkId":I
    iget-object v10, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v10, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v10}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v10

    .line 454
    .local v10, "systemId":I
    const/4 v11, 0x0

    .line 456
    .local v11, "padding":I
    invoke-static {v7, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    invoke-static {v12, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    invoke-static {v8, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/lit8 v1, v1, 0x2

    invoke-static {v12, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    invoke-static {v10, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/2addr v1, v6

    invoke-static {v12, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    invoke-static {v4, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/2addr v1, v6

    invoke-static {v12, v4, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    const/4 v2, 0x1

    .line 464
    .end local v7    # "baseStationId":I
    .end local v8    # "networkId":I
    .end local v10    # "systemId":I
    .end local v11    # "padding":I
    :cond_1
    :goto_0
    if-ne v2, v5, :cond_2

    .line 465
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v4

    new-array v5, v6, [B

    fill-array-data v5, :array_0

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    .line 469
    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x11t
    .end array-data
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    if-nez p1, :cond_0

    .line 102
    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 103
    return-void

    .line 106
    :cond_0
    nop

    .line 107
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 110
    const-string v0, "mTelephonyManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 111
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x120

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 122
    return-void
.end method

.method public final terminateManager()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 140
    :cond_0
    return-void
.end method
