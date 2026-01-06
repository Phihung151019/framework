.class public Lcom/samsung/uwb/support/data/param/appconfig/DlTdoaResponderTof;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "DlTdoaResponderTof.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DL_TDOA_RESPONDER_TOF"


# instance fields
.field public final mode:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 14
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DlTdoaResponderTof;->mode:B

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 21
    const-string v0, "INVALID"

    .line 22
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DlTdoaResponderTof;->mode:B

    if-nez v1, :cond_0

    .line 23
    const-string v0, "Responder ToF Result shall not be added to Response DTMs"

    goto :goto_0

    .line 24
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DlTdoaResponderTof;->mode:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 25
    const-string v0, "Responder ToF Result shall be added to Response DTMs"

    .line 27
    :cond_1
    :goto_0
    const-string v1, "DL_TDOA_RESPONDER_TOF"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
