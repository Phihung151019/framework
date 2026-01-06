.class public Lcom/samsung/uwb/support/data/param/appconfig/PrfMode;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "PrfMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/PrfMode$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PRF_MODE"


# instance fields
.field public final prfMode:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 20
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PrfMode;->prfMode:B

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    const-string v0, "INVALID"

    .line 28
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PrfMode;->prfMode:B

    if-nez v1, :cond_0

    .line 29
    const-string v0, "62.4 MHz PRF -BPRF"

    goto :goto_0

    .line 30
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PrfMode;->prfMode:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 31
    const-string v0, "124.8 MHz PRF -HPRF"

    goto :goto_0

    .line 32
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/PrfMode;->prfMode:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 33
    const-string v0, "249.6 MHz PRF -HPRF with data rate 27.2 and 31.2 Mbps"

    .line 35
    :cond_2
    :goto_0
    const-string v1, "PRF_MODE"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
