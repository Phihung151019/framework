.class public Lcom/samsung/uwb/support/data/param/appconfig/SessionPriority;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "SessionPriority.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_PRIORITY"


# instance fields
.field public final value:B


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

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/SessionPriority;->value:B

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
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/SessionPriority;->value:B

    if-lez v1, :cond_0

    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/SessionPriority;->value:B

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    .line 23
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/SessionPriority;->value:B

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_0
    const-string v1, "SESSION_PRIORITY"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
