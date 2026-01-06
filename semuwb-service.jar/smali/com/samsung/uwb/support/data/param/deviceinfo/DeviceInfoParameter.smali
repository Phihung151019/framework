.class public Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceInfoParameter;
.super Ljava/lang/Object;
.source "DeviceInfoParameter.java"


# static fields
.field public static final DEVICE_NAME:B = 0x0t

.field public static final FIRMWARE_VERSION:B = 0x1t

.field public static final TX_POWER:B = 0x5t

.field public static final UWBS_CAL_MODE:B = 0x6t

.field public static final UWBS_MAX_PPM_VALUE:B = 0x4t

.field public static final UWB_CHIP_ID:B = 0x3t

.field public static final VENDOR_UCI_VERSION:B = 0x2t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;
    .locals 2
    .param p0, "tag"    # B
    .param p1, "length"    # I
    .param p2, "value"    # [B

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    packed-switch p0, :pswitch_data_0

    .line 86
    new-instance v1, Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v1, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 82
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;-><init>(BI[B)V

    .line 83
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 78
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_1
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceinfo/TxPower;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceinfo/TxPower;-><init>(BI[B)V

    .line 79
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 74
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_2
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsMaxPpmValue;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsMaxPpmValue;-><init>(BI[B)V

    .line 75
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 70
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_3
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbChipInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbChipInfo;-><init>(BI[B)V

    .line 71
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 66
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_4
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceinfo/VendorUciVersion;-><init>(BI[B)V

    .line 67
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 62
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_5
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceinfo/FirmwareVersion;-><init>(BI[B)V

    .line 63
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 58
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_6
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;-><init>(BI[B)V

    .line 59
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    nop

    .line 91
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTagName(I)Ljava/lang/String;
    .locals 8
    .param p0, "tag"    # I

    .line 96
    const-string v0, "INVALID"

    :try_start_0
    const-class v1, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceInfoParameter;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 97
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceInfoParameter;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceInfoParameter;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 100
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p0, :cond_0

    .line 101
    return-object v5

    .line 96
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_1
    nop

    .line 108
    return-object v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    return-object v0
.end method

.method protected static final parse([B)Ljava/util/HashMap;
    .locals 8
    .param p0, "tlvArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v0, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Byte;Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    if-eqz p0, :cond_5

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 25
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "offset":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 30
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    aget-byte v2, p0, v2

    .line 31
    .local v2, "tag":B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 32
    .local v3, "length":I
    if-eqz v3, :cond_3

    .line 33
    new-array v5, v3, [B

    .line 34
    .local v5, "value":[B
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 35
    aget-byte v7, p0, v4

    aput-byte v7, v5, v6

    goto :goto_1

    .line 38
    :cond_1
    :try_start_0
    invoke-static {p0, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_1

    .line 39
    :catch_0
    move-exception v6

    .line 40
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 43
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    add-int/2addr v4, v3

    .line 45
    invoke-static {v2, v3, v5}, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceInfoParameter;->find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;

    move-result-object v6

    .line 46
    .local v6, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    if-eqz v6, :cond_2

    .line 47
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v2    # "tag":B
    .end local v3    # "length":I
    .end local v5    # "value":[B
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_2
    move v2, v4

    goto :goto_2

    .line 32
    .restart local v2    # "tag":B
    .restart local v3    # "length":I
    :cond_3
    move v2, v4

    .line 50
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .local v2, "offset":I
    :goto_2
    goto :goto_0

    .line 51
    :cond_4
    return-object v0

    .line 22
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "offset":I
    :cond_5
    :goto_3
    return-object v0
.end method
