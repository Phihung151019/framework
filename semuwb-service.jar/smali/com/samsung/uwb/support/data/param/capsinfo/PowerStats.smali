.class public Lcom/samsung/uwb/support/data/param/capsinfo/PowerStats;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "PowerStats.java"


# static fields
.field private static final SUPPORT_POWER_STATS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "POWER_STATS"


# instance fields
.field private final powerStats:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 17
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/PowerStats;->powerStats:B

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    const-string v0, " Not Support "

    .line 25
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/PowerStats;->powerStats:B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v0, " Support "

    .line 28
    :cond_0
    const-string v1, "POWER_STATS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/capsinfo/PowerStats;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
