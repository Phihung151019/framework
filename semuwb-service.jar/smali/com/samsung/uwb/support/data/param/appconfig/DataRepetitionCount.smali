.class public Lcom/samsung/uwb/support/data/param/appconfig/DataRepetitionCount;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "DataRepetitionCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/DataRepetitionCount$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DATA_REPETITION_COUNT"


# instance fields
.field public final count:I


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

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DataRepetitionCount;->count:I

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
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DataRepetitionCount;->count:I

    if-nez v1, :cond_0

    .line 27
    const-string v0, "No repetition"

    goto :goto_0

    .line 28
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DataRepetitionCount;->count:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    .line 29
    const-string v0, "Repeat infinite number of times"

    goto :goto_0

    .line 31
    :cond_1
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DataRepetitionCount;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    const-string v1, "DATA_REPETITION_COUNT"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
