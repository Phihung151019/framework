.class public Lcom/samsung/uwb/support/data/param/appconfig/HoppingMode;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "HoppingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/HoppingMode$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HOPPING_MODE"


# instance fields
.field public final macFcsType:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 19
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/HoppingMode;->macFcsType:B

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 26
    const-string v0, "INVALID"

    .line 27
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/HoppingMode;->macFcsType:B

    if-nez v1, :cond_0

    .line 28
    const-string v0, "Disable"

    goto :goto_0

    .line 29
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/HoppingMode;->macFcsType:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 30
    const-string v0, "FiRa Hopping Enable"

    .line 32
    :cond_1
    :goto_0
    const-string v1, "HOPPING_MODE"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
