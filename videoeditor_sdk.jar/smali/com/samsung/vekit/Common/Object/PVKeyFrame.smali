.class public Lcom/samsung/vekit/Common/Object/PVKeyFrame;
.super Ljava/lang/Object;
.source "PVKeyFrame.java"


# instance fields
.field duration:J

.field endFrameNum:I

.field endTime:J

.field id:I

.field mainObjectId:I

.field startFrameNum:I

.field startTime:J

.field type:Lcom/samsung/vekit/Common/Type/PVFocusType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startTime:J

    .line 28
    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endTime:J

    .line 29
    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->duration:J

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->mainObjectId:I

    .line 31
    sget-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->NONE:Lcom/samsung/vekit/Common/Type/PVFocusType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->type:Lcom/samsung/vekit/Common/Type/PVFocusType;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->id:I

    .line 33
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    .line 34
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    .line 35
    return-void
.end method

.method public constructor <init>(JJJILcom/samsung/vekit/Common/Type/PVFocusType;III)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "duration"    # J
    .param p7, "mainObjectId"    # I
    .param p8, "type"    # Lcom/samsung/vekit/Common/Type/PVFocusType;
    .param p9, "id"    # I
    .param p10, "startFrameNum"    # I
    .param p11, "endFrameNum"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startTime:J

    .line 17
    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endTime:J

    .line 18
    iput-wide p5, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->duration:J

    .line 19
    iput p7, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->mainObjectId:I

    .line 20
    iput-object p8, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->type:Lcom/samsung/vekit/Common/Type/PVFocusType;

    .line 21
    iput p9, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->id:I

    .line 22
    iput p10, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    .line 23
    iput p11, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    .line 24
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->duration:J

    return-wide v0
.end method

.method public getEndFrameNum()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->id:I

    return v0
.end method

.method public getMainObjectId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->mainObjectId:I

    return v0
.end method

.method public getStartFrameNum()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startTime:J

    return-wide v0
.end method

.method public getType()Lcom/samsung/vekit/Common/Type/PVFocusType;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->type:Lcom/samsung/vekit/Common/Type/PVFocusType;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 58
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->duration:J

    .line 59
    return-void
.end method

.method public setEndFrameNum(I)V
    .locals 1
    .param p1, "endFrameId"    # I

    .line 87
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endFrameNum:I

    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .line 50
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->endTime:J

    .line 51
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 83
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->id:I

    return-void
.end method

.method public setMainObjectId(I)V
    .locals 0
    .param p1, "mainObjectId"    # I

    .line 66
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->mainObjectId:I

    .line 67
    return-void
.end method

.method public setStartFrameNum(I)V
    .locals 1
    .param p1, "startFrameId"    # I

    .line 79
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startFrameNum:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 42
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->startTime:J

    .line 43
    return-void
.end method

.method public setType(Lcom/samsung/vekit/Common/Type/PVFocusType;)V
    .locals 0
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/PVFocusType;

    .line 74
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVKeyFrame;->type:Lcom/samsung/vekit/Common/Type/PVFocusType;

    .line 75
    return-void
.end method
