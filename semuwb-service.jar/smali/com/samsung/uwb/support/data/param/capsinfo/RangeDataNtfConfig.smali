.class public Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RangeDataNtfConfig.java"


# static fields
.field private static final RANGE_DATA_NTF_CONFIG_DISABLE:I = 0x2

.field private static final RANGE_DATA_NTF_CONFIG_ENABLE:I = 0x1

.field private static final RANGE_DATA_NTF_CONFIG_ENABLE_AOA_EDGE_TRIG:I = 0x40

.field private static final RANGE_DATA_NTF_CONFIG_ENABLE_AOA_LEVEL_TRIG:I = 0x8

.field private static final RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_EDGE_TRIG:I = 0x80

.field private static final RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_LEVEL_TRIG:I = 0x10

.field private static final RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_EDGE_TRIG:I = 0x20

.field private static final RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_LEVEL_TRIG:I = 0x4

.field public static final TAG:Ljava/lang/String; = "RANGE_DATA_NTF_CONFIG"


# instance fields
.field private final rangeDataNtfConfig:I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 26
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 28
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->getIntLE(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    .line 29
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    .local v0, "description":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, " NTF-Config-Enable "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, " NTF-Config-Disable "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    :cond_1
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    const-string v1, " Proximity-Level-Trig "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 43
    :cond_2
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    const-string v1, " AOA-Level_Trig "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    :cond_3
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    const-string v1, " Proximity-AOA-Level-Trig "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 49
    :cond_4
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    const-string v1, " Proximity-Edge-Trig "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 52
    :cond_5
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    const-string v1, " AOA-Edge-Trig "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 55
    :cond_6
    iget v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->rangeDataNtfConfig:I

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    const-string v1, " Proximity-AOA-Edge-Trig "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 58
    :cond_7
    const-string v1, "RANGE_DATA_NTF_CONFIG"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
