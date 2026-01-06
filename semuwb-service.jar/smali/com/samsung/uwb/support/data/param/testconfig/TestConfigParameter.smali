.class public Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter;
.super Ljava/lang/Object;
.source "TestConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    }
.end annotation


# static fields
.field public static final NUM_PACKETS:I = 0x0

.field public static final PHR_RANGING_BIT:I = 0x5

.field public static final RANDOMIZE_PSDU:I = 0x4

.field public static final RMARKER_RX_START:I = 0x7

.field public static final RMARKER_TX_START:I = 0x6

.field public static final STS_INDEX_AUTO_INCR:I = 0x8

.field public static final T_GAP:I = 0x1

.field public static final T_START:I = 0x2

.field public static final T_WIN:I = 0x3


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

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    packed-switch p0, :pswitch_data_0

    .line 120
    new-instance v1, Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v1, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 116
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/StsIndexAutoIncrease;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/StsIndexAutoIncrease;-><init>(BI[B)V

    .line 117
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 112
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_1
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/RmarkerRxStart;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/RmarkerRxStart;-><init>(BI[B)V

    .line 113
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 108
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_2
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/RmarkerTxStart;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/RmarkerTxStart;-><init>(BI[B)V

    .line 109
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 104
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_3
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/PhrRangingBit;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/PhrRangingBit;-><init>(BI[B)V

    .line 105
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 100
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_4
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/RandomizePsdu;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/RandomizePsdu;-><init>(BI[B)V

    .line 101
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 96
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_5
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/Twin;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/Twin;-><init>(BI[B)V

    .line 97
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 92
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_6
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/Tstart;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/Tstart;-><init>(BI[B)V

    .line 93
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 88
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_7
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/Tgap;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/Tgap;-><init>(BI[B)V

    .line 89
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 84
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :pswitch_8
    new-instance v1, Lcom/samsung/uwb/support/data/param/testconfig/NumPackets;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/testconfig/NumPackets;-><init>(BI[B)V

    .line 85
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    nop

    .line 124
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
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

    .line 223
    const-string v0, "INVALID"

    :try_start_0
    const-class v1, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 224
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 227
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p0, :cond_0

    .line 228
    return-object v5

    .line 223
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_1
    nop

    .line 235
    return-object v0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
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

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    if-eqz p0, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 32
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 33
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p1, :cond_7

    .line 37
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    .line 38
    .local v4, "tag":[B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    aget-byte v2, p0, v2

    const/4 v6, 0x0

    aput-byte v2, v4, v6

    .line 39
    aget-byte v2, v4, v6

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isExtendedTestTag(B)Z

    move-result v2

    .line 40
    .local v2, "isExtendedTag":Z
    const/4 v7, 0x1

    if-eqz v2, :cond_1

    .line 41
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .local v8, "offset":I
    aget-byte v5, p0, v5

    aput-byte v5, v4, v7

    move v5, v8

    .line 43
    .end local v8    # "offset":I
    .restart local v5    # "offset":I
    :cond_1
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 44
    .local v5, "length":I
    if-eqz v5, :cond_5

    .line 45
    new-array v9, v5, [B

    .line 46
    .local v9, "value":[B
    if-ne v5, v7, :cond_2

    .line 47
    aget-byte v10, p0, v8

    aput-byte v10, v9, v6

    goto :goto_1

    .line 50
    :cond_2
    :try_start_0
    invoke-static {p0, v8, v9, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_1

    .line 51
    :catch_0
    move-exception v10

    .line 52
    .local v10, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v10}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 55
    .end local v10    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    add-int/2addr v8, v5

    .line 58
    if-nez v2, :cond_3

    .line 59
    aget-byte v6, v4, v6

    invoke-static {v6, v5, v9}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter;->find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;

    move-result-object v6

    .local v6, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_2

    .line 61
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_3
    new-instance v10, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    aget-byte v7, v4, v7

    invoke-direct {v10, v6, v7, v5, v9}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BBI[B)V

    move-object v6, v10

    .line 64
    .restart local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :goto_2
    if-eqz v6, :cond_4

    .line 65
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .end local v9    # "value":[B
    :cond_4
    move v2, v8

    goto :goto_4

    .line 68
    :cond_5
    const/4 v9, 0x0

    .line 69
    .local v9, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    const/4 v10, 0x0

    if-nez v2, :cond_6

    .line 70
    new-instance v7, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    invoke-direct {v7, v6, v5, v10}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v7, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_3

    .line 72
    .end local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_6
    new-instance v11, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    aget-byte v7, v4, v7

    invoke-direct {v11, v6, v7, v5, v10}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BBI[B)V

    move-object v7, v11

    .line 74
    .end local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :goto_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    .line 36
    .end local v4    # "tag":[B
    .end local v5    # "length":I
    .end local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .end local v8    # "offset":I
    .local v2, "offset":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "index":I
    :cond_7
    return-object v0

    .line 29
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
