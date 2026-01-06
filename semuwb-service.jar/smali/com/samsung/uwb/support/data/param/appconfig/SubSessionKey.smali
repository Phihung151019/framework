.class public Lcom/samsung/uwb/support/data/param/appconfig/SubSessionKey;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "SubSessionKey.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SUB_SESSION_KEY"


# instance fields
.field public final sessionKey:[B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 15
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/SubSessionKey;->sessionKey:[B

    .line 18
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/SubSessionKey;->sessionKey:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/appconfig/SubSessionKey;->sessionKey:[B

    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUB_SESSION_KEY"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
