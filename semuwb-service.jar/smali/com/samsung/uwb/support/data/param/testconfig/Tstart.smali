.class public Lcom/samsung/uwb/support/data/param/testconfig/Tstart;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "Tstart.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "T_START"


# instance fields
.field private final start:J


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 5
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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/param/testconfig/Tstart;->start:J

    .line 22
    return-void
.end method


# virtual methods
.method public getStart()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/param/testconfig/Tstart;->start:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/param/testconfig/Tstart;->start:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T_START"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
