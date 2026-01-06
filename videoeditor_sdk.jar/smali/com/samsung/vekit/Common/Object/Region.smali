.class public Lcom/samsung/vekit/Common/Object/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private endTime:J

.field private isFrcOn:Z

.field private speed:F

.field private startTime:J


# direct methods
.method public constructor <init>(JJFZ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "speed"    # F
    .param p6, "isFrcOn"    # Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    .line 11
    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    .line 12
    iput p5, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    .line 13
    iput-boolean p6, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    return-wide v0
.end method

.method public getRegion()Lcom/samsung/vekit/Common/Object/Region;
    .locals 0

    .line 17
    return-object p0
.end method

.method public getSpeed()F
    .locals 1

    .line 29
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    return-wide v0
.end method

.method public isFrcOn()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    return v0
.end method

.method public setEndTime(I)V
    .locals 2
    .param p1, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    .line 60
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .line 41
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    .line 42
    return-void
.end method

.method public setFrcOn(Z)V
    .locals 0
    .param p1, "isFrcOn"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    .line 50
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 45
    iput p1, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    .line 46
    return-void
.end method

.method public setStartTime(I)V
    .locals 2
    .param p1, "starTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    .line 55
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "starTime"    # J

    .line 37
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    .line 38
    return-void
.end method
