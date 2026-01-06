.class Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;
.super Ljava/lang/Object;
.source "BluetoothCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MfData"
.end annotation


# static fields
.field private static MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I = 0x0

.field private static final MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I = 0x12

.field private static final MANUFACTURER_LENGTH_SS_LE_DEVICE:I = 0x6

.field private static final MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I = 0x1

.field private static final MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I = 0x2

.field private static final MANUFACTURER_OFFSET_OLD_DEVICE_ID:I = 0x7

.field private static final MANUFACTURER_OFFSET_OLD_SERVICE_ID:I = 0x5

.field private static final MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I = 0x7

.field private static final MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I = 0x1f

.field private static final MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I = 0x1

.field private static final MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I = 0x1

.field private static MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I = 0x0

.field private static MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I = 0x0

.field private static MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I = 0x0

.field private static final MANUFACTURER_OFFSET_SS_LE_FEATURES:I = 0x8

.field private static MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I = 0x0

.field private static MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I = 0x0

.field private static final MANUFACTURER_OFFSET_SS_SERVICE_ID:I = 0x5

.field private static final MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B = 0x10t

.field private static final MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B = 0x8t

.field private static final MANUFACTURER_SS_LE_DEVICE_FIELD:B = 0x4t

.field private static final MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B = 0x1t

.field private static final MANUFACTURER_SS_LE_PROXIMITY_FIELD:B = 0x2t

.field public static final MANUFACTURER_TYPE_DEFAULT:I = 0x0

.field public static final MANUFACTURER_TYPE_OLD:I = 0x1

.field public static final MANUFACTURER_TYPE_SS_BREDR:I = 0x2

.field public static final MANUFACTURER_TYPE_SS_LE:I = 0x3


# instance fields
.field private mDeviceId:[B

.field private mManufacturerRawData:[B

.field private mManufacturerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 373
    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    .line 374
    sput v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 375
    sput v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    .line 376
    sput v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    .line 377
    sput v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 384
    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    .line 394
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mDeviceId:[B

    .line 402
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setManufacturerRawData([B)V

    .line 403
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setManufacturerType([B)V

    .line 404
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setDeviceId([B)V

    .line 405
    return-void
.end method

.method private isSupportFeature(B)Z
    .locals 2
    .param p1, "feature"    # B

    .line 496
    iget v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 498
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 500
    const/4 v0, 0x1

    return v0

    .line 509
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private setDeviceId([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 517
    iget v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 519
    :pswitch_0
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    sget v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setDeviceId([BI)V

    goto :goto_0

    .line 528
    :pswitch_1
    const/16 v0, 0x1f

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 530
    .local v0, "associatedLength":I
    if-lez v0, :cond_0

    array-length v1, p1

    add-int/lit8 v2, v0, 0x1f

    if-le v1, v2, :cond_0

    .line 532
    const/16 v1, 0x20

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setDeviceId([BI)V

    goto :goto_0

    .line 525
    .end local v0    # "associatedLength":I
    :pswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setDeviceId([BI)V

    .line 526
    nop

    .line 540
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDeviceId([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 513
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mDeviceId:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    return-void
.end method

.method private setManufacturerRawData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 436
    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    .line 437
    return-void
.end method

.method private setManufacturerType([B)V
    .locals 8
    .param p1, "data"    # [B

    .line 440
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 441
    iput v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    .line 442
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x5

    aget-byte v3, p1, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    if-ne v3, v4, :cond_1

    .line 448
    iput v5, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    goto :goto_2

    .line 449
    :cond_1
    aget-byte v3, p1, v0

    const/4 v6, 0x7

    if-ne v3, v2, :cond_2

    aget-byte v3, p1, v6

    if-nez v3, :cond_2

    .line 452
    iput v4, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    goto :goto_2

    .line 453
    :cond_2
    aget-byte v3, p1, v0

    if-ne v3, v2, :cond_4

    aget-byte v2, p1, v6

    if-ne v2, v4, :cond_4

    .line 456
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    .line 459
    const/16 v1, 0x8

    aget-byte v1, p1, v1

    .line 460
    .local v1, "extra":B
    const/16 v2, 0x9

    .line 461
    .local v2, "prevLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 462
    shl-int v4, v5, v3

    int-to-byte v4, v4

    .line 463
    .local v4, "mask":B
    and-int v6, v1, v4

    int-to-byte v6, v6

    .line 465
    .local v6, "parse":B
    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    .line 483
    :sswitch_0
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 484
    sget v7, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v7, p1, v7

    add-int/2addr v7, v5

    sput v7, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    .line 486
    sget v7, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v7

    goto :goto_1

    .line 479
    :sswitch_1
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    .line 480
    add-int/lit8 v2, v2, 0x12

    .line 481
    goto :goto_1

    .line 475
    :sswitch_2
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    .line 476
    add-int/lit8 v2, v2, 0x6

    .line 477
    goto :goto_1

    .line 471
    :sswitch_3
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 472
    add-int/lit8 v2, v2, 0x2

    .line 473
    goto :goto_1

    .line 467
    :sswitch_4
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    .line 468
    add-int/lit8 v2, v2, 0x1

    .line 469
    nop

    .line 461
    .end local v4    # "mask":B
    .end local v6    # "parse":B
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "extra":B
    .end local v2    # "prevLength":I
    .end local v3    # "i":I
    :cond_3
    goto :goto_2

    .line 491
    :cond_4
    iput v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    .line 493
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDeviceId()[B
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mDeviceId:[B

    return-object v0
.end method

.method public getManufacturerRawData()[B
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    return-object v0
.end method

.method public getManufacturerType()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    return v0
.end method
