.class public Lcom/samsung/uwb/support/data/param/appconfig/MaxNumberOfMeasurements;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "MaxNumberOfMeasurements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/MaxNumberOfMeasurements$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MAX_NUMBER_OF_MEASUREMENTS"


# instance fields
.field public final value:I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 3
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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/MaxNumberOfMeasurements;->value:I

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    const-string v0, "INVALID"

    .line 26
    .local v0, "description":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/MaxNumberOfMeasurements;->value:I

    if-nez v1, :cond_0

    .line 27
    const-string v0, "Unlimited"

    goto :goto_0

    .line 29
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/MaxNumberOfMeasurements;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    const-string v1, "MAX_NUMBER_OF_MEASUREMENTS"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
