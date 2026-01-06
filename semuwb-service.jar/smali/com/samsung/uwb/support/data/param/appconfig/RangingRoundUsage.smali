.class public Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RangingRoundUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RANGING_ROUND_USAGE"


# instance fields
.field public final usage:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 24
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;->usage:B

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    const-string v0, "INVALID"

    .line 32
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;->usage:B

    if-nez v1, :cond_0

    .line 33
    const-string v0, "One Way Ranging aka TDoA"

    goto :goto_0

    .line 34
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;->usage:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 35
    const-string v0, "SS-TWR with Deferred Mode"

    goto :goto_0

    .line 36
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;->usage:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 37
    const-string v0, "DS-TWR with Deferred Mode"

    goto :goto_0

    .line 38
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;->usage:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 39
    const-string v0, "SS-TWR with Non-deferred Mode"

    goto :goto_0

    .line 40
    :cond_3
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;->usage:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 41
    const-string v0, "DS-TWR with Non-deferred Mode"

    goto :goto_0

    .line 42
    :cond_4
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;->usage:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 43
    const-string v0, "One Way Ranging DL-TDOA"

    goto :goto_0

    .line 44
    :cond_5
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;->usage:B

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 45
    const-string v0, "OWR for AoA Measurement"

    .line 47
    :cond_6
    :goto_0
    const-string v1, "RANGING_ROUND_USAGE"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
