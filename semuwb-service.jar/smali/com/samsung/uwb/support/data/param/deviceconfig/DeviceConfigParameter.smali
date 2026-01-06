.class public Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceConfigParameter;
.super Ljava/lang/Object;
.source "DeviceConfigParameter.java"


# static fields
.field public static final DEVICE_STATE:B = 0x0t

.field public static final LOW_POWER_MODE:B = 0x1t

.field public static final SEC_WIFI_COEX_FEATURE:B = -0x10t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;
    .locals 2
    .param p0, "tag"    # B
    .param p1, "length"    # I
    .param p2, "value"    # [B

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    sparse-switch p0, :sswitch_data_0

    .line 87
    new-instance v1, Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v1, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 79
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceconfig/LowPowerMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceconfig/LowPowerMode;-><init>(BI[B)V

    .line 80
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 75
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceState;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceState;-><init>(BI[B)V

    .line 76
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 83
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2
    new-instance v1, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/deviceconfig/SecWifiCoexFeature;-><init>(BI[B)V

    .line 84
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    nop

    .line 91
    :goto_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x10 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTagName(I)Ljava/lang/String;
    .locals 8
    .param p0, "tag"    # I

    .line 96
    const-string v0, "INVALID"

    :try_start_0
    const-class v1, Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceConfigParameter;

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
    new-instance v6, Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceConfigParameter;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceConfigParameter;-><init>()V

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

.method public static final parse([BI)Ljava/util/List;
    .locals 12
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

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    if-eqz p0, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 23
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p1, :cond_7

    .line 28
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    .line 29
    .local v4, "tag":[B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    aget-byte v2, p0, v2

    const/4 v6, 0x0

    aput-byte v2, v4, v6

    .line 30
    aget-byte v2, v4, v6

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isExtendedTag(B)Z

    move-result v2

    .line 31
    .local v2, "isExtendedTag":Z
    const/4 v7, 0x1

    if-eqz v2, :cond_1

    .line 32
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .local v8, "offset":I
    aget-byte v5, p0, v5

    aput-byte v5, v4, v7

    move v5, v8

    .line 34
    .end local v8    # "offset":I
    .restart local v5    # "offset":I
    :cond_1
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 35
    .local v5, "length":I
    if-eqz v5, :cond_5

    .line 36
    new-array v9, v5, [B

    .line 37
    .local v9, "value":[B
    if-ne v5, v7, :cond_2

    .line 38
    aget-byte v10, p0, v8

    aput-byte v10, v9, v6

    goto :goto_1

    .line 41
    :cond_2
    :try_start_0
    invoke-static {p0, v8, v9, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_1

    .line 42
    :catch_0
    move-exception v10

    .line 43
    .local v10, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v10}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 46
    .end local v10    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    add-int/2addr v8, v5

    .line 49
    if-nez v2, :cond_3

    .line 50
    aget-byte v6, v4, v6

    invoke-static {v6, v5, v9}, Lcom/samsung/uwb/support/data/param/deviceconfig/DeviceConfigParameter;->find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;

    move-result-object v6

    .local v6, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_2

    .line 52
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_3
    new-instance v10, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    aget-byte v7, v4, v7

    invoke-direct {v10, v6, v7, v5, v9}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BBI[B)V

    move-object v6, v10

    .line 55
    .restart local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :goto_2
    if-eqz v6, :cond_4

    .line 56
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .end local v9    # "value":[B
    :cond_4
    move v2, v8

    goto :goto_4

    .line 59
    :cond_5
    const/4 v9, 0x0

    .line 60
    .local v9, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    const/4 v10, 0x0

    if-nez v2, :cond_6

    .line 61
    new-instance v7, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    invoke-direct {v7, v6, v5, v10}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v7, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_3

    .line 63
    .end local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_6
    new-instance v11, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    aget-byte v7, v4, v7

    invoke-direct {v11, v6, v7, v5, v10}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BBI[B)V

    move-object v7, v11

    .line 65
    .end local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :goto_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    .line 27
    .end local v4    # "tag":[B
    .end local v5    # "length":I
    .end local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .end local v8    # "offset":I
    .local v2, "offset":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "index":I
    :cond_7
    return-object v0

    .line 20
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "offset":I
    :cond_8
    :goto_5
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
