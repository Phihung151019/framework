.class public Lcom/samsung/uwb/support/data/param/capsinfo/PsduLengthSupport;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "PsduLengthSupport.java"


# static fields
.field private static final LENGTH_1023_SUPPORT:B = 0x0t

.field private static final LENGTH_2047_SUPPORT:B = 0x1t

.field private static final LENGTH_4095_SUPPORT:B = 0x2t

.field public static final TAG:Ljava/lang/String; = "PSDU_LENGTH_SUPPORT"


# instance fields
.field private final psduLengthSupport:B


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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/PsduLengthSupport;->psduLengthSupport:B

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 26
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/PsduLengthSupport;->psduLengthSupport:B

    const-string v1, "PSDU_LENGTH_SUPPORT"

    if-nez v0, :cond_0

    .line 27
    const-string v0, " 1023 octets "

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "log":Ljava/lang/String;
    goto :goto_0

    .line 28
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/PsduLengthSupport;->psduLengthSupport:B

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 29
    const-string v0, " 2047 octets "

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "log":Ljava/lang/String;
    goto :goto_0

    .line 30
    .end local v0    # "log":Ljava/lang/String;
    :cond_1
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/PsduLengthSupport;->psduLengthSupport:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 31
    const-string v0, " 4095 octets "

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "log":Ljava/lang/String;
    goto :goto_0

    .line 33
    .end local v0    # "log":Ljava/lang/String;
    :cond_2
    const-string v0, " RFU octets "

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .restart local v0    # "log":Ljava/lang/String;
    :goto_0
    return-object v0
.end method
