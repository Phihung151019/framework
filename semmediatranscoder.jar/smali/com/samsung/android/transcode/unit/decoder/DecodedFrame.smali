.class public Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
.super Ljava/lang/Object;
.source "DecodedFrame.java"


# instance fields
.field public bufferIndex:I

.field public flags:I

.field public presentationTimeUs:J

.field public size:I


# direct methods
.method public constructor <init>(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "bufferIndex"    # I
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->bufferIndex:I

    .line 13
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v0, p0, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->size:I

    .line 14
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    .line 15
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v0, p0, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->flags:I

    .line 16
    return-void
.end method
