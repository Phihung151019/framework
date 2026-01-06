.class public Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "PsduDataRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PSDU_DATA_RATE"


# instance fields
.field public final dataRate:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 22
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;->dataRate:B

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    const-string v0, "INVALID"

    .line 30
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;->dataRate:B

    if-nez v1, :cond_0

    .line 31
    const-string v0, "6.81 Mbps"

    goto :goto_0

    .line 32
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;->dataRate:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 33
    const-string v0, "7.80 Mbps"

    goto :goto_0

    .line 34
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;->dataRate:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 35
    const-string v0, "27.2 Mbps"

    goto :goto_0

    .line 36
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;->dataRate:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 37
    const-string v0, "31.2 Mbps"

    goto :goto_0

    .line 38
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;->dataRate:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 39
    const-string v0, "850 Kbps"

    .line 41
    :cond_4
    :goto_0
    const-string v1, "PSDU_DATA_RATE"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
