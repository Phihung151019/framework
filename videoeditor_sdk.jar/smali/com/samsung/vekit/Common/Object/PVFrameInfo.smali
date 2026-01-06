.class public Lcom/samsung/vekit/Common/Object/PVFrameInfo;
.super Ljava/lang/Object;
.source "PVFrameInfo.java"


# instance fields
.field blurLevel:I

.field detectionInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVDetectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field deviceRoll:I

.field focusX:I

.field focusY:I

.field mainObjectId:I

.field objectCount:I

.field timestamp:J

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->version:Ljava/lang/String;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->timestamp:J

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->deviceRoll:I

    .line 22
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusX:I

    .line 23
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusY:I

    .line 24
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->objectCount:I

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->mainObjectId:I

    .line 26
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->blurLevel:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIIIIILjava/util/ArrayList;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "deviceRoll"    # I
    .param p5, "focusX"    # I
    .param p6, "focusY"    # I
    .param p7, "objectCount"    # I
    .param p8, "mainObjectId"    # I
    .param p9, "blurLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIIIIII",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVDetectionInfo;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p10, "detectionInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/PVDetectionInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->version:Ljava/lang/String;

    .line 33
    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->timestamp:J

    .line 34
    iput p4, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->deviceRoll:I

    .line 35
    iput p5, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusX:I

    .line 36
    iput p6, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusY:I

    .line 37
    iput p7, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->objectCount:I

    .line 38
    iput p8, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->mainObjectId:I

    .line 39
    iput p9, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->blurLevel:I

    .line 40
    iput-object p10, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public findDetectionInfo(I)Lcom/samsung/vekit/Common/Object/PVDetectionInfo;
    .locals 3
    .param p1, "id"    # I

    .line 113
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;

    .line 114
    .local v1, "info":Lcom/samsung/vekit/Common/Object/PVDetectionInfo;
    iget v2, v1, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    if-ne v2, p1, :cond_0

    .line 115
    return-object v1

    .line 116
    .end local v1    # "info":Lcom/samsung/vekit/Common/Object/PVDetectionInfo;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBlurLevel()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->blurLevel:I

    return v0
.end method

.method public getDetectionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/PVDetectionInfo;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRoll()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->deviceRoll:I

    return v0
.end method

.method public getFocusX()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusX:I

    return v0
.end method

.method public getFocusY()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusY:I

    return v0
.end method

.method public getMainObjectId()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->mainObjectId:I

    return v0
.end method

.method public getObjectCount()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->objectCount:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->timestamp:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBlurLevel(I)V
    .locals 0
    .param p1, "blurLevel"    # I

    .line 101
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->blurLevel:I

    return-void
.end method

.method public setDetectionInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVDetectionInfo;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "detectionInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/PVDetectionInfo;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->detectionInfoList:Ljava/util/ArrayList;

    .line 110
    return-void
.end method

.method public setDeviceRoll(I)V
    .locals 0
    .param p1, "deviceRoll"    # I

    .line 64
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->deviceRoll:I

    .line 65
    return-void
.end method

.method public setFocusX(I)V
    .locals 0
    .param p1, "focusX"    # I

    .line 72
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusX:I

    .line 73
    return-void
.end method

.method public setFocusY(I)V
    .locals 0
    .param p1, "focusY"    # I

    .line 80
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->focusY:I

    .line 81
    return-void
.end method

.method public setMainObjectId(I)V
    .locals 0
    .param p1, "mainObjectId"    # I

    .line 96
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->mainObjectId:I

    .line 97
    return-void
.end method

.method public setObjectCount(I)V
    .locals 0
    .param p1, "objectCount"    # I

    .line 88
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->objectCount:I

    .line 89
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 56
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->timestamp:J

    .line 57
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->version:Ljava/lang/String;

    .line 49
    return-void
.end method
