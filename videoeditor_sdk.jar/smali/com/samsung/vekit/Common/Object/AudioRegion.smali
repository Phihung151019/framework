.class public Lcom/samsung/vekit/Common/Object/AudioRegion;
.super Ljava/lang/Object;
.source "AudioRegion.java"


# instance fields
.field private endTime:J

.field private fadeInDuration:J

.field private fadeOutDuration:J

.field private startTime:J

.field private volume:F


# direct methods
.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    .line 7
    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    .line 8
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    .line 11
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    .line 12
    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    .line 13
    return-void
.end method

.method public constructor <init>(JJFJJ)V
    .locals 2
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "volume"    # F
    .param p6, "fadeInDuration"    # J
    .param p8, "fadeOutDuration"    # J

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    .line 7
    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    .line 8
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    .line 16
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    .line 17
    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    .line 18
    iput p5, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    .line 19
    iput-wide p6, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    .line 20
    iput-wide p8, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    .line 21
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/vekit/Common/Object/AudioRegion;
    .locals 10

    .line 24
    new-instance v0, Lcom/samsung/vekit/Common/Object/AudioRegion;

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    iget v5, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    iget-wide v8, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    invoke-direct/range {v0 .. v9}, Lcom/samsung/vekit/Common/Object/AudioRegion;-><init>(JJFJJ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/AudioRegion;->clone()Lcom/samsung/vekit/Common/Object/AudioRegion;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    return-wide v0
.end method

.method public getFadeInDuration()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    return-wide v0
.end method

.method public getFadeOutDuration()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    return v0
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .line 40
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    .line 41
    return-void
.end method

.method public setFadeInDuration(J)V
    .locals 0
    .param p1, "fadeInDuration"    # J

    .line 48
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    .line 49
    return-void
.end method

.method public setFadeOutDuration(J)V
    .locals 0
    .param p1, "fadeOutDuration"    # J

    .line 56
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    .line 57
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 32
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    .line 33
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 64
    iput p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    .line 65
    return-void
.end method
