.class public Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "InBandTerminationAttemptCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IN_BAND_TERMINATION_ATTEMPT_COUNT"


# instance fields
.field public final value:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 18
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount;->value:B

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 25
    const-string v0, "INVALID"

    .line 26
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount;->value:B

    if-nez v1, :cond_0

    .line 27
    const-string v0, "Disable"

    goto :goto_0

    .line 28
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount;->value:B

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount;->value:B

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount;->value:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_1
    :goto_0
    const-string v1, "IN_BAND_TERMINATION_ATTEMPT_COUNT"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
