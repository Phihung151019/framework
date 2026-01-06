.class public Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraRangingReconfigureParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_ADDRESS_LIST:Ljava/lang/String; = "address_list"

.field private static final KEY_MAC_ADDRESS_MODE:Ljava/lang/String; = "mac_address_mode"

.field private static final KEY_SUB_SESSION_ID_LIST:Ljava/lang/String; = "sub_session_id_list"

.field private static final KEY_SUB_SESSION_KEY_LIST:Ljava/lang/String; = "sub_session_key_list"

.field private static final KEY_SUSPEND_RANGING_ROUNDS:Ljava/lang/String; = "suspend_ranging_rounds"

.field private static final KEY_UPDATE_BLOCK_STRIDE_LENGTH:Ljava/lang/String; = "update_block_stride_length"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_AOA_AZIMUTH_LOWER:Ljava/lang/String; = "range_data_aoa_azimuth_lower"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_AOA_AZIMUTH_UPPER:Ljava/lang/String; = "range_data_aoa_azimuth_upper"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_AOA_ELEVATION_LOWER:Ljava/lang/String; = "range_data_aoa_elevation_lower"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_AOA_ELEVATION_UPPER:Ljava/lang/String; = "range_data_aoa_elevation_upper"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_CONFIG:Ljava/lang/String; = "update_range_data_ntf_config"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_PROXIMITY_FAR:Ljava/lang/String; = "update_range_data_proximity_far"

.field private static final KEY_UPDATE_RANGE_DATA_NTF_PROXIMITY_NEAR:Ljava/lang/String; = "update_range_data_proximity_near"


# instance fields
.field private final mAction:Ljava/lang/Integer;

.field private final mAddressList:[Landroid/uwb/UwbAddress;

.field private final mBlockStrideLength:Ljava/lang/Integer;

.field private final mRangeDataAoaAzimuthLower:Ljava/lang/Double;

.field private final mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

.field private final mRangeDataAoaElevationLower:Ljava/lang/Double;

.field private final mRangeDataAoaElevationUpper:Ljava/lang/Double;

.field private final mRangeDataNtfConfig:Ljava/lang/Integer;

.field private final mRangeDataProximityFar:Ljava/lang/Integer;

.field private final mRangeDataProximityNear:Ljava/lang/Integer;

.field private final mSubSessionIdList:[I

.field private final mSubSessionKeyList:[B

.field private final mSuspendRangingRounds:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;[Landroid/uwb/UwbAddress;[I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Integer;
    .param p2, "addressList"    # [Landroid/uwb/UwbAddress;
    .param p3, "subSessionIdList"    # [I
    .param p4, "subSessionKeyList"    # [B
    .param p5, "blockStrideLength"    # Ljava/lang/Integer;
    .param p6, "rangeDataNtfConfig"    # Ljava/lang/Integer;
    .param p7, "rangeDataProximityNear"    # Ljava/lang/Integer;
    .param p8, "rangeDataProximityFar"    # Ljava/lang/Integer;
    .param p9, "rangeDataAoaAzimuthLower"    # Ljava/lang/Double;
    .param p10, "rangeDataAoaAzimuthUpper"    # Ljava/lang/Double;
    .param p11, "rangeDataAoaElevationLower"    # Ljava/lang/Double;
    .param p12, "rangeDataAoaElevationUpper"    # Ljava/lang/Double;
    .param p13, "suspendRanginRounds"    # Ljava/lang/Integer;

    .line 90
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAction:Ljava/lang/Integer;

    .line 92
    iput-object p2, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAddressList:[Landroid/uwb/UwbAddress;

    .line 93
    iput-object p3, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSubSessionIdList:[I

    .line 94
    iput-object p4, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSubSessionKeyList:[B

    .line 95
    iput-object p5, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mBlockStrideLength:Ljava/lang/Integer;

    .line 96
    iput-object p6, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataNtfConfig:Ljava/lang/Integer;

    .line 97
    iput-object p7, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataProximityNear:Ljava/lang/Integer;

    .line 98
    iput-object p8, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataProximityFar:Ljava/lang/Integer;

    .line 99
    iput-object p9, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    .line 100
    iput-object p10, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    .line 101
    iput-object p11, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    .line 102
    iput-object p12, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    .line 103
    iput-object p13, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSuspendRangingRounds:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;[Landroid/uwb/UwbAddress;[I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Integer;
    .param p2, "x1"    # [Landroid/uwb/UwbAddress;
    .param p3, "x2"    # [I
    .param p4, "x3"    # [B
    .param p5, "x4"    # Ljava/lang/Integer;
    .param p6, "x5"    # Ljava/lang/Integer;
    .param p7, "x6"    # Ljava/lang/Integer;
    .param p8, "x7"    # Ljava/lang/Integer;
    .param p9, "x8"    # Ljava/lang/Double;
    .param p10, "x9"    # Ljava/lang/Double;
    .param p11, "x10"    # Ljava/lang/Double;
    .param p12, "x11"    # Ljava/lang/Double;
    .param p13, "x12"    # Ljava/lang/Integer;
    .param p14, "x13"    # Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$1;

    .line 36
    invoke-direct/range {p0 .. p13}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;-><init>(Ljava/lang/Integer;[Landroid/uwb/UwbAddress;[I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;)V

    return-void
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 180
    if-nez p0, :cond_0

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 185
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 186
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 269
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;

    move-result-object v0

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 197
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 198
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;
    .locals 9
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 283
    new-instance v0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;-><init>()V

    .line 284
    .local v0, "builder":Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;
    const-string v1, "action"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    const-string v2, "mac_address_mode"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 286
    .local v2, "macAddressMode":I
    const/4 v3, 0x2

    .line 287
    .local v3, "addressByteLength":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 288
    const/16 v3, 0x8

    .line 291
    :cond_0
    const-string v4, "address_list"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 292
    .local v4, "addresses":[J
    array-length v5, v4

    new-array v5, v5, [Landroid/uwb/UwbAddress;

    .line 293
    .local v5, "addressList":[Landroid/uwb/UwbAddress;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 294
    aget-wide v7, v4, v6

    invoke-static {v7, v8, v3}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v7

    aput-object v7, v5, v6

    .line 293
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 296
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setAction(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {v1, v5}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setAddressList([Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    move-result-object v1

    .line 298
    const-string v6, "sub_session_id_list"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setSubSessionIdList([I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    move-result-object v1

    .line 300
    const-string v6, "sub_session_key_list"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-static {v6}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->intArrayToByteArray([I)[B

    move-result-object v6

    .line 299
    invoke-virtual {v1, v6}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setSubSessionKeyList([B)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 303
    .end local v2    # "macAddressMode":I
    .end local v3    # "addressByteLength":I
    .end local v4    # "addresses":[J
    .end local v5    # "addressList":[Landroid/uwb/UwbAddress;
    :cond_2
    const-string v1, "update_block_stride_length"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setBlockStrideLength(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 307
    :cond_3
    const-string v1, "update_range_data_ntf_config"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 308
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setRangeDataNtfConfig(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 311
    :cond_4
    const-string v1, "update_range_data_proximity_near"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 312
    nop

    .line 313
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setRangeDataProximityNear(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 316
    :cond_5
    const-string v1, "update_range_data_proximity_far"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    nop

    .line 318
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setRangeDataProximityFar(I)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 321
    :cond_6
    const-string v1, "range_data_aoa_azimuth_lower"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 322
    nop

    .line 323
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 322
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setRangeDataAoaAzimuthLower(D)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 326
    :cond_7
    const-string v1, "range_data_aoa_azimuth_upper"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 327
    nop

    .line 328
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 327
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setRangeDataAoaAzimuthUpper(D)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 331
    :cond_8
    const-string v1, "range_data_aoa_elevation_lower"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 332
    nop

    .line 333
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 332
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setRangeDataAoaElevationLower(D)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 336
    :cond_9
    const-string v1, "range_data_aoa_elevation_upper"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 337
    nop

    .line 338
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setRangeDataAoaElevationUpper(D)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 341
    :cond_a
    const-string v1, "suspend_ranging_rounds"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 342
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->setSuspendRangingRounds(Ljava/lang/Integer;)Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;

    .line 344
    :cond_b
    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams$Builder;->build()Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAction()Ljava/lang/Integer;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAction:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAddressList()[Landroid/uwb/UwbAddress;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAddressList:[Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method public getBlockStrideLength()Ljava/lang/Integer;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mBlockStrideLength:Ljava/lang/Integer;

    return-object v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDataAoaAzimuthLower()Ljava/lang/Double;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    return-object v0
.end method

.method public getRangeDataAoaAzimuthUpper()Ljava/lang/Double;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    return-object v0
.end method

.method public getRangeDataAoaElevationLower()Ljava/lang/Double;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    return-object v0
.end method

.method public getRangeDataAoaElevationUpper()Ljava/lang/Double;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    return-object v0
.end method

.method public getRangeDataNtfConfig()Ljava/lang/Integer;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataNtfConfig:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRangeDataProximityFar()Ljava/lang/Integer;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataProximityFar:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRangeDataProximityNear()Ljava/lang/Integer;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataProximityNear:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubSessionIdList()[I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSubSessionIdList:[I

    return-object v0
.end method

.method public getSubSessionKeyList()[B
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSubSessionKeyList:[B

    return-object v0
.end method

.method public getSuspendRangingRounds()Ljava/lang/Integer;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSuspendRangingRounds:Ljava/lang/Integer;

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 11

    .line 205
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 206
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAction:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAddressList:[Landroid/uwb/UwbAddress;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAction:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v1, v1

    new-array v1, v1, [J

    .line 211
    .local v1, "addressList":[J
    const/4 v2, 0x0

    .line 212
    .local v2, "i":I
    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 213
    .local v7, "address":Landroid/uwb/UwbAddress;
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    invoke-static {v7}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v9

    aput-wide v9, v1, v2

    .line 212
    .end local v7    # "address":Landroid/uwb/UwbAddress;
    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_0

    .line 215
    .end local v8    # "i":I
    .restart local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .line 216
    .local v3, "macAddressMode":I
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mAddressList:[Landroid/uwb/UwbAddress;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/uwb/UwbAddress;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 217
    const/4 v3, 0x2

    .line 219
    :cond_1
    const-string v4, "mac_address_mode"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v4, "address_list"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 221
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSubSessionKeyList:[B

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->byteArrayToIntArray([B)[I

    move-result-object v4

    const-string v5, "sub_session_key_list"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 222
    const-string v4, "sub_session_id_list"

    iget-object v5, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSubSessionIdList:[I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 225
    .end local v1    # "addressList":[J
    .end local v2    # "i":I
    .end local v3    # "macAddressMode":I
    :cond_2
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mBlockStrideLength:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 226
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mBlockStrideLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "update_block_stride_length"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataNtfConfig:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataNtfConfig:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "update_range_data_ntf_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataProximityNear:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 234
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataProximityNear:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "update_range_data_proximity_near"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    :cond_5
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataProximityFar:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 238
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataProximityFar:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "update_range_data_proximity_far"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 241
    :cond_6
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    if-eqz v1, :cond_7

    .line 242
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaAzimuthLower:Ljava/lang/Double;

    .line 243
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 242
    const-string v3, "range_data_aoa_azimuth_lower"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 246
    :cond_7
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 247
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaAzimuthUpper:Ljava/lang/Double;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 247
    const-string v3, "range_data_aoa_azimuth_upper"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 251
    :cond_8
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    if-eqz v1, :cond_9

    .line 252
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaElevationLower:Ljava/lang/Double;

    .line 253
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 252
    const-string v3, "range_data_aoa_elevation_lower"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 256
    :cond_9
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    if-eqz v1, :cond_a

    .line 257
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mRangeDataAoaElevationUpper:Ljava/lang/Double;

    .line 258
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 257
    const-string v3, "range_data_aoa_elevation_upper"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 261
    :cond_a
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSuspendRangingRounds:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 262
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraRangingReconfigureParams;->mSuspendRangingRounds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "suspend_ranging_rounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 265
    :cond_b
    return-object v0
.end method
