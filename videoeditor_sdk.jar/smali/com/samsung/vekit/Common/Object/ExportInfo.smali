.class public Lcom/samsung/vekit/Common/Object/ExportInfo;
.super Ljava/lang/Object;
.source "ExportInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bFrameMode:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

.field private bitDepth:I

.field private bitRate:I

.field private contentColorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

.field private contentOrigin:Lcom/samsung/vekit/Common/Type/ContentOriginType;

.field private fd:Ljava/io/FileDescriptor;

.field private frameRate:I

.field private height:I

.field private orientation:I

.field private preserveAudio:Z

.field private recordingMode:I

.field private referenceInfo:Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

.field private rewriteMode:Z

.field private videocodectype:Lcom/samsung/vekit/Common/Type/VideoCodecType;

.field private width:I


# direct methods
.method public constructor <init>(IILjava/io/FileDescriptor;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fd"    # Ljava/io/FileDescriptor;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "ExportInfo"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->TAG:Ljava/lang/String;

    .line 16
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitDepth:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->frameRate:I

    .line 18
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->orientation:I

    .line 19
    sget-object v1, Lcom/samsung/vekit/Common/Type/VideoCodecType;->AVC:Lcom/samsung/vekit/Common/Type/VideoCodecType;

    iput-object v1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->videocodectype:Lcom/samsung/vekit/Common/Type/VideoCodecType;

    .line 20
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->recordingMode:I

    .line 21
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitRate:I

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->preserveAudio:Z

    .line 23
    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentColorType;->SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    iput-object v1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentColorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 24
    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->rewriteMode:Z

    .line 25
    sget-object v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->AUTO:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bFrameMode:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    .line 26
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;->UNKNOWN:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentOrigin:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    .line 27
    new-instance v0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->referenceInfo:Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    .line 31
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->width:I

    .line 32
    iput p2, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->height:I

    .line 33
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->fd:Ljava/io/FileDescriptor;

    .line 34
    return-void
.end method


# virtual methods
.method public getBFrameMode()Lcom/samsung/vekit/Common/Type/FrameEncodeType;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bFrameMode:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    return-object v0
.end method

.method public getBitDepth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitDepth:I

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitRate:I

    return v0
.end method

.method public getContentColorType()Lcom/samsung/vekit/Common/Type/ContentColorType;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentColorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-object v0
.end method

.method public getContentOrigin()Lcom/samsung/vekit/Common/Type/ContentOriginType;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentOrigin:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    return-object v0
.end method

.method public getFd()Ljava/io/FileDescriptor;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->height:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->orientation:I

    return v0
.end method

.method public getPreserveAudio()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->preserveAudio:Z

    return v0
.end method

.method public getRecordingMode()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->recordingMode:I

    return v0
.end method

.method public getReferenceInfo()Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->referenceInfo:Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    return-object v0
.end method

.method public getRewriteMode()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->rewriteMode:Z

    return v0
.end method

.method public getVideoCodecType()Lcom/samsung/vekit/Common/Type/VideoCodecType;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->videocodectype:Lcom/samsung/vekit/Common/Type/VideoCodecType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->width:I

    return v0
.end method

.method public setBFrameMode(Lcom/samsung/vekit/Common/Type/FrameEncodeType;)V
    .locals 0
    .param p1, "bFrameMode"    # Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    .line 114
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bFrameMode:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    .line 115
    return-void
.end method

.method public setBitDepth(I)V
    .locals 0
    .param p1, "bitDepth"    # I

    .line 66
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitDepth:I

    .line 67
    return-void
.end method

.method public setBitRate(I)V
    .locals 0
    .param p1, "bitRate"    # I

    .line 85
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->bitRate:I

    return-void
.end method

.method public setContentColorType(Lcom/samsung/vekit/Common/Type/ContentColorType;)V
    .locals 0
    .param p1, "contentColorType"    # Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 94
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentColorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 95
    return-void
.end method

.method public setContentOrigin(Lcom/samsung/vekit/Common/Type/ContentOriginType;)V
    .locals 0
    .param p1, "contentOrigin"    # Lcom/samsung/vekit/Common/Type/ContentOriginType;

    .line 118
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->contentOrigin:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    .line 119
    return-void
.end method

.method public setFd(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 62
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->fd:Ljava/io/FileDescriptor;

    .line 63
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0
    .param p1, "frameRate"    # I

    .line 70
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->frameRate:I

    .line 71
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 58
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->height:I

    .line 59
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 74
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->orientation:I

    .line 75
    return-void
.end method

.method public setPreserveAudio(Z)V
    .locals 0
    .param p1, "preserveAudio"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->preserveAudio:Z

    return-void
.end method

.method public setRecordingMode(I)V
    .locals 0
    .param p1, "recordingMode"    # I

    .line 82
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->recordingMode:I

    .line 83
    return-void
.end method

.method public setReferenceInfo(Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;)V
    .locals 0
    .param p1, "referenceInfo"    # Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    .line 110
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->referenceInfo:Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;

    .line 111
    return-void
.end method

.method public setRewriteMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->rewriteMode:Z

    .line 42
    return-void
.end method

.method public setVideoCodecType(Lcom/samsung/vekit/Common/Type/VideoCodecType;)V
    .locals 0
    .param p1, "videocodectype"    # Lcom/samsung/vekit/Common/Type/VideoCodecType;

    .line 78
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->videocodectype:Lcom/samsung/vekit/Common/Type/VideoCodecType;

    .line 79
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 54
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ExportInfo;->width:I

    .line 55
    return-void
.end method
