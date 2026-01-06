.class public Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RangeDataNtfConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RANGE_DATA_NTF_CONFIG"


# instance fields
.field public final ntfConfig:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 25
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    const-string v0, "INVALID"

    .line 33
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    if-nez v1, :cond_0

    .line 34
    const-string v0, "Disable"

    goto :goto_0

    .line 35
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 36
    const-string v0, "Enable"

    goto :goto_0

    .line 37
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 38
    const-string v0, "Enable while inside proximity range"

    goto :goto_0

    .line 39
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 40
    const-string v0, "Enable while inside AoA bounds"

    goto :goto_0

    .line 41
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 42
    const-string v0, "Enable while inside AoA bounds, proximity range"

    goto :goto_0

    .line 43
    :cond_4
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 44
    const-string v0, "Enable only when entering and leaving proximity range"

    goto :goto_0

    .line 45
    :cond_5
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 46
    const-string v0, "Enable when entering and leaving AoA bounds"

    goto :goto_0

    .line 47
    :cond_6
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;->ntfConfig:B

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 48
    const-string v0, "Enable only when entering and leaving AoA bounds, proximity range"

    .line 50
    :cond_7
    :goto_0
    const-string v1, "RANGE_DATA_NTF_CONFIG"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
