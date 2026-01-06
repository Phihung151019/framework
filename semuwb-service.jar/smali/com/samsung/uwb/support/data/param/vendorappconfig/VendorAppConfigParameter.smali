.class public Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;
.super Ljava/lang/Object;
.source "VendorAppConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;
    }
.end annotation


# static fields
.field public static final ANTENNAS_CONFIGURATION_RX:B = 0x3t

.field public static final ANTENNAS_CONFIGURATION_TX:B = 0x2t

.field public static final CIR_LOG_NTF:B = 0x30t

.field public static final MAC_PAYLOAD_ENCRYPTION:B = 0x0t

.field public static final PSDU_LOG_NTF:B = 0x31t

.field public static final RAN_MULTIPLIER:B = 0x20t

.field public static final RSSI_AVG_FILT_CNT:B = 0x40t

.field public static final STS_INDEX_LAST_USED:B = 0x21t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;
    .locals 2
    .param p0, "tag"    # B
    .param p1, "length"    # I
    .param p2, "value"    # [B

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    sparse-switch p0, :sswitch_data_0

    .line 102
    new-instance v1, Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v1, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 98
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/RssiAverageFilterCount;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/RssiAverageFilterCount;-><init>(BI[B)V

    .line 99
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 94
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/PsduLogNotification;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/PsduLogNotification;-><init>(BI[B)V

    .line 95
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 90
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;-><init>(BI[B)V

    .line 91
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 86
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/StsIndexLastUsed;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/StsIndexLastUsed;-><init>(BI[B)V

    .line 87
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 82
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_4
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/RanMultiplier;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/RanMultiplier;-><init>(BI[B)V

    .line 83
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 78
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_5
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;-><init>(BI[B)V

    .line 79
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 74
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_6
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;-><init>(BI[B)V

    .line 75
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 70
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_7
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;-><init>(BI[B)V

    .line 71
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    nop

    .line 107
    :goto_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x20 -> :sswitch_4
        0x21 -> :sswitch_3
        0x30 -> :sswitch_2
        0x31 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTagName(I)Ljava/lang/String;
    .locals 8
    .param p0, "tag"    # I

    .line 207
    const-string v0, "INVALID"

    :try_start_0
    const-class v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 208
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 211
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p0, :cond_0

    .line 212
    return-object v5

    .line 207
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    nop

    .line 219
    return-object v0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
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

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    if-eqz p0, :cond_5

    array-length v1, p0

    if-eqz v1, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    .line 34
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 35
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p1, :cond_4

    .line 39
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    aget-byte v2, p0, v2

    .line 40
    .local v2, "tag":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 41
    .local v4, "length":I
    if-eqz v4, :cond_3

    .line 42
    new-array v6, v4, [B

    .line 43
    .local v6, "value":[B
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    .line 44
    aget-byte v8, p0, v5

    aput-byte v8, v6, v7

    goto :goto_1

    .line 47
    :cond_1
    :try_start_0
    invoke-static {p0, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 48
    :catch_0
    move-exception v7

    .line 49
    .local v7, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 52
    .end local v7    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    add-int/2addr v5, v4

    .line 54
    invoke-static {v2, v4, v6}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;->find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;

    move-result-object v7

    .line 55
    .local v7, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    if-eqz v7, :cond_2

    .line 56
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v6    # "value":[B
    .end local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_2
    move v2, v5

    goto :goto_2

    .line 59
    :cond_3
    new-instance v6, Lcom/samsung/uwb/support/data/param/TlvParam;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v4, v7}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 60
    .local v6, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    .line 38
    .end local v4    # "length":I
    .end local v5    # "offset":I
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v2, "offset":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "index":I
    :cond_4
    return-object v0

    .line 31
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "offset":I
    :cond_5
    :goto_3
    return-object v0
.end method
