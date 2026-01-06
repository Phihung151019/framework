.class public Lcom/samsung/uwb/support/data/param/securecalibration/SecureCalibrationParameter;
.super Ljava/lang/Object;
.source "SecureCalibrationParameter.java"


# static fields
.field public static final SECURE_CONFIG_VERSION:B = 0x5dt

.field public static final SECURE_PLATFORM_ID:B = 0x5ct

.field public static final SECURE_RF_CLK_ACCURACY_REG:B = 0x2t

.field public static final SECURE_RX_ANT_DELAY_CAL:B = 0xft

.field public static final SECURE_TX_ANT_DELAY_CAL:B = 0xet


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;
    .locals 2
    .param p0, "tag"    # B
    .param p1, "length"    # I
    .param p2, "value"    # [B

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    sparse-switch p0, :sswitch_data_0

    .line 82
    new-instance v1, Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v1, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 78
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/securecalibration/SecureConfigVersion;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/securecalibration/SecureConfigVersion;-><init>(BI[B)V

    .line 79
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 74
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1
    new-instance v1, Lcom/samsung/uwb/support/data/param/securecalibration/SecurePlatformId;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/securecalibration/SecurePlatformId;-><init>(BI[B)V

    .line 75
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 70
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2
    new-instance v1, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib;-><init>(BI[B)V

    .line 71
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 66
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3
    new-instance v1, Lcom/samsung/uwb/support/data/param/securecalibration/SecureTxAntennaDelayCalib;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/securecalibration/SecureTxAntennaDelayCalib;-><init>(BI[B)V

    .line 67
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 62
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_4
    new-instance v1, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRfClkAccuracyReg;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRfClkAccuracyReg;-><init>(BI[B)V

    .line 63
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    nop

    .line 87
    :goto_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTagName(I)Ljava/lang/String;
    .locals 8
    .param p0, "tag"    # I

    .line 92
    const-string v0, "INVALID"

    :try_start_0
    const-class v1, Lcom/samsung/uwb/support/data/param/securecalibration/SecureCalibrationParameter;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 93
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/param/securecalibration/SecureCalibrationParameter;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/securecalibration/SecureCalibrationParameter;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 96
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p0, :cond_0

    .line 97
    return-object v5

    .line 92
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    nop

    .line 104
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    return-object v0
.end method

.method public static final parse([BI)Ljava/util/List;
    .locals 9
    .param p0, "tlvArray"    # [B
    .param p1, "numOfParams"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    if-eqz p0, :cond_5

    array-length v1, p0

    if-eqz v1, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    .line 26
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 27
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p1, :cond_4

    .line 31
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    aget-byte v2, p0, v2

    .line 32
    .local v2, "tag":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 33
    .local v4, "length":I
    if-eqz v4, :cond_3

    .line 34
    new-array v6, v4, [B

    .line 35
    .local v6, "value":[B
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    .line 36
    aget-byte v8, p0, v5

    aput-byte v8, v6, v7

    goto :goto_1

    .line 39
    :cond_1
    :try_start_0
    invoke-static {p0, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_1

    .line 40
    :catch_0
    move-exception v7

    .line 41
    .local v7, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 44
    .end local v7    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    add-int/2addr v5, v4

    .line 46
    invoke-static {v2, v4, v6}, Lcom/samsung/uwb/support/data/param/securecalibration/SecureCalibrationParameter;->find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;

    move-result-object v7

    .line 47
    .local v7, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    if-eqz v7, :cond_2

    .line 48
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v6    # "value":[B
    .end local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_2
    move v2, v5

    goto :goto_2

    .line 51
    :cond_3
    new-instance v6, Lcom/samsung/uwb/support/data/param/TlvParam;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v4, v7}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 52
    .local v6, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    .line 30
    .end local v4    # "length":I
    .end local v5    # "offset":I
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v2, "offset":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v3    # "index":I
    :cond_4
    return-object v0

    .line 23
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "offset":I
    :cond_5
    :goto_3
    return-object v0
.end method
