.class public Lcom/samsung/vekit/Common/Object/SlowVideoInfo;
.super Ljava/lang/Object;
.source "SlowVideoInfo.java"


# instance fields
.field private captureFramerate:I

.field private frameRate:I

.field private numOfSVCLayer:I

.field private superSlowEndTime:J

.field private superSlowStartTime:J


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "numOfSVCLayer"    # I
    .param p2, "captureFramerate"    # I
    .param p3, "frameRate"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->superSlowStartTime:J

    .line 8
    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->superSlowEndTime:J

    .line 11
    iput p1, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->numOfSVCLayer:I

    .line 12
    iput p2, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->captureFramerate:I

    .line 13
    iput p3, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->frameRate:I

    .line 14
    return-void
.end method


# virtual methods
.method public getCaptureFramerate()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->captureFramerate:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->frameRate:I

    return v0
.end method

.method public getNumOfSVCLayer()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->numOfSVCLayer:I

    return v0
.end method

.method public getSuperSlowEndTime()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->superSlowEndTime:J

    return-wide v0
.end method

.method public getSuperSlowStartTime()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->superSlowStartTime:J

    return-wide v0
.end method

.method public setCaptureFramerate(I)V
    .locals 0
    .param p1, "captureFramerate"    # I

    .line 36
    iput p1, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->captureFramerate:I

    .line 37
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0
    .param p1, "frameRate"    # I

    .line 44
    iput p1, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->frameRate:I

    .line 45
    return-void
.end method

.method public setNumOfSVCLayer(I)V
    .locals 0
    .param p1, "numOfSVCLayer"    # I

    .line 21
    iput p1, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->numOfSVCLayer:I

    .line 22
    return-void
.end method

.method public setSuperSlowEndTime(J)V
    .locals 0
    .param p1, "superSlowEndTime"    # J

    .line 51
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->superSlowEndTime:J

    .line 52
    return-void
.end method

.method public setSuperSlowStartTime(J)V
    .locals 0
    .param p1, "superSlowStartTime"    # J

    .line 48
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/SlowVideoInfo;->superSlowStartTime:J

    .line 49
    return-void
.end method
