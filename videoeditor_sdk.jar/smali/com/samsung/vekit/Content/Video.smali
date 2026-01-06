.class public Lcom/samsung/vekit/Content/Video;
.super Lcom/samsung/vekit/Content/Content;
.source "Video.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/AudioSegmentInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Content/Content;",
        "Lcom/samsung/vekit/Interface/AudioSegmentInterface<",
        "Lcom/samsung/vekit/Content/Video;",
        ">;"
    }
.end annotation


# instance fields
.field private audioSegmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation
.end field

.field private fileLength:J

.field private fileOffset:J

.field protected filePath:Ljava/lang/String;

.field private frameRate:I

.field protected is360:Z

.field private isSlowMotion:Z

.field private orientation:I

.field private recordingMode:I

.field private slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    .line 18
    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    .line 20
    iput v0, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    .line 21
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Content/Video;->fileOffset:J

    .line 24
    iput-wide v0, p0, Lcom/samsung/vekit/Content/Video;->fileLength:J

    .line 28
    return-void
.end method


# virtual methods
.method public addAudioSegment(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "audioSegment"    # Lcom/samsung/vekit/Common/Object/AudioSegment;

    .line 124
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public clearAudioSegment()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 135
    return-void
.end method

.method public getAudioSegment(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/AudioSegment;

    return-object v0
.end method

.method public getAudioSegmentMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAudioSegmentMapSize()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getFileLength()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/samsung/vekit/Content/Video;->fileLength:J

    return-wide v0
.end method

.method public getFileOffset()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/samsung/vekit/Content/Video;->fileOffset:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/samsung/vekit/Content/Video;->orientation:I

    return v0
.end method

.method public getRecordingMode()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    return v0
.end method

.method public getSlowVideoInfo()Lcom/samsung/vekit/Common/Object/SlowVideoInfo;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;

    return-object v0
.end method

.method public is360()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    return v0
.end method

.method public isSlowMotion()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    return v0
.end method

.method public removeAudioSegment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public set360(Z)Lcom/samsung/vekit/Content/Video;
    .locals 0
    .param p1, "is360"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/samsung/vekit/Content/Video;->is360:Z

    .line 41
    return-object p0
.end method

.method public setAudioSegmentMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "audioSegmentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Content/Video;->audioSegmentMap:Ljava/util/HashMap;

    .line 115
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Video;->setDuration(J)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Content/Video;
    .locals 1
    .param p1, "duration"    # J

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public setFileLength(J)Lcom/samsung/vekit/Content/Video;
    .locals 0
    .param p1, "fileLength"    # J

    .line 143
    iput-wide p1, p0, Lcom/samsung/vekit/Content/Video;->fileLength:J

    .line 144
    return-object p0
.end method

.method public setFileOffset(J)Lcom/samsung/vekit/Content/Video;
    .locals 0
    .param p1, "fileOffset"    # J

    .line 147
    iput-wide p1, p0, Lcom/samsung/vekit/Content/Video;->fileOffset:J

    .line 148
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/samsung/vekit/Content/Video;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/vekit/Content/Video;->filePath:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public setFrameRate(I)Lcom/samsung/vekit/Content/Video;
    .locals 0
    .param p1, "frameRate"    # I

    .line 103
    iput p1, p0, Lcom/samsung/vekit/Content/Video;->frameRate:I

    .line 104
    return-object p0
.end method

.method public bridge synthetic setHeight(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Video;->setHeight(I)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)Lcom/samsung/vekit/Content/Video;
    .locals 1
    .param p1, "height"    # I

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setHeight(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 68
    iput p1, p0, Lcom/samsung/vekit/Content/Video;->orientation:I

    .line 69
    return-void
.end method

.method public setRecordingMode(I)Lcom/samsung/vekit/Content/Video;
    .locals 0
    .param p1, "recordingMode"    # I

    .line 94
    iput p1, p0, Lcom/samsung/vekit/Content/Video;->recordingMode:I

    .line 95
    return-object p0
.end method

.method public setSlowVideoInfo(Lcom/samsung/vekit/Common/Object/SlowVideoInfo;)Lcom/samsung/vekit/Content/Video;
    .locals 0
    .param p1, "slowVideoInfo"    # Lcom/samsung/vekit/Common/Object/SlowVideoInfo;

    .line 72
    iput-object p1, p0, Lcom/samsung/vekit/Content/Video;->slowVideoInfo:Lcom/samsung/vekit/Common/Object/SlowVideoInfo;

    .line 73
    return-object p0
.end method

.method public bridge synthetic setWidth(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Video;->setWidth(I)Lcom/samsung/vekit/Content/Video;

    move-result-object p1

    return-object p1
.end method

.method public setWidth(I)Lcom/samsung/vekit/Content/Video;
    .locals 1
    .param p1, "width"    # I

    .line 50
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setWidth(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    return-object v0
.end method

.method public setisSlowMotion(Z)Lcom/samsung/vekit/Content/Video;
    .locals 0
    .param p1, "isSlowMotion"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/samsung/vekit/Content/Video;->isSlowMotion:Z

    .line 82
    return-object p0
.end method
