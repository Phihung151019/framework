.class public abstract Lcom/samsung/android/transcode/core/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;,
        Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;,
        Lcom/samsung/android/transcode/core/Encode$ConfigType;,
        Lcom/samsung/android/transcode/core/Encode$CodecType;
    }
.end annotation


# static fields
.field protected static final INVALID_OUTPUT_BIT_RATE:I = -0x1

.field private static final ONE_BILLION:J = 0x3b9aca00L

.field protected static final ORIENTATION_0:I = 0x0

.field protected static final ORIENTATION_180:I = 0xb4

.field protected static final ORIENTATION_270:I = 0x10e

.field protected static final ORIENTATION_90:I = 0x5a

.field protected static final SUPER_SLOW_SPEED_CANCEL:I = 0x9

.field private static final VERSION:Ljava/lang/String; = "4.74"


# instance fields
.field protected m2ndTimeEncoding:Z

.field protected mAudioTrackIndex:I

.field protected mCodecError:Z

.field protected mConvert:Z

.field protected mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

.field protected mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

.field protected mFramesSkipInterval:I

.field protected mHDRType:I

.field protected mInputAudioDecoder:Landroid/media/MediaCodec;

.field protected mInputVideoDecoder:Landroid/media/MediaCodec;

.field protected mIsHLG:Z

.field protected mKeepSourceFrameRate:Z

.field protected mMMSMode:Z

.field protected mMuxer:Landroid/media/MediaMuxer;

.field protected mMuxerStarted:Z

.field protected mOriginalAudioChannelCount:I

.field protected mOutputAudioAACProfile:I

.field protected mOutputAudioBitRate:I

.field protected mOutputAudioChannelCount:I

.field protected mOutputAudioEncoder:Landroid/media/MediaCodec;

.field protected mOutputAudioMimeType:Ljava/lang/String;

.field protected mOutputAudioMute:Z

.field protected mOutputAudioSampleRateHZ:I

.field protected mOutputFilePath:Ljava/lang/String;

.field protected mOutputFormat:I

.field protected mOutputHeight:I

.field protected mOutputMaxSizeKB:J

.field protected mOutputVideoBitRate:I

.field protected mOutputVideoEncoder:Landroid/media/MediaCodec;

.field protected mOutputVideoFrameRate:I

.field protected mOutputVideoIFrameInterval:I

.field protected mOutputVideoMimeType:Ljava/lang/String;

.field protected mOutputVideoTargetFrameRate:I

.field protected mOutputWidth:I

.field protected volatile mPrepared:Z

.field protected mProgress:I

.field protected mRewritable:Z

.field protected mSMConvert:Z

.field protected mSMEncode:Z

.field protected mSizeFraction:F

.field protected mSkipFrames:Z

.field protected mSourceFrameRate:I

.field protected volatile mUserStop:Z

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    .line 35
    const-string v1, "video/avc"

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    .line 37
    const/16 v2, 0x1e

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    .line 38
    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    .line 39
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoTargetFrameRate:I

    .line 42
    const-string v3, "audio/mp4a-latm"

    iput-object v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    .line 43
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    .line 44
    const v4, 0x1f400

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    .line 45
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    .line 46
    const v3, 0xac44

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMute:Z

    .line 60
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 61
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mPrepared:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mCodecError:Z

    .line 69
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    .line 70
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mRewritable:Z

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    .line 76
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mKeepSourceFrameRate:Z

    .line 80
    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mSourceFrameRate:I

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    .line 83
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mIsHLG:Z

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    .line 90
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mProgress:I

    return-void
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 2

    .line 402
    const-string v0, "TranscodeLib"

    const-string v1, "getLibraryVersion  : Transcode Framework v.4.74"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, "4.74"

    return-object v0
.end method

.method private prepareListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    .line 336
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 337
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 338
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mProgress:I

    .line 340
    const-string v0, "TranscodeLib"

    const-string v1, "starting to encode"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onStarted()V

    .line 347
    :cond_1
    return-void
.end method

.method private printVersionInfo()V
    .locals 2

    .line 398
    const-string v0, "TranscodeLib"

    const-string v1, "Transcode Framework v.4.74"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private releaseListener()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    const/4 v1, 0x0

    const-string v2, "calling onCompleted"

    const-string v3, "user stopped. Not calling onCompleted"

    const-string v4, "TranscodeLib"

    if-eqz v0, :cond_1

    .line 351
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v0, :cond_0

    .line 352
    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v0, :cond_3

    .line 360
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v0, :cond_2

    .line 361
    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onCompleted()V

    goto :goto_1

    .line 364
    :cond_2
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_1
    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 368
    :cond_3
    return-void
.end method


# virtual methods
.method protected computePresentationTimeNsec(I)J
    .locals 4
    .param p1, "frameIndex"    # I

    .line 265
    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public encode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->setupAndExecuteEncode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 170
    nop

    .line 171
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 173
    .local v1, "size":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generated output file size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v3, :cond_4

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    long-to-double v5, v1

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    div-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    long-to-double v7, v7

    cmpl-double v3, v5, v7

    if-lez v3, :cond_4

    instance-of v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;

    if-eqz v3, :cond_4

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not clean up file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    long-to-float v5, v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x44800000    # 1024.0f

    mul-float/2addr v3, v5

    long-to-float v5, v1

    div-float/2addr v3, v5

    const v5, 0x3d4ccccd    # 0.05f

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file size("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") exceeded the expected("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") size limit. new fraction :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    .line 185
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    .line 186
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 187
    iput v7, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto :goto_0

    .line 189
    :cond_1
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    mul-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    .line 192
    :goto_0
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v7, 0xb0

    if-ne v6, v7, :cond_2

    .line 193
    const/16 v6, 0x80

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    .line 194
    const/16 v6, 0x60

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    .line 198
    :cond_2
    :try_start_1
    const-string v6, "2nd time starting encoder preparation"

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    .line 201
    const-string v5, "2nd time encoder preparation done."

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v5, Landroid/media/MediaMuxer;

    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v5, v6, v7}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 204
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    .line 205
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 206
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 208
    const-string v3, "2nd time starting to encode"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    if-eqz v3, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMEncoding()V

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    .line 215
    :goto_1
    const-string v3, "2nd time encoding finished."

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 218
    nop

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2nd generated output size : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    goto :goto_2

    .line 217
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 218
    throw v3

    .line 224
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->releaseListener()V

    .line 225
    return-void

    .line 169
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "size":J
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 170
    throw v0
.end method

.method protected isHDR10()Z
    .locals 3

    .line 407
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected isHDR10Plus()Z
    .locals 2

    .line 412
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isHLG()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mIsHLG:Z

    return v0
.end method

.method protected abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract prepareForRewrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract release()V
.end method

.method public rewrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    const-string v0, "TranscodeLib"

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    .line 234
    :try_start_0
    const-string v1, "starting Rewrite prepartion"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareForRewrite()V

    .line 236
    const-string v1, "Rewrite preparation done."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareListener()V

    .line 240
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mRewritable:Z

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startRewriting()V

    .line 246
    const-string v1, "Rewrite finished."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 249
    nop

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->releaseListener()V

    .line 251
    return-void

    .line 241
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t rewirte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/transcode/core/Encode;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/Encode;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 249
    throw v0
.end method

.method public setEncodeProgressListener(Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 258
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 259
    return-void
.end method

.method public setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V
    .locals 0
    .param p1, "updateListener"    # Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 254
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 255
    return-void
.end method

.method public setupAndExecuteEncode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareListener()V

    .line 136
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "starting encoder preparation  - SlowMo"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareForRewrite()V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting encoder preparation  mSMEncode  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mConvert : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    .line 145
    :goto_0
    const-string v0, "encoder preparation done."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mCodecError:Z

    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMRewriting()V

    goto :goto_1

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMEncoding()V

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    .line 157
    :goto_1
    const-string v0, "encoding finished."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method protected abstract startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startRewriting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startSMEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startSMRewriting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
