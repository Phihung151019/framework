.class public abstract Lcom/samsung/android/transcode/core/EncodeBase;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;
    }
.end annotation


# static fields
.field protected static final ENCODER_LOOP_COUNT:I = 0x3

.field protected static final HAL_PIXEL_FORMAT_EXYNOS_YCbCr_420_SP_M:I = 0x105

.field protected static final IMAGE_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final KEY_ERROR_TYPE:Ljava/lang/String; = "error-type"

.field protected static final KEY_MUXER_AUTHOR:Ljava/lang/String; = "param-meta-author"

.field protected static final KEY_MUXER_MODEL_NAME:Ljava/lang/String; = "param-meta-brand-model-name"

.field protected static final KEY_MUXER_RECORDINGMODE:Ljava/lang/String; = "param-meta-recording-mode"

.field protected static final KEY_MUXER_TRANSCODING:Ljava/lang/String; = "param-meta-transcoding"

.field protected static final OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field protected static final REWRITE_AUDIO_BUFFER_SIZE:I = 0x20000

.field protected static final TEMP_AUDIO_BUF_SIZE:I = 0x1000

.field protected static final TIMEOUT_USEC:J = 0x2710L

.field protected static mCreationTime:[B

.field protected static mInputAudioinfo:Landroid/media/MediaFormat;

.field protected static mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

.field protected static mInputVideoinfo:Landroid/media/MediaFormat;

.field protected static volatile sNAACHandle:J

.field protected static volatile sSRCHandle:J

.field protected static volatile sVSPHandle:J


# instance fields
.field protected formatupdated:Z

.field protected mAsyncCodecReleased:[Z

.field protected mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

.field protected mAudioDecoderDone:Z

.field protected mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

.field protected mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field protected mAudioEncoderDone:Z

.field protected mAudioEncoderInputBufferCount:I

.field protected mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

.field protected mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field protected mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

.field protected mAudioExtractor:Landroid/media/MediaExtractor;

.field protected mAudioExtractorDone:Z

.field protected mAudioLoopCount:I

.field protected mAudioProgressTime:J

.field protected mAudioWaitFrame:Z

.field protected mAuthor:I

.field protected mContext:Landroid/content/Context;

.field protected mCopyAudio:Z

.field protected mDecAudio:Ljava/nio/ByteBuffer;

.field protected mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

.field protected mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

.field protected volatile mEncoding:Z

.field protected mExportRecordingMode:I

.field protected mFramesCount:I

.field protected mInputFilePath:Ljava/lang/String;

.field protected mInputOrientationDegrees:I

.field protected mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field protected mInputUri:Landroid/net/Uri;

.field protected mIs360Video:Z

.field protected mIsDrop:Z

.field protected mLastAudioSampleWrittenTime:J

.field protected mLayer2Count:I

.field protected mModifiedAudiotime:J

.field protected mModifiedVideotime:J

.field protected mNaccTime:J

.field protected mNumOfSVCLayers:I

.field protected mOriginTrimEndUs:J

.field protected mOriginTrimStartUs:J

.field protected mOriginalduration:J

.field protected mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

.field protected mPausedVideoUs:J

.field protected mPendingAudioDecoderOutputBufferIndex:I

.field protected mRecordingFps:I

.field protected mRecordingMode:I

.field protected mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation
.end field

.field protected mRotation:I

.field protected mSEFVideo:Z

.field protected mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

.field protected mSkippedFramesCount:I

.field protected mTempAudioBuffer:[B

.field protected mTempAudioEncSize:I

.field protected mTempAudioLength:I

.field protected mTempAudioOffset:I

.field protected mTimescale:F

.field protected mTrimAudioEndUs:J

.field protected mTrimAudioStartUs:J

.field protected mTrimVideoEndUs:J

.field protected mTrimVideoStartUs:J

.field protected mUpdateCreationTime:Z

.field protected mUseUri:Z

.field protected mVideoDecoderDone:Z

.field protected mVideoEncoderDone:Z

.field protected mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

.field protected mVideoExtractor:Landroid/media/MediaExtractor;

.field protected mVideoFramesWritten:I

.field protected mVidioProgressTime:J

.field protected mkeepAudioFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    .line 49
    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    .line 50
    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    .line 51
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    .line 66
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 67
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRotation:I

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 71
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 72
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    .line 100
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 105
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 106
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 111
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 112
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 123
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 127
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    .line 128
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 135
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z

    .line 137
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 149
    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    .line 152
    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/transcode/core/EncodeBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaCodec$BufferInfo;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/transcode/core/EncodeBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoDecoderAvailableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaCodec$BufferInfo;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private checkAudioChannelCount()Z
    .locals 5

    .line 2660
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-lt v0, v1, :cond_0

    .line 2661
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    .line 2662
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2663
    return v2

    .line 2664
    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-le v0, v1, :cond_2

    .line 2665
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/4 v3, 0x6

    const-string v4, "TranscodeLib"

    if-ne v0, v3, :cond_1

    .line 2666
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    .line 2667
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2668
    const-string v0, "Audio need down mixing "

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    return v2

    .line 2671
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2673
    return v0

    .line 2676
    :cond_2
    return v2
.end method

.method private checkAudioDecoderBufferIndex(I[Ljava/nio/ByteBuffer;)Z
    .locals 12
    .param p1, "audioDecoderInputBufferIndex"    # I
    .param p2, "audioDecoderInputBuffers"    # [Ljava/nio/ByteBuffer;

    .line 2727
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 2728
    const-string v2, "audio decoder input try again later while preparing audio codec"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    return v1

    .line 2731
    :cond_0
    aget-object v3, p2, p1

    .line 2733
    .local v3, "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v3, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 2734
    .local v8, "size":I
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    .line 2735
    .local v9, "presentationTimeUs":J
    if-lez v8, :cond_1

    .line 2736
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 2737
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    .line 2736
    const/4 v7, 0x0

    move v6, p1

    .end local p1    # "audioDecoderInputBufferIndex":I
    .local v6, "audioDecoderInputBufferIndex":I
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 2738
    .end local v6    # "audioDecoderInputBufferIndex":I
    .restart local p1    # "audioDecoderInputBufferIndex":I
    :cond_1
    move v6, p1

    .end local p1    # "audioDecoderInputBufferIndex":I
    .restart local v6    # "audioDecoderInputBufferIndex":I
    if-ne v8, v2, :cond_2

    .line 2739
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2740
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 2741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio buffer is empty, size :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    return v1

    .line 2744
    :cond_2
    :goto_0
    return v1
.end method

.method private checkAudioDecoderEOS(J)V
    .locals 12
    .param p1, "seektime"    # J

    .line 889
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->getRegionNumber(J)I

    move-result v0

    .line 890
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seekto region : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 891
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RegionList.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 892
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 890
    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v6, 0x0

    const-string v7, "audio decoder: EOS"

    if-ge v0, v1, :cond_1

    .line 894
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 896
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v10, v1

    mul-long/2addr v10, v4

    cmp-long v1, v8, v10

    if-gez v1, :cond_2

    .line 897
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 898
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid File!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 903
    :cond_1
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 906
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v1, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 907
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 908
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 909
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 911
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 913
    :cond_3
    return-void
.end method

.method private checkAudioDecoderEOSNotWaitFrameCase(J)Z
    .locals 16
    .param p1, "presentationTime"    # J

    .line 1153
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio decoder: EOS  mTempAudioLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1156
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    const-string v4, "audio encoder input buffer try again later"

    const/4 v5, -0x1

    const-wide/16 v6, 0x2710

    const/4 v8, 0x0

    if-lez v3, :cond_1

    .line 1157
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    .line 1158
    .local v10, "audioEncoderInputBufferIndex":I
    if-ne v10, v5, :cond_0

    .line 1159
    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    return v8

    .line 1162
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v10

    .line 1164
    .local v3, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v3, v9, v11, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1165
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enc Last frame queueInputBuffer size:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", presentationTime :"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v13, p1

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    const/4 v15, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1170
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v9, v1

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1174
    .end local v3    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "audioEncoderInputBufferIndex":I
    :cond_1
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    .line 1175
    .restart local v10    # "audioEncoderInputBufferIndex":I
    if-ne v10, v5, :cond_2

    .line 1176
    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    return v8

    .line 1179
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v10

    .line 1180
    .restart local v3    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    invoke-virtual {v3, v4, v5, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enc EOS queueInputBuffer  time :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1188
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1190
    .end local v3    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    return v1
.end method

.method private checkAudioEncoderOutputBufferIndex()Z
    .locals 10

    .line 624
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 625
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 626
    .local v0, "audioEncoderOutputBufferIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "TranscodeLib"

    if-ne v0, v1, :cond_0

    .line 627
    const-string v1, "audio encoder output buffer try again later"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return v2

    .line 629
    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 630
    const-string v1, "audio encoder: output buffers changed"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 632
    return v2

    .line 633
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio encoder: output format changed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return v2

    .line 638
    :cond_2
    if-gez v0, :cond_3

    .line 639
    const-string v1, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return v2

    .line 642
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    .line 645
    .local v1, "audioEncoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 646
    const-string v4, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 649
    return v2

    .line 652
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio encoder writing sample data to muxer  time: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5

    .line 658
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 659
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v6, v1, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 661
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    invoke-virtual {p0, v6, v7, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 662
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    goto :goto_0

    .line 664
    :cond_5
    const-string v4, "Audio time stamps are not in increasing order."

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    .line 668
    const-string v4, "saw input EOS: Audio"

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 671
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 672
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 673
    return v2
.end method

.method private checkAudioFollowHandle(J)V
    .locals 7
    .param p1, "seektime"    # J

    .line 1121
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->getTimescale(JI)F

    move-result v0

    .line 1122
    .local v0, "temptimescale":F
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    sget-wide v1, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 1125
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 1126
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v5, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    invoke-virtual {v1, v5, v6, v2}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPSetPar(JF)V

    .line 1128
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-wide v1, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2

    .line 1129
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 1130
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initAudioSlowV2()V

    .line 1132
    :cond_2
    return-void
.end method

.method private checkAudioLoopCount(J)V
    .locals 4
    .param p1, "seektime"    # J

    .line 1194
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1196
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek to next frame\taudioLoopCount :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", seektime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TranscodeLib"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1202
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1204
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 1206
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_2
    return-void
.end method

.method private checkBitrateMode()Z
    .locals 4

    .line 2998
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v0, v1

    const v1, 0x12c00

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v0, v1

    const v1, 0x4b000

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkCopyAudio(Landroid/media/MediaFormat;)Z
    .locals 5
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2696
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 2697
    const-string v0, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    return v1

    .line 2700
    :cond_0
    const-string v0, "error-type"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2701
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 2702
    .local v0, "error":I
    if-eqz v0, :cond_1

    .line 2703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio codec error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    return v1

    .line 2708
    .end local v0    # "error":I
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2709
    const-string v0, "Audio codec type is unsupported. Ignore audio track."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    return v1

    .line 2712
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private checkDecoderOutputBufferIndex(ILandroid/media/MediaCodec$BufferInfo;)Z
    .locals 4
    .param p1, "decoderOutputBufferIndex"    # I
    .param p2, "videoDecoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1582
    const/4 v0, -0x1

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 1583
    const-string v0, "no video decoder output buffer"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    return v2

    .line 1586
    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 1587
    const-string v0, "video decoder: output buffers changed"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    return v2

    .line 1590
    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video decoder: codec info format changed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 1592
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1591
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    return v2

    .line 1596
    :cond_2
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1597
    const-string v0, "video decoder: codec config buffer"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1599
    return v2

    .line 1601
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private checkEncoderOutputBufferIndex(I)Z
    .locals 5
    .param p1, "encoderOutputBufferIndex"    # I

    .line 1502
    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-ne p1, v0, :cond_0

    .line 1503
    const-string v0, "no video encoder output buffer"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-wide/16 v3, 0xa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    goto :goto_0

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleep interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 1510
    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 1511
    const-string v0, "video encoder: output buffers changed"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    return v1

    .line 1513
    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video encoder: output format changed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 1515
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    if-gez v0, :cond_2

    .line 1521
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 1522
    return v1

    .line 1518
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Video encoder output format changed after muxer has started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_3
    if-gez p1, :cond_4

    .line 1524
    const-string v0, "Unexpected result from video encoder dequeue output format."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    return v1

    .line 1527
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private checkLayerCondition(III)Z
    .locals 2
    .param p1, "layerNum"    # I
    .param p2, "maxLayerNum"    # I
    .param p3, "conditionNum"    # I

    .line 1683
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_1

    .line 1684
    sub-int v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 1685
    const/4 v1, 0x1

    return v1

    .line 1683
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1688
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkOutputVideoFrameRate()V
    .locals 5

    .line 2475
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 2476
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lt v0, v3, :cond_0

    .line 2477
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_0

    .line 2479
    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2482
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_1

    .line 2483
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    .line 2486
    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2488
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSourceFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOutputVideoTargetFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOutputVideoFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    return-void

    .line 2494
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-eqz v0, :cond_3

    .line 2495
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2498
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    if-lt v0, v3, :cond_8

    .line 2499
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-ne v0, v4, :cond_4

    goto :goto_1

    .line 2512
    :cond_4
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2514
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_7

    .line 2515
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_2

    .line 2501
    :cond_5
    :goto_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    const/16 v1, 0x82

    if-ge v0, v1, :cond_6

    .line 2503
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2504
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_2

    .line 2506
    :cond_6
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2507
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_7

    .line 2508
    const/16 v0, 0x1e

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2518
    :cond_7
    :goto_2
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_a

    .line 2519
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    goto :goto_3

    .line 2522
    :cond_8
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lez v0, :cond_a

    .line 2523
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->m2ndTimeEncoding:Z

    if-eqz v0, :cond_9

    .line 2524
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m2ndTimeEncoding case mOutputVideoFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2528
    :cond_9
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2532
    :cond_a
    :goto_3
    return-void
.end method

.method private checkPendingAudioDecoderBufferIndex(ILjava/lang/String;)Z
    .locals 5
    .param p1, "audioDecoderOutputBufferIndex"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 2750
    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-ne p1, v0, :cond_0

    .line 2751
    const-string v0, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    return v1

    .line 2754
    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 2755
    const-string v0, "audio decoder: output buffers changed "

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    return v1

    .line 2757
    :cond_1
    const/4 v0, -0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_3

    .line 2758
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 2759
    const-string v4, "sample-rate"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2760
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 2761
    const-string v4, "channel-count"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2763
    invoke-direct {p0, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->isDolbyAudioCodec(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2764
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setStereoAudioChannelForDolbyAudioCodec()V

    .line 2767
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",ChannelCount"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 2770
    return v1

    .line 2771
    :cond_3
    if-gez p1, :cond_4

    .line 2772
    const-string v0, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    return v1

    .line 2775
    :cond_4
    return v3
.end method

.method private checkRetDropFastMotion(ZIIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z
    .locals 5
    .param p1, "retDrop"    # Z
    .param p2, "recordingmode"    # I
    .param p3, "recordingFps"    # I
    .param p4, "layernum"    # I
    .param p5, "maxlayernum"    # I
    .param p6, "playSpeed"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1713
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v0

    const-string v1, "ProcSVCLayerDrop Should not be here!!!"

    const-string v2, "TranscodeLib"

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 1714
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p6}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 1731
    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    goto :goto_0

    .line 1726
    :pswitch_0
    invoke-direct {p0, p4, p5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1727
    const/4 p1, 0x1

    goto :goto_0

    .line 1720
    :pswitch_1
    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_1

    .line 1721
    const/4 p1, 0x1

    goto :goto_0

    .line 1717
    :pswitch_2
    goto :goto_0

    .line 1735
    :cond_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p6}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 1769
    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1764
    :pswitch_3
    const/4 v0, 0x5

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1765
    const/4 p1, 0x1

    goto :goto_0

    .line 1758
    :pswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    const/4 p1, 0x1

    goto :goto_0

    .line 1752
    :pswitch_5
    const/4 v0, 0x3

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1753
    const/4 p1, 0x1

    goto :goto_0

    .line 1746
    :pswitch_6
    invoke-direct {p0, p4, p5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    const/4 p1, 0x1

    goto :goto_0

    .line 1740
    :pswitch_7
    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_1

    .line 1741
    const/4 p1, 0x1

    goto :goto_0

    .line 1737
    :pswitch_8
    nop

    .line 1773
    :cond_1
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private checkRetDropSlowMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z
    .locals 4
    .param p1, "retDrop"    # Z
    .param p2, "recordingframerate"    # I
    .param p3, "layernum"    # I
    .param p4, "maxlayernum"    # I
    .param p5, "playSpeed"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1780
    const/16 v0, 0xe6

    const-string v1, "TranscodeLib"

    if-lt p2, v0, :cond_2

    .line 1783
    const/4 v0, 0x3

    if-lez p3, :cond_0

    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1784
    const/4 p1, 0x1

    .line 1786
    :cond_0
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1805
    const-string v0, "ProcSVCLayerDrop Should not be here!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    goto :goto_0

    .line 1800
    :sswitch_0
    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1801
    const/4 p1, 0x0

    goto :goto_0

    .line 1795
    :sswitch_1
    add-int/lit8 v0, p4, -0x3

    if-eq p3, v0, :cond_1

    add-int/lit8 v0, p4, -0x2

    if-ne p3, v0, :cond_4

    .line 1796
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 1790
    :sswitch_2
    add-int/lit8 v0, p4, -0x3

    if-ne p3, v0, :cond_4

    .line 1791
    const/4 p1, 0x0

    goto :goto_0

    .line 1788
    :sswitch_3
    goto :goto_0

    .line 1808
    :cond_2
    const/16 v0, 0x6e

    if-lt p2, v0, :cond_4

    .line 1813
    const/4 v0, 0x2

    if-lez p3, :cond_3

    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1814
    const/4 p1, 0x1

    .line 1816
    :cond_3
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    .line 1831
    const-string v0, "ProcSVCLayerDrop Should not be here!!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1826
    :sswitch_4
    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1827
    const/4 p1, 0x0

    goto :goto_0

    .line 1820
    :sswitch_5
    add-int/lit8 v0, p4, -0x2

    if-ne p3, v0, :cond_4

    .line 1821
    const/4 p1, 0x0

    goto :goto_0

    .line 1818
    :sswitch_6
    nop

    .line 1835
    :cond_4
    :goto_0
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
    .end sparse-switch
.end method

.method private checkSendAudioFollowHandle(IJJJ)V
    .locals 4
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J
    .param p6, "temp_presentationTime"    # J

    .line 1302
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1303
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToMuxer(IJJ)V

    goto :goto_1

    .line 1304
    :cond_0
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1307
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToEncoder(IJJJ)V

    goto :goto_1

    .line 1305
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToEncoder_AudioSolution(IJJ)V

    .line 1309
    :goto_1
    return-void
.end method

.method private checkSilentRegion(J)I
    .locals 6
    .param p1, "timeUs"    # J

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSilentRegion  TimeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 412
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSilentRegion_SuperSlow Cancel Region:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return v0

    .line 410
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private checkSkipFrames(J)V
    .locals 3
    .param p1, "presentationTimeUs"    # J

    .line 1605
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input surface: skip this frame: presentationTimeUs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1609
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 1610
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    .line 1611
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    .line 1612
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    .line 1614
    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 1615
    return-void
.end method

.method private checkTempRadio(IIJ)V
    .locals 8
    .param p1, "audioEncInputBufIndex"    # I
    .param p2, "size"    # I
    .param p3, "tempPresentationTime"    # J

    .line 1135
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    .line 1136
    .local v0, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    if-lez v1, :cond_0

    .line 1137
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    div-int/2addr p2, v1

    move v4, p2

    goto :goto_0

    .line 1136
    :cond_0
    move v4, p2

    .line 1140
    .end local p2    # "size":I
    .local v4, "size":I
    :goto_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1141
    .local p2, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1142
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1143
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1144
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1145
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x0

    move v2, p1

    move-wide v5, p3

    .end local p1    # "audioEncInputBufIndex":I
    .end local p3    # "tempPresentationTime":J
    .local v2, "audioEncInputBufIndex":I
    .local v5, "tempPresentationTime":J
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1147
    iget p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1148
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1149
    iget p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1150
    return-void
.end method

.method private checkTimeDelta(JFZZI)J
    .locals 8
    .param p1, "timedelta"    # J
    .param p3, "timescale"    # F
    .param p4, "isSEFSlowMotion"    # Z
    .param p5, "isSEFFastMotion"    # Z
    .param p6, "i"    # I

    .line 1693
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz p4, :cond_0

    .line 1694
    long-to-double v4, p1

    float-to-double v6, p3

    sub-double/2addr v6, v0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1695
    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-long p1, v4

    goto :goto_0

    .line 1696
    :cond_0
    if-eqz p5, :cond_1

    .line 1697
    long-to-double v4, p1

    float-to-double v6, p3

    sub-double/2addr v0, v6

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1698
    invoke-interface {v2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    double-to-long p1, v4

    .line 1700
    :cond_1
    :goto_0
    return-wide p1
.end method

.method private createAudioHandle()V
    .locals 7

    .line 2904
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    if-eqz v0, :cond_4

    .line 2905
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2907
    :cond_0
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2908
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPCreate()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    .line 2910
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    const/16 v6, 0x10

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPInit(JII)V

    .line 2912
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2913
    const v0, 0xbb80

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2914
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 2915
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCCreate()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    .line 2918
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSMConvert:Z

    if-eqz v0, :cond_4

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 2919
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderInit(II)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    .line 2923
    :cond_4
    return-void
.end method

.method private createInputAudioDecoder(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "inputAudioFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2936
    const-string v0, "encoder-delay"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2937
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2939
    :cond_0
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2940
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 2941
    .local v0, "audioInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v0, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2942
    .end local v0    # "audioInfo":Landroid/media/MediaCodecInfo;
    goto :goto_0

    .line 2943
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2945
    :goto_0
    return-void
.end method

.method private getAudioDecoderOutput()V
    .locals 5

    .line 481
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_6

    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v0, :cond_6

    .line 485
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 486
    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 487
    .local v0, "audioDecoderOutputBufferIndex":I
    const-string v2, "TranscodeLib"

    if-ne v0, v1, :cond_1

    .line 488
    const-string v1, "audio decoder output buffer try again later while decoding"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 490
    const-string v1, "audio decoder: output buffers changed"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 492
    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 493
    const-string v1, "audio decoder: output format changed: "

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_3
    if-gez v0, :cond_4

    .line 495
    const-string v1, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 499
    const-string v1, "audio decoder: codec config buffer"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 502
    :cond_5
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 506
    .end local v0    # "audioDecoderOutputBufferIndex":I
    :cond_6
    :goto_0
    return-void
.end method

.method private getAudioDrop(JI)Z
    .locals 26
    .param p1, "sampleTime"    # J
    .param p3, "recordingMode"    # I

    .line 1038
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p1

    .line 1039
    .local v4, "tempSampleTime":J
    const-wide/16 v6, 0x0

    .line 1041
    .local v6, "timedelta":J
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 1042
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    if-eq v3, v9, :cond_4

    if-ne v3, v8, :cond_0

    goto/16 :goto_1

    .line 1070
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 1071
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v12, v9

    mul-long/2addr v12, v10

    cmp-long v9, v1, v12

    if-lez v9, :cond_2

    .line 1072
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v12, 0x9

    if-ne v9, v12, :cond_1

    .line 1073
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1074
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    sub-int/2addr v9, v12

    int-to-long v12, v9

    mul-long/2addr v12, v10

    add-long/2addr v6, v12

    .line 1070
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1082
    .end local v8    # "i":I
    :cond_2
    cmp-long v8, v4, v6

    const-string v9, ",timeDelta :"

    const-string v10, "TranscodeLib"

    if-gez v8, :cond_3

    .line 1083
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getAudioDrop]SampleTime error tempSampleTime = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1086
    :cond_3
    sub-long/2addr v4, v6

    .line 1087
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getAudioDrop]SampleTime new tempSampleTime = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1045
    :cond_4
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    .line 1046
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    cmp-long v13, v1, v13

    if-ltz v13, :cond_6

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1047
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    cmp-long v13, v1, v13

    if-gez v13, :cond_5

    .line 1048
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1049
    .local v8, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v9

    .line 1050
    .local v9, "timescale":F
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1051
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    move-wide/from16 v16, v10

    int-to-long v10, v15

    mul-long v10, v10, v16

    sub-long v10, v1, v10

    const v15, 0x49742400    # 1000000.0f

    mul-float/2addr v15, v9

    move-wide/from16 v18, v4

    .end local v4    # "tempSampleTime":J
    .local v18, "tempSampleTime":J
    float-to-long v4, v15

    mul-long/2addr v10, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v10, v4

    add-long/2addr v13, v10

    .line 1053
    .end local v18    # "tempSampleTime":J
    .local v13, "tempSampleTime":J
    move-wide v4, v13

    goto/16 :goto_5

    .line 1047
    .end local v8    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v9    # "timescale":F
    .end local v13    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :cond_5
    move-wide/from16 v18, v4

    move-wide/from16 v16, v10

    .end local v4    # "tempSampleTime":J
    .restart local v18    # "tempSampleTime":J
    goto :goto_3

    .line 1046
    .end local v18    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :cond_6
    move-wide/from16 v18, v4

    move-wide/from16 v16, v10

    .line 1054
    .end local v4    # "tempSampleTime":J
    .restart local v18    # "tempSampleTime":J
    :goto_3
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long v4, v4, v16

    cmp-long v4, v1, v4

    if-ltz v4, :cond_8

    .line 1055
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1056
    .local v4, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v5

    .line 1058
    .local v5, "timescale":F
    if-ne v3, v9, :cond_7

    .line 1059
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    long-to-double v9, v6

    const-wide v22, 0x408f400000000000L    # 1000.0

    float-to-double v13, v5

    sub-double v13, v13, v20

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1060
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v11, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v11, v15

    move-wide/from16 v24, v9

    int-to-double v8, v11

    mul-double/2addr v13, v8

    mul-double v13, v13, v22

    add-double v9, v24, v13

    double-to-long v6, v9

    const/4 v15, 0x2

    goto :goto_4

    .line 1062
    :cond_7
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide v22, 0x408f400000000000L    # 1000.0

    const/4 v15, 0x2

    if-ne v3, v15, :cond_9

    .line 1063
    long-to-double v8, v6

    float-to-double v10, v5

    sub-double v10, v20, v10

    mul-double v10, v10, v22

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1064
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v13, v14

    int-to-double v13, v13

    mul-double/2addr v10, v13

    sub-double/2addr v8, v10

    double-to-long v6, v8

    goto :goto_4

    .line 1054
    .end local v4    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v5    # "timescale":F
    :cond_8
    move v15, v8

    .line 1045
    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move v8, v15

    move-wide/from16 v10, v16

    move-wide/from16 v4, v18

    const/4 v9, 0x1

    goto/16 :goto_2

    .end local v18    # "tempSampleTime":J
    .local v4, "tempSampleTime":J
    :cond_a
    move-wide/from16 v18, v4

    .end local v12    # "i":I
    :goto_5
    goto :goto_6

    .line 1041
    :cond_b
    move-wide/from16 v18, v4

    .line 1093
    .end local v4    # "tempSampleTime":J
    .restart local v18    # "tempSampleTime":J
    move-wide/from16 v4, v18

    .end local v18    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :goto_6
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v8, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFRegion(JI)Z

    move-result v8

    return v8
.end method

.method private getAudioFormat()V
    .locals 4

    .line 509
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    .line 511
    const-string v0, "getAudioFormat"

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 513
    .local v0, "audioTrack":I
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioFormat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .end local v0    # "audioTrack":I
    :cond_0
    return-void
.end method

.method private getAudioTime(JI)V
    .locals 17
    .param p1, "SampleTime"    # J
    .param p3, "recordingmode"    # I

    .line 351
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p1

    .line 352
    .local v2, "tempSampleTime":J
    const-wide/16 v4, 0x0

    .line 354
    .local v4, "timedelta":J
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 355
    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    if-eq v1, v6, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/16 v6, 0xc

    if-eq v1, v6, :cond_3

    const/16 v6, 0x15

    if-eq v1, v6, :cond_3

    const/16 v6, 0xd

    if-eq v1, v6, :cond_3

    const/16 v6, 0xf

    if-eq v1, v6, :cond_3

    const/16 v6, 0x13

    if-ne v1, v6, :cond_0

    goto :goto_1

    .line 390
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 391
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-lez v9, :cond_2

    .line 392
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    .line 393
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 394
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    mul-long/2addr v9, v7

    add-long/2addr v4, v9

    .line 390
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 401
    .end local v6    # "i":I
    :cond_2
    sub-long v6, v2, v4

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    goto/16 :goto_5

    .line 364
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 365
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-ltz v9, :cond_4

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 366
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-gez v9, :cond_4

    .line 367
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 368
    .local v9, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v10

    .line 369
    .local v10, "timescale":F
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v11, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v11, v11

    mul-long/2addr v11, v7

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 370
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v7

    sub-long v7, p1, v13

    const v13, 0x49742400    # 1000000.0f

    mul-float/2addr v13, v10

    float-to-long v13, v13

    mul-long/2addr v7, v13

    const-wide/32 v13, 0xf4240

    div-long/2addr v7, v13

    add-long v2, v11, v7

    .line 372
    goto :goto_4

    .line 373
    .end local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v10    # "timescale":F
    :cond_4
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-ltz v9, :cond_6

    .line 374
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 375
    .restart local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v10

    .line 377
    .restart local v10    # "timescale":F
    float-to-double v11, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    if-lez v11, :cond_5

    .line 378
    long-to-double v11, v4

    float-to-double v7, v10

    sub-double/2addr v7, v13

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 379
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v13, v14

    int-to-double v13, v13

    mul-double/2addr v7, v13

    mul-double/2addr v7, v15

    add-double/2addr v11, v7

    double-to-long v4, v11

    goto :goto_3

    .line 382
    :cond_5
    long-to-double v7, v4

    float-to-double v11, v10

    sub-double/2addr v13, v11

    mul-double/2addr v13, v15

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 383
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v11, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v11, v12

    int-to-double v11, v11

    mul-double/2addr v13, v11

    sub-double/2addr v7, v13

    double-to-long v4, v7

    .line 364
    .end local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v10    # "timescale":F
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x3e8

    goto/16 :goto_2

    .line 388
    .end local v6    # "i":I
    :cond_7
    :goto_4
    add-long v6, v2, v4

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 404
    :cond_8
    :goto_5
    return-void
.end method

.method private getLayerNumber([B)I
    .locals 8
    .param p1, "a"    # [B

    .line 2026
    const/4 v0, 0x1

    .line 2027
    .local v0, "layerNumber":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isNoneSVC()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "TranscodeLib"

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 2028
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v6, 0x12

    if-ne v1, v6, :cond_0

    .line 2029
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    rem-int/lit8 v1, v1, 0x10

    .line 2030
    .end local v0    # "layerNumber":I
    .local v1, "layerNumber":I
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    move v0, v1

    goto :goto_0

    .line 2032
    .end local v1    # "layerNumber":I
    .restart local v0    # "layerNumber":I
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNumOfSVCLayers:I

    .line 2033
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    .line 2034
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    if-ne v6, v1, :cond_1

    .line 2035
    const/4 v0, 0x2

    .line 2036
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    goto :goto_0

    .line 2037
    :cond_1
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    rem-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_2

    .line 2038
    const/4 v0, 0x0

    goto :goto_0

    .line 2039
    :cond_2
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_3

    .line 2040
    const/4 v0, 0x3

    .line 2043
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get NONE SVC layerNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2045
    :cond_4
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    .line 2052
    aget-byte v1, p1, v7

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 2053
    .local v1, "nalHeader":I
    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0x3f

    .line 2054
    .local v2, "nalType":I
    if-lt v2, v3, :cond_5

    if-gt v2, v6, :cond_5

    .line 2055
    and-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v5

    move v0, v3

    .end local v0    # "layerNumber":I
    .local v3, "layerNumber":I
    goto :goto_1

    .line 2057
    .end local v3    # "layerNumber":I
    .restart local v0    # "layerNumber":I
    :cond_5
    const/4 v0, 0x0

    .line 2059
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get SVC layerNumber of HEVC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    .end local v1    # "nalHeader":I
    .end local v2    # "nalType":I
    goto :goto_2

    .line 2061
    :cond_6
    aget-byte v1, p1, v7

    and-int/lit8 v1, v1, 0x1f

    const/16 v3, 0xe

    if-ne v1, v3, :cond_7

    aget-byte v1, p1, v5

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    .line 2062
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xe0

    ushr-int/lit8 v0, v1, 0x5

    .line 2064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get SVC layerNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    :cond_7
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getlayernum] layerNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    return v0
.end method

.method private getMaxInputSize(Landroid/media/MediaFormat;)I
    .locals 3
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2927
    :try_start_0
    const-string v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2928
    :catch_0
    move-exception v0

    .line 2929
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "TranscodeLib"

    const-string v2, "Audio max input size not defined"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2930
    const/4 v1, 0x0

    return v1
.end method

.method private getTimescale(JI)F
    .locals 6
    .param p1, "sampleTime"    # J
    .param p3, "recordingmode"    # I

    .line 1097
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1098
    .local v0, "timescale":F
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1099
    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/16 v1, 0xc

    if-eq p3, v1, :cond_0

    const/16 v1, 0x15

    if-eq p3, v1, :cond_0

    const/16 v1, 0xd

    if-eq p3, v1, :cond_0

    const/16 v1, 0xf

    if-eq p3, v1, :cond_0

    const/16 v1, 0x13

    if-ne p3, v1, :cond_2

    .line 1106
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1107
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1108
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 1109
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1110
    .local v2, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    div-float v0, v3, v4

    .line 1111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getTimescale]timescale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    goto :goto_1

    .line 1106
    .end local v2    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "decoderOutputBufferIndex"    # I
    .param p2, "videoDecoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1619
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderOutputBufferIndex(ILandroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1621
    return-void

    .line 1624
    :cond_0
    new-instance v0, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;-><init>(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1626
    .local v0, "decodedFrame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)V

    .line 1627
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1628
    return-void
.end method

.method private getandsendAudioToMuxer()V
    .locals 8

    .line 519
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_1

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "offset":I
    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 523
    .local v1, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 524
    .local v2, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio rewirte bufferInfoA.size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iput v0, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 528
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 529
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-gez v3, :cond_0

    .line 530
    const-string v3, "saw input EOS: Audio"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 532
    const/4 v3, 0x0

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    .line 534
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 535
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 536
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    invoke-virtual {v3, v6, v1, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio writeSampleData bufferInfoA.size : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bufferInfoA.presentationTimeUs :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 542
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    .line 547
    .end local v0    # "offset":I
    .end local v1    # "dstBufA":Ljava/nio/ByteBuffer;
    .end local v2    # "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method private initAudioSlowV2()V
    .locals 18

    .line 560
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v3, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    mul-int/lit8 v5, v1, 0x2

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    float-to-int v1, v1

    mul-int/lit16 v6, v1, 0x2ee0

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCInit(JIIIII)I

    goto :goto_0

    .line 564
    :cond_0
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v11, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    float-to-int v1, v1

    mul-int/lit16 v14, v1, 0x2ee0

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/16 v16, 0x10

    const/16 v17, 0x10

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCInit(JIIIII)I

    .line 567
    :goto_0
    return-void
.end method

.method private isDolbyAudioCodec(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 2891
    const-string v0, "audio/ac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/eac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2892
    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/ac4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2891
    :goto_1
    return v0
.end method

.method private isNoneSVC()Z
    .locals 2

    .line 2073
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRegionListExist()Z
    .locals 1

    .line 1845
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSlowFastExceptSlowV2120NoneSVC()Z
    .locals 3

    .line 2079
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private isVideoDecoderAvailableCondition()Z
    .locals 1

    .line 1571
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized isVideoEncoderAvailableCondition()Z
    .locals 1

    monitor-enter p0

    .line 1576
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 1576
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private keepPrevPFrameForFastVideo(ZIJII)Z
    .locals 20
    .param p1, "keepFrame"    # Z
    .param p2, "i"    # I
    .param p3, "sampleTime"    # J
    .param p5, "recordingFramerate"    # I
    .param p6, "layerNum"    # I

    .line 1865
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    .line 1866
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    const-wide v10, 0x3ff7333333333333L    # 1.45

    div-double v8, v10, v8

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v12

    int-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v14, v16, v14

    mul-double/2addr v14, v12

    const-wide/high16 v18, 0x402c000000000000L    # 14.0

    mul-double v14, v14, v18

    add-double/2addr v8, v14

    cmpg-double v4, v4, v8

    if-gez v4, :cond_3

    .line 1869
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .local v4, "keepFrame":Z
    goto :goto_0

    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    div-double v8, v10, v8

    mul-double/2addr v8, v12

    int-to-double v14, v2

    div-double v14, v16, v14

    mul-double/2addr v14, v12

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v14, v14, v18

    add-double/2addr v8, v14

    cmpg-double v4, v4, v8

    if-gez v4, :cond_1

    .line 1873
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_0

    .line 1874
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    div-double v8, v10, v8

    mul-double/2addr v8, v12

    int-to-double v14, v2

    div-double v16, v16, v14

    mul-double v16, v16, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v14

    add-double v8, v8, v16

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    .line 1877
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_0

    .line 1878
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v6, v2

    div-double/2addr v10, v6

    mul-double/2addr v10, v12

    cmpg-double v4, v4, v10

    if-gez v4, :cond_3

    .line 1880
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_0

    .line 1884
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_3
    move/from16 v4, p1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    :goto_0
    return v4
.end method

.method private keepPrevPFrameForSlowVideo(ZIJII)Z
    .locals 18
    .param p1, "keepFrame"    # Z
    .param p2, "i"    # I
    .param p3, "sampleTime"    # J
    .param p5, "recordingFramerate"    # I
    .param p6, "layerNum"    # I

    .line 1850
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    int-to-double v8, v2

    const-wide v10, 0x3ff7333333333333L    # 1.45

    div-double v8, v10, v8

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v6

    int-to-double v6, v2

    div-double/2addr v14, v6

    mul-double/2addr v14, v12

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v6

    add-double/2addr v8, v14

    double-to-long v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1853
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1854
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .local v4, "keepFrame":Z
    goto :goto_0

    .line 1855
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    mul-long v4, v4, v16

    sub-long v4, v4, p3

    int-to-double v6, v2

    div-double/2addr v10, v6

    mul-double/2addr v10, v12

    double-to-long v6, v10

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1857
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_0

    .line 1860
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_1
    move/from16 v4, p1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    :goto_0
    return v4
.end method

.method static synthetic lambda$getVideoDecoderOutput$0(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;)V
    .locals 0
    .param p0, "decodedFrame"    # Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    .param p1, "listener"    # Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    .line 1627
    invoke-interface {p1, p0}, Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;->notifyFrameDecoded(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)V

    return-void
.end method

.method private preprocessAudioOutputFormat(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 10
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "inputAudioFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2844
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 2845
    .local v0, "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v0, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2847
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2848
    .local v1, "inputBuffers":[Ljava/nio/ByteBuffer;
    :goto_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 2851
    .local v2, "outputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    const/4 v3, -0x1

    .line 2853
    .local v3, "pendingAudioDecoderOutputBufferIndex":I
    new-instance v4, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    .line 2854
    .local v4, "schedulerCallback":Ljava/lang/Runnable;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    const/4 v6, 0x0

    if-nez v5, :cond_6

    .line 2855
    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    const-wide/16 v7, 0x2710

    if-nez v5, :cond_3

    .line 2856
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 2858
    .local v5, "audioDecoderInputBufferIndex":I
    invoke-direct {p0, v5, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderBufferIndex(I[Ljava/nio/ByteBuffer;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2859
    goto :goto_3

    .line 2861
    .end local v5    # "audioDecoderInputBufferIndex":I
    :cond_2
    goto :goto_2

    .line 2862
    :cond_3
    :goto_3
    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    .line 2863
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    if-nez v5, :cond_1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 2864
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v2, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 2867
    .local v5, "outputBufferIndex":I
    invoke-direct {p0, v5, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkPendingAudioDecoderBufferIndex(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2868
    goto :goto_1

    .line 2870
    :cond_4
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 2872
    const-string v7, "TranscodeLib"

    const-string v8, "audio decoder: codec config buffer"

    invoke-static {v7, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2874
    goto :goto_1

    .line 2876
    :cond_5
    move v3, v5

    .line 2877
    goto :goto_1

    .line 2881
    .end local v5    # "outputBufferIndex":I
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseInputAudioDecoder()V

    .line 2882
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v5, :cond_7

    .line 2883
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2887
    .end local v0    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v1    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .end local v2    # "outputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v3    # "pendingAudioDecoderOutputBufferIndex":I
    .end local v4    # "schedulerCallback":Ljava/lang/Runnable;
    :cond_7
    goto :goto_4

    .line 2885
    :catch_0
    move-exception v0

    .line 2886
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2888
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private procSVCLayerDrop(JIIII)Z
    .locals 23
    .param p1, "sampleTime"    # J
    .param p3, "layerNum"    # I
    .param p4, "maxLayerNum"    # I
    .param p5, "recordingMode"    # I
    .param p6, "recordingFps"    # I

    .line 1950
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1951
    .local v1, "isSEFSlowMotion":Z
    const/4 v2, 0x0

    .line 1952
    .local v2, "isSEFFastMotion":Z
    const/4 v7, 0x0

    .line 1953
    .local v7, "retDrop":Z
    const/4 v3, 0x0

    .line 1954
    .local v3, "keepframe":Z
    const-wide/16 v4, 0x0

    .line 1955
    .local v4, "timedelta":J
    sget-object v6, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1957
    .local v6, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1958
    const-wide/16 v10, 0x2

    mul-long v10, v10, p1

    .end local p1    # "sampleTime":J
    .local v10, "sampleTime":J
    goto :goto_0

    .line 1957
    .end local v10    # "sampleTime":J
    .restart local p1    # "sampleTime":J
    :cond_0
    move-wide/from16 v10, p1

    .line 1961
    .end local p1    # "sampleTime":J
    .restart local v10    # "sampleTime":J
    :goto_0
    move-wide v12, v10

    .line 1962
    .local v12, "tempSampleTime":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[procSVCLayerDrop]SampleTime = tempSampleTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",layernum :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v15, p3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v16, v1

    .end local v1    # "isSEFSlowMotion":Z
    .local v16, "isSEFSlowMotion":Z
    const-string v1, ", maxlayernum : "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v14, p4

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v2

    .end local v2    # "isSEFFastMotion":Z
    .local v17, "isSEFFastMotion":Z
    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    invoke-direct {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->isRegionListExist()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1968
    const/4 v1, 0x0

    move v2, v1

    move-wide/from16 v18, v4

    move/from16 v1, v16

    move-object/from16 v16, v6

    .end local v4    # "timedelta":J
    .end local v6    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local p6    # "recordingFps":I
    .restart local v1    # "isSEFSlowMotion":Z
    .local v2, "i":I
    .local v9, "recordingFps":I
    .local v16, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v18, "timedelta":J
    :goto_1
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 1969
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1970
    const/4 v1, 0x1

    .line 1971
    const/16 v17, 0x0

    .line 1973
    :cond_1
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 1974
    const/16 v17, 0x1

    .line 1975
    const/4 v1, 0x0

    move/from16 v20, v17

    move/from16 v17, v1

    goto :goto_2

    .line 1973
    :cond_2
    move/from16 v20, v17

    move/from16 v17, v1

    .line 1979
    .end local v1    # "isSEFSlowMotion":Z
    .local v17, "isSEFSlowMotion":Z
    .local v20, "isSEFFastMotion":Z
    :goto_2
    const-wide/16 v21, 0x3e8

    if-eqz v17, :cond_4

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v1

    mul-long v4, v4, v21

    cmp-long v1, v10, v4

    if-gez v1, :cond_4

    .line 1980
    if-nez v9, :cond_3

    .line 1981
    const/16 v9, 0xf0

    move v5, v9

    goto :goto_3

    .line 1980
    :cond_3
    move v5, v9

    .line 1983
    .end local v9    # "recordingFps":I
    .local v5, "recordingFps":I
    :goto_3
    move v1, v3

    move-wide v3, v10

    move v6, v15

    .end local v10    # "sampleTime":J
    .local v1, "keepframe":Z
    .local v3, "sampleTime":J
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForSlowVideo(ZIJII)Z

    move-result v1

    move v6, v2

    move v9, v5

    move/from16 v4, v17

    move/from16 v5, v20

    move v3, v1

    goto/16 :goto_7

    .line 1979
    .end local v1    # "keepframe":Z
    .end local v5    # "recordingFps":I
    .local v3, "keepframe":Z
    .restart local v9    # "recordingFps":I
    .restart local v10    # "sampleTime":J
    :cond_4
    move v1, v3

    move-wide v3, v10

    .line 1984
    .end local v10    # "sampleTime":J
    .restart local v1    # "keepframe":Z
    .local v3, "sampleTime":J
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v5

    mul-long v5, v5, v21

    cmp-long v5, v3, v5

    if-ltz v5, :cond_8

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1985
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v5, v5

    mul-long v5, v5, v21

    cmp-long v5, v3, v5

    if-gez v5, :cond_7

    .line 1987
    if-eqz v20, :cond_6

    .line 1988
    if-nez v9, :cond_5

    .line 1989
    const/16 v9, 0x1e

    move v5, v9

    goto :goto_4

    .line 1988
    :cond_5
    move v5, v9

    .line 1991
    .end local v9    # "recordingFps":I
    .restart local v5    # "recordingFps":I
    :goto_4
    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForFastVideo(ZIJII)Z

    move-result v1

    move-wide v10, v3

    move v3, v1

    move v9, v5

    .end local v3    # "sampleTime":J
    .restart local v10    # "sampleTime":J
    goto :goto_5

    .line 1987
    .end local v5    # "recordingFps":I
    .end local v10    # "sampleTime":J
    .restart local v3    # "sampleTime":J
    .restart local v9    # "recordingFps":I
    :cond_6
    move v15, v1

    move-wide v10, v3

    .end local v1    # "keepframe":Z
    .end local v3    # "sampleTime":J
    .restart local v10    # "sampleTime":J
    .local v15, "keepframe":Z
    move v3, v15

    .line 1993
    .end local v15    # "keepframe":Z
    .local v3, "keepframe":Z
    :goto_5
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1994
    .end local v16    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v1, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v1}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 1995
    .local v4, "timescale":F
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v5

    mul-long v5, v5, v21

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1996
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    move/from16 p1, v3

    move/from16 p2, v4

    .end local v3    # "keepframe":Z
    .end local v4    # "timescale":F
    .local p1, "keepframe":Z
    .local p2, "timescale":F
    int-to-long v3, v15

    mul-long v3, v3, v21

    sub-long v3, v10, v3

    const v15, 0x49742400    # 1000000.0f

    mul-float v15, v15, p2

    move-wide/from16 v21, v3

    float-to-long v3, v15

    mul-long v3, v3, v21

    const-wide/32 v15, 0xf4240

    div-long/2addr v3, v15

    add-long/2addr v5, v3

    .line 2001
    .end local v12    # "tempSampleTime":J
    .local v5, "tempSampleTime":J
    move/from16 v15, p1

    move-wide v12, v5

    move-wide/from16 v2, v18

    move-object v6, v1

    move/from16 v1, v17

    move/from16 v17, v20

    goto :goto_8

    .line 1985
    .end local v5    # "tempSampleTime":J
    .end local v10    # "sampleTime":J
    .end local p1    # "keepframe":Z
    .end local p2    # "timescale":F
    .local v1, "keepframe":Z
    .local v3, "sampleTime":J
    .restart local v12    # "tempSampleTime":J
    .restart local v16    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :cond_7
    move v15, v1

    move-wide v10, v3

    .end local v1    # "keepframe":Z
    .end local v3    # "sampleTime":J
    .restart local v10    # "sampleTime":J
    .restart local v15    # "keepframe":Z
    goto :goto_6

    .line 1984
    .end local v10    # "sampleTime":J
    .end local v15    # "keepframe":Z
    .restart local v1    # "keepframe":Z
    .restart local v3    # "sampleTime":J
    :cond_8
    move v15, v1

    move-wide v10, v3

    .line 2002
    .end local v1    # "keepframe":Z
    .end local v3    # "sampleTime":J
    .restart local v10    # "sampleTime":J
    .restart local v15    # "keepframe":Z
    :goto_6
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v3, v1

    mul-long v3, v3, v21

    cmp-long v1, v10, v3

    if-ltz v1, :cond_9

    .line 2003
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 2004
    .end local v16    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v1, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v1}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v3

    .line 2005
    .local v3, "timescale":F
    move-object/from16 v16, v1

    move v6, v2

    move/from16 v4, v17

    move-wide/from16 v1, v18

    move/from16 v5, v20

    .end local v2    # "i":I
    .end local v17    # "isSEFSlowMotion":Z
    .end local v18    # "timedelta":J
    .end local v20    # "isSEFFastMotion":Z
    .local v1, "timedelta":J
    .local v4, "isSEFSlowMotion":Z
    .local v5, "isSEFFastMotion":Z
    .local v6, "i":I
    .restart local v16    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTimeDelta(JFZZI)J

    move-result-wide v1

    .line 2007
    sget-object v16, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-wide/from16 v18, v1

    move v3, v15

    goto :goto_7

    .line 2002
    .end local v1    # "timedelta":J
    .end local v3    # "timescale":F
    .end local v4    # "isSEFSlowMotion":Z
    .end local v5    # "isSEFFastMotion":Z
    .end local v6    # "i":I
    .restart local v2    # "i":I
    .restart local v17    # "isSEFSlowMotion":Z
    .restart local v18    # "timedelta":J
    .restart local v20    # "isSEFFastMotion":Z
    :cond_9
    move v6, v2

    move/from16 v4, v17

    move-wide/from16 v2, v18

    move/from16 v5, v20

    .end local v17    # "isSEFSlowMotion":Z
    .end local v18    # "timedelta":J
    .end local v20    # "isSEFFastMotion":Z
    .local v2, "timedelta":J
    .restart local v4    # "isSEFSlowMotion":Z
    .restart local v5    # "isSEFFastMotion":Z
    .restart local v6    # "i":I
    move v3, v15

    .line 1968
    .end local v2    # "timedelta":J
    .end local v15    # "keepframe":Z
    .local v3, "keepframe":Z
    .restart local v18    # "timedelta":J
    :goto_7
    add-int/lit8 v2, v6, 0x1

    move/from16 v15, p3

    move v1, v4

    move/from16 v17, v5

    .end local v6    # "i":I
    .local v2, "i":I
    goto/16 :goto_1

    .end local v4    # "isSEFSlowMotion":Z
    .end local v5    # "isSEFFastMotion":Z
    .local v1, "isSEFSlowMotion":Z
    .local v17, "isSEFFastMotion":Z
    :cond_a
    move v6, v2

    move v15, v3

    move-wide/from16 v2, v18

    .end local v3    # "keepframe":Z
    .end local v18    # "timedelta":J
    .local v2, "timedelta":J
    .restart local v6    # "i":I
    .restart local v15    # "keepframe":Z
    move-object/from16 v6, v16

    .line 2011
    .end local v16    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v6, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :goto_8
    add-long v4, v12, v2

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    move/from16 v16, v1

    move-wide/from16 v18, v12

    move-wide v12, v2

    move-object v5, v6

    move v2, v9

    goto :goto_9

    .line 1966
    .end local v1    # "isSEFSlowMotion":Z
    .end local v2    # "timedelta":J
    .end local v9    # "recordingFps":I
    .end local v15    # "keepframe":Z
    .restart local v3    # "keepframe":Z
    .local v4, "timedelta":J
    .local v16, "isSEFSlowMotion":Z
    .restart local p6    # "recordingFps":I
    :cond_b
    move v15, v3

    move-wide/from16 v18, v12

    move-wide v12, v4

    move v2, v9

    move-object v5, v6

    .line 2014
    .end local v3    # "keepframe":Z
    .end local v4    # "timedelta":J
    .end local v6    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local p6    # "recordingFps":I
    .local v2, "recordingFps":I
    .local v5, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v12, "timedelta":J
    .restart local v15    # "keepframe":Z
    .local v18, "tempSampleTime":J
    :goto_9
    const/4 v9, 0x0

    const/16 v20, 0x1

    if-eqz v16, :cond_e

    .line 2015
    if-nez v15, :cond_c

    move/from16 v3, p3

    move v1, v7

    move v4, v14

    .end local v7    # "retDrop":Z
    .local v1, "retDrop":Z
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkRetDropSlowMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z

    move-result v6

    if-eqz v6, :cond_d

    move/from16 v0, v20

    goto :goto_a

    .end local v1    # "retDrop":Z
    .restart local v7    # "retDrop":Z
    :cond_c
    move v1, v7

    .end local v7    # "retDrop":Z
    .restart local v1    # "retDrop":Z
    :cond_d
    move v0, v9

    :goto_a
    move v7, v0

    move v1, v7

    .end local v1    # "retDrop":Z
    .restart local v7    # "retDrop":Z
    goto :goto_b

    .line 2014
    :cond_e
    move v1, v7

    .line 2018
    .end local v7    # "retDrop":Z
    .restart local v1    # "retDrop":Z
    :goto_b
    if-eqz v17, :cond_10

    .line 2019
    if-nez v15, :cond_f

    move-object/from16 v0, p0

    move/from16 v4, p3

    move v3, v2

    move-object v6, v5

    move v2, v8

    move/from16 v5, p4

    .end local v2    # "recordingFps":I
    .end local v5    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v3, "recordingFps":I
    .restart local v6    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->checkRetDropFastMotion(ZIIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z

    move-result v7

    move v2, v3

    move-object v5, v6

    .end local v3    # "recordingFps":I
    .end local v6    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .restart local v2    # "recordingFps":I
    .restart local v5    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    if-eqz v7, :cond_f

    move/from16 v9, v20

    :cond_f
    move v1, v9

    .line 2022
    :cond_10
    return v1
.end method

.method private procSuperSlowVideo(JII)Z
    .locals 18
    .param p1, "sampleTime"    # J
    .param p3, "layernum"    # I
    .param p4, "recordingframerate"    # I

    .line 1888
    move-object/from16 v0, p0

    move-wide/from16 v3, p1

    const/4 v7, 0x0

    .line 1889
    .local v7, "isSEFSuperSlowCancel":Z
    const/4 v8, 0x0

    .line 1890
    .local v8, "retDrop":Z
    const/4 v1, 0x0

    .line 1891
    .local v1, "keepframe":Z
    const-wide/16 v5, 0x0

    .line 1892
    .local v5, "timedelta":J
    move-wide/from16 v9, p1

    .line 1893
    .local v9, "tempSampleTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[procSuperSlowVideo]SampleTime = tempSampleTime = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "TranscodeLib"

    invoke-static {v11, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    invoke-direct {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->isRegionListExist()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1896
    const/4 v2, 0x0

    move-wide v11, v5

    .end local v5    # "timedelta":J
    .local v2, "i":I
    .local v11, "timedelta":J
    :goto_0
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 1897
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v5

    const-wide/16 v13, 0x3e8

    mul-long/2addr v5, v13

    cmp-long v5, v3, v5

    const/16 v6, 0x9

    if-ltz v5, :cond_2

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1898
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    move-wide v15, v13

    int-to-long v13, v5

    mul-long/2addr v13, v15

    cmp-long v5, v3, v13

    if-gez v5, :cond_3

    .line 1899
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    if-ne v5, v6, :cond_1

    .line 1900
    if-nez p4, :cond_0

    const/16 v5, 0x1e

    .end local p4    # "recordingframerate":I
    .local v5, "recordingframerate":I
    goto :goto_1

    .end local v5    # "recordingframerate":I
    .restart local p4    # "recordingframerate":I
    :cond_0
    move/from16 v5, p4

    .line 1904
    .end local p4    # "recordingframerate":I
    .restart local v5    # "recordingframerate":I
    :goto_1
    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForFastVideo(ZIJII)Z

    move-result v1

    .line 1906
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1907
    .local v3, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 1908
    .local v4, "timescale":F
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v6

    mul-long/2addr v13, v15

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1909
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    move-object/from16 p4, v3

    move/from16 v17, v4

    .end local v3    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v4    # "timescale":F
    .local v17, "timescale":F
    .local p4, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    int-to-long v3, v6

    mul-long/2addr v3, v15

    sub-long v3, p1, v3

    const v6, 0x49742400    # 1000000.0f

    mul-float v6, v6, v17

    move-wide v15, v3

    float-to-long v3, v6

    mul-long/2addr v3, v15

    const-wide/32 v15, 0xf4240

    div-long/2addr v3, v15

    add-long/2addr v13, v3

    .line 1911
    .end local v9    # "tempSampleTime":J
    .local v13, "tempSampleTime":J
    const/4 v3, 0x1

    .line 1912
    .end local v7    # "isSEFSuperSlowCancel":Z
    .end local v17    # "timescale":F
    .end local p4    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v3, "isSEFSuperSlowCancel":Z
    move v7, v3

    move-wide v9, v13

    goto/16 :goto_3

    .line 1913
    .end local v3    # "isSEFSuperSlowCancel":Z
    .end local v5    # "recordingframerate":I
    .end local v13    # "tempSampleTime":J
    .restart local v7    # "isSEFSuperSlowCancel":Z
    .restart local v9    # "tempSampleTime":J
    .local p4, "recordingframerate":I
    :cond_1
    const/4 v3, 0x0

    .line 1915
    .end local v7    # "isSEFSuperSlowCancel":Z
    .restart local v3    # "isSEFSuperSlowCancel":Z
    move/from16 v5, p4

    move v7, v3

    goto/16 :goto_3

    .line 1897
    .end local v3    # "isSEFSuperSlowCancel":Z
    .restart local v7    # "isSEFSuperSlowCancel":Z
    :cond_2
    move-wide v15, v13

    .line 1916
    :cond_3
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v3, v3

    mul-long/2addr v3, v15

    cmp-long v3, p1, v3

    if-ltz v3, :cond_5

    .line 1917
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    if-ne v3, v6, :cond_4

    .line 1918
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1919
    .local v3, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 1920
    .restart local v4    # "timescale":F
    long-to-double v5, v11

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    float-to-double v13, v4

    sub-double v13, v15, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v13, v15

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1921
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    move/from16 v16, v1

    .end local v1    # "keepframe":Z
    .local v16, "keepframe":Z
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v15, v1

    move/from16 v17, v2

    .end local v2    # "i":I
    .local v17, "i":I
    int-to-double v1, v15

    mul-double/2addr v13, v1

    sub-double/2addr v5, v13

    double-to-long v11, v5

    goto :goto_2

    .line 1917
    .end local v3    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v4    # "timescale":F
    .end local v16    # "keepframe":Z
    .end local v17    # "i":I
    .restart local v1    # "keepframe":Z
    .restart local v2    # "i":I
    :cond_4
    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "keepframe":Z
    .end local v2    # "i":I
    .restart local v16    # "keepframe":Z
    .restart local v17    # "i":I
    goto :goto_2

    .line 1916
    .end local v16    # "keepframe":Z
    .end local v17    # "i":I
    .restart local v1    # "keepframe":Z
    .restart local v2    # "i":I
    :cond_5
    move/from16 v16, v1

    move/from16 v17, v2

    .line 1896
    .end local v1    # "keepframe":Z
    .end local v2    # "i":I
    .restart local v16    # "keepframe":Z
    .restart local v17    # "i":I
    :goto_2
    add-int/lit8 v2, v17, 0x1

    move-wide/from16 v3, p1

    move/from16 v1, v16

    .end local v17    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .end local v16    # "keepframe":Z
    .restart local v1    # "keepframe":Z
    :cond_6
    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "keepframe":Z
    .end local v2    # "i":I
    .restart local v16    # "keepframe":Z
    .restart local v17    # "i":I
    move/from16 v5, p4

    .line 1926
    .end local v16    # "keepframe":Z
    .end local v17    # "i":I
    .end local p4    # "recordingframerate":I
    .restart local v1    # "keepframe":Z
    .restart local v5    # "recordingframerate":I
    :goto_3
    add-long v2, v9, v11

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    goto :goto_4

    .line 1895
    .end local v11    # "timedelta":J
    .local v5, "timedelta":J
    .restart local p4    # "recordingframerate":I
    :cond_7
    move/from16 v16, v1

    .end local v1    # "keepframe":Z
    .restart local v16    # "keepframe":Z
    move-wide v11, v5

    move/from16 v5, p4

    .line 1929
    .end local v16    # "keepframe":Z
    .end local p4    # "recordingframerate":I
    .restart local v1    # "keepframe":Z
    .local v5, "recordingframerate":I
    .restart local v11    # "timedelta":J
    :goto_4
    if-eqz v7, :cond_9

    .line 1936
    if-eqz p3, :cond_8

    .line 1937
    const/4 v8, 0x1

    .line 1940
    :cond_8
    if-eqz v1, :cond_9

    .line 1941
    const/4 v8, 0x0

    .line 1945
    :cond_9
    return v8
.end method

.method private releaseInputAudioDecoder()V
    .locals 3

    .line 2784
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 2786
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2787
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2792
    goto :goto_0

    .line 2789
    :catch_0
    move-exception v0

    .line 2790
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing input audio decoder."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2794
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z
    .locals 5
    .param p1, "releaseFrame"    # Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    .line 1631
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget v1, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->bufferIndex:I

    iget v2, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->size:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1632
    iget v0, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->size:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method private sendAudioDecoderOutput()V
    .locals 9

    .line 1429
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_4

    :cond_1
    :goto_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v0, :cond_7

    .line 1432
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1433
    .local v2, "size":I
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1434
    .local v3, "presentationTime":J
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    int-to-long v0, v0

    const-wide/16 v5, 0x5355

    mul-long/2addr v0, v5

    add-long v7, v3, v0

    .line 1435
    .local v7, "tempPresentationTime":J
    move-wide v0, v7

    .line 1436
    .local v0, "seektime":J
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v5, :cond_5

    .line 1437
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowFast()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1438
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->getSlowfastSeektime(J)J

    move-result-wide v0

    goto :goto_2

    .line 1439
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1440
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->getSuperslowSeektime(J)J

    move-result-wide v0

    .line 1443
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    if-nez v5, :cond_4

    .line 1444
    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioDrop(JI)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1447
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioFollowHandle(J)V

    .line 1448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "presentationTime :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", temp_presentationTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", seektime :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", audioWaitFrame:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timescale : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TranscodeLib"

    invoke-static {v6, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v0

    goto :goto_3

    .line 1436
    :cond_5
    move-wide v5, v0

    .line 1455
    .end local v0    # "seektime":J
    .local v5, "seektime":J
    :goto_3
    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSendAudioFollowHandle(IJJJ)V

    .line 1456
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 1457
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1458
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 1460
    .end local v2    # "size":I
    .end local v3    # "presentationTime":J
    .end local v5    # "seektime":J
    .end local v7    # "tempPresentationTime":J
    :cond_6
    goto/16 :goto_0

    .line 1429
    :cond_7
    move-object v1, p0

    .line 1461
    :goto_4
    return-void
.end method

.method private sendAudioToDecoder()V
    .locals 17

    .line 426
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v1, :cond_7

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-nez v1, :cond_7

    .line 429
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    .line 430
    .local v1, "presentationTimeUs":J
    const/4 v3, -0x1

    .line 431
    .local v3, "jumpRegion":I
    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSilentRegion(J)I

    move-result v3

    .line 435
    :cond_1
    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Seekto region End time :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 437
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v7, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v6, v6

    mul-long/2addr v6, v9

    invoke-virtual {v5, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 440
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v6, v6

    mul-long/2addr v6, v9

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 442
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 445
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 443
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 448
    :cond_3
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    .line 450
    .local v11, "audioDecoderInputBufferIndex":I
    if-eq v11, v6, :cond_7

    .line 451
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v11

    .line 453
    .local v6, "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v6, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v13

    .line 454
    .local v13, "size":I
    iput-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 455
    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v4, :cond_5

    .line 456
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 457
    const-wide/16 v7, 0x2

    mul-long/2addr v7, v1

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {v0, v7, v8, v4}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioTime(JI)V

    goto :goto_1

    .line 459
    :cond_4
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioTime(JI)V

    .line 462
    :cond_5
    :goto_1
    iget-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    cmp-long v4, v1, v7

    if-gtz v4, :cond_6

    if-ltz v13, :cond_6

    .line 463
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-wide v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 464
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    .line 463
    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 465
    move v4, v13

    .end local v13    # "size":I
    .local v4, "size":I
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    .line 462
    .end local v4    # "size":I
    .restart local v13    # "size":I
    :cond_6
    move v4, v13

    .line 467
    .end local v13    # "size":I
    .restart local v4    # "size":I
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    .line 470
    :goto_2
    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    if-eqz v7, :cond_7

    .line 471
    const-string v7, "audio decoder sending EOS"

    invoke-static {v5, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v14, 0x0

    const/16 v16, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 478
    .end local v1    # "presentationTimeUs":J
    .end local v3    # "jumpRegion":I
    .end local v4    # "size":I
    .end local v6    # "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "audioDecoderInputBufferIndex":I
    :cond_7
    return-void
.end method

.method private sendAudioToEncoder(IJJJ)V
    .locals 21
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J
    .param p6, "tempPresentationTime"    # J

    .line 1214
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    const-wide/16 v7, 0x2710

    const/4 v9, 0x1

    const-string v10, "TranscodeLib"

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eqz v6, :cond_6

    .line 1215
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 1216
    .local v6, "audioEncoderInputBufferIndex":I
    if-ne v6, v11, :cond_0

    .line 1217
    const-string v7, "audio encoder input buffer try again later"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :cond_0
    if-ltz v1, :cond_1

    .line 1220
    invoke-direct {v0, v6, v1, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTempRadio(IIJ)V

    .line 1222
    :cond_1
    iget-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    .line 1223
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    if-eq v7, v11, :cond_2

    .line 1224
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v7, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1227
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1230
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcely EOS  AudioLoopCount :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seek time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", temp_presentationTime :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1234
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1235
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->flush()V

    .line 1236
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v2, v3, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1238
    :cond_3
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_5

    .line 1240
    const-string v7, "audio decoder: EOS"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    if-eq v7, v11, :cond_4

    .line 1242
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v7, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1244
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1246
    :cond_4
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1247
    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1248
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1251
    .end local v6    # "audioEncoderInputBufferIndex":I
    :cond_5
    :goto_0
    move-wide/from16 v6, p2

    goto/16 :goto_4

    .line 1252
    :cond_6
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v6, :cond_7

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    if-lez v6, :cond_7

    .line 1253
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioLoopCount(J)V

    .line 1254
    return-void

    .line 1257
    :cond_7
    if-ltz v1, :cond_b

    const-wide/16 v13, 0x0

    cmp-long v6, p2, v13

    if-ltz v6, :cond_b

    .line 1258
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    if-nez v6, :cond_8

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecAudio(IZ)I

    .line 1259
    :cond_8
    move-wide/from16 v17, p2

    .end local p2    # "presentationTime":J
    .local v17, "presentationTime":J
    :goto_1
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v13, :cond_a

    .line 1260
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    .line 1262
    .local v14, "audioEncoderInputBufferIndex":I
    if-ne v14, v11, :cond_9

    .line 1263
    const-string v6, " audio encoder input buffer try again later"

    invoke-static {v10, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    move/from16 v20, v9

    goto :goto_2

    .line 1266
    :cond_9
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v14

    .line 1268
    .local v6, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v6, v13, v15, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1270
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 1271
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    move/from16 v20, v9

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v15, v9

    invoke-static {v7, v8, v13, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1273
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 1274
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 1275
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v15, 0x0

    move/from16 v16, v7

    move/from16 v19, v8

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1278
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1279
    const-wide/16 v7, 0x5355

    add-long v17, v17, v7

    .line 1281
    .end local v6    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "audioEncoderInputBufferIndex":I
    move/from16 v9, v20

    const-wide/16 v7, 0x2710

    goto :goto_1

    .line 1259
    :cond_a
    move/from16 v20, v9

    .line 1284
    :goto_2
    move-wide/from16 v6, v17

    goto :goto_3

    .line 1257
    .end local v17    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_b
    move/from16 v20, v9

    .line 1284
    move-wide/from16 v6, p2

    .end local p2    # "presentationTime":J
    .local v6, "presentationTime":J
    :goto_3
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-ge v8, v9, :cond_c

    .line 1285
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v8, v9, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1287
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1288
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 1289
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_d

    .line 1291
    invoke-direct {v0, v6, v7}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderEOSNotWaitFrameCase(J)Z

    goto :goto_4

    .line 1294
    :cond_c
    const-string v8, "Not finished yet"

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    move/from16 v8, v20

    iput-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 1298
    :cond_d
    :goto_4
    return-void
.end method

.method private sendAudioToEncoder_AudioSolution(IJJ)V
    .locals 32
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J

    .line 916
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_b

    .line 917
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecAudio(IZ)I

    move-result v6

    .line 919
    .local v6, "encoderInputBufferSize":I
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const v7, 0x64000

    const/high16 v8, 0x41000000    # 8.0f

    const-wide/16 v9, 0x0

    const-string v11, "audio encoder input buffer try again later"

    const/4 v12, -0x1

    const-wide/16 v13, 0x2710

    const-string v15, "TranscodeLib"

    const-wide/16 v16, 0x5355

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v24, v2

    move/from16 v18, v5

    goto/16 :goto_2

    :cond_1
    :goto_0
    if-lez v1, :cond_5

    sget-wide v18, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v3, v18, v9

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v18

    if-eqz v3, :cond_5

    .line 922
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_2

    .line 923
    move-wide/from16 v8, p4

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderEOS(J)V

    .line 924
    return-void

    .line 926
    :cond_2
    move-wide/from16 v8, p4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 927
    .local v3, "tempAudio":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 928
    const-string v7, "VSPExe2 is called"

    invoke-static {v15, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v19, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    move/from16 v24, v2

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v23, v6, v2

    move-object/from16 v21, v3

    move-object/from16 v18, v7

    move-object/from16 v22, v10

    .end local v3    # "tempAudio":Ljava/nio/ByteBuffer;
    .local v21, "tempAudio":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v18 .. v23}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 931
    .end local v21    # "tempAudio":Ljava/nio/ByteBuffer;
    .local v2, "newSize":I
    .restart local v3    # "tempAudio":Ljava/nio/ByteBuffer;
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v7, v2

    mul-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 932
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    move/from16 v18, v5

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v7, v10, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 934
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v7, v2

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iput v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 935
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VSPExe2 original size :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mTempAudioLength :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v29, p2

    .line 938
    .end local p2    # "presentationTime":J
    .local v29, "presentationTime":J
    :goto_1
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v5, v7, :cond_4

    .line 939
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 941
    .local v5, "audioEncoderInputBufferIndex":I
    if-ne v5, v12, :cond_3

    .line 942
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return-void

    .line 945
    :cond_3
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v5

    .line 947
    .local v7, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v7, v10, v12, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 949
    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v10, v12

    iput v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 950
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v14, v1

    invoke-static {v10, v12, v13, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 952
    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 953
    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v1, v10

    iput v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 954
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v27, 0x0

    move-object/from16 v25, v1

    move/from16 v26, v5

    move/from16 v28, v10

    move/from16 v31, v12

    .end local v5    # "audioEncoderInputBufferIndex":I
    .local v26, "audioEncoderInputBufferIndex":I
    invoke-virtual/range {v25 .. v31}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 957
    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 958
    add-long v29, v29, v16

    .line 960
    .end local v7    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v26    # "audioEncoderInputBufferIndex":I
    move/from16 v1, p1

    const/4 v12, -0x1

    const-wide/16 v13, 0x2710

    goto :goto_1

    .line 961
    .end local v2    # "newSize":I
    .end local v3    # "tempAudio":Ljava/nio/ByteBuffer;
    :cond_4
    goto/16 :goto_4

    .line 919
    .end local v29    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_5
    move/from16 v24, v2

    move/from16 v18, v5

    .line 962
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_9

    if-lez p1, :cond_9

    sget-wide v1, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_9

    .line 963
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 964
    .local v1, "tempAudio":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 965
    const-string v2, "SRCExe2 is called"

    invoke-static {v15, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v26, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v5, v6, v5

    div-int/lit8 v30, v5, 0x2

    move-object/from16 v29, v1

    move-object/from16 v25, v2

    move-object/from16 v28, v3

    .end local v1    # "tempAudio":Ljava/nio/ByteBuffer;
    .local v29, "tempAudio":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v25 .. v30}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 968
    move-object/from16 v2, v29

    .end local v29    # "tempAudio":Ljava/nio/ByteBuffer;
    .local v1, "newSize":I
    .local v2, "tempAudio":Ljava/nio/ByteBuffer;
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 969
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_6

    .line 970
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->audioVolume(Ljava/nio/ByteBuffer;I)V

    .line 972
    :cond_6
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 973
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v3, v5, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 975
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 976
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-wide/from16 v29, p2

    .line 977
    .end local p2    # "presentationTime":J
    .local v29, "presentationTime":J
    :goto_3
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v3, v5, :cond_8

    .line 978
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x2710

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 980
    .local v3, "audioEncoderInputBufferIndex":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    .line 981
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-void

    .line 984
    :cond_7
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v3

    .line 986
    .local v5, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v7, v8, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 988
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 989
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v10, v12

    invoke-static {v7, v8, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 991
    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 992
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 993
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v27, 0x0

    move/from16 v26, v3

    move-object/from16 v25, v7

    move/from16 v28, v8

    move/from16 v31, v9

    .end local v3    # "audioEncoderInputBufferIndex":I
    .restart local v26    # "audioEncoderInputBufferIndex":I
    invoke-virtual/range {v25 .. v31}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 996
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 997
    add-long v29, v29, v16

    .line 999
    .end local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v26    # "audioEncoderInputBufferIndex":I
    goto :goto_3

    .line 1000
    .end local v1    # "newSize":I
    .end local v2    # "tempAudio":Ljava/nio/ByteBuffer;
    :cond_8
    goto :goto_4

    .line 1001
    .end local v29    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_9
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x2710

    invoke-virtual {v1, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 1003
    .local v1, "audioEncoderInputBufferIndex":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_a

    .line 1004
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    return-void

    .line 1007
    :cond_a
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    .line 1009
    .local v2, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1010
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1011
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x0

    move-wide/from16 v7, p2

    move v4, v1

    .end local v1    # "audioEncoderInputBufferIndex":I
    .local v4, "audioEncoderInputBufferIndex":I
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1014
    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1018
    .end local v2    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "audioEncoderInputBufferIndex":I
    .end local v6    # "encoderInputBufferSize":I
    :cond_b
    move-wide/from16 v29, p2

    .end local p2    # "presentationTime":J
    .restart local v29    # "presentationTime":J
    :goto_4
    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderFinish()Z

    .line 1019
    return-void
.end method

.method private sendAudioToMuxer()V
    .locals 4

    .line 678
    nop

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-ltz v0, :cond_4

    .line 681
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 682
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 683
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 685
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-eqz v0, :cond_4

    .line 686
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saw input EOS: Audio audioEncoderDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioEncoderOutputBufferIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    nop

    .line 696
    :cond_4
    :goto_0
    return-void
.end method

.method private sendAudioToMuxer(IJJ)V
    .locals 34
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J

    .line 699
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p2

    .line 701
    :goto_0
    const/4 v6, 0x1

    if-ltz v1, :cond_d

    .line 702
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    aget-object v7, v7, v8

    .line 703
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 704
    .local v11, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 705
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v7, v1

    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 706
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const-string v14, " Enc NAACEncoderExe encoded_size: "

    const v8, 0x64000

    const/high16 v15, 0x41000000    # 8.0f

    const-wide/16 v9, 0x0

    const-string v12, " naac_time : "

    const/16 v16, 0x1000

    const-wide/16 v17, 0x5355

    const/4 v13, 0x2

    move-wide/from16 v19, v4

    const-string v4, "TranscodeLib"

    const/4 v5, 0x0

    if-eq v7, v13, :cond_2

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v12

    move v6, v13

    move-object v12, v11

    goto/16 :goto_4

    :cond_2
    :goto_1
    if-lez v1, :cond_9

    sget-wide v21, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v7, v21, v9

    if-eqz v7, :cond_9

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v21

    if-eqz v7, :cond_9

    .line 709
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v7, v7, v15

    if-lez v7, :cond_7

    .line 710
    move-wide/from16 v9, p4

    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/transcode/core/EncodeBase;->getRegionNumber(J)I

    move-result v7

    .line 711
    .local v7, "i":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Seekto region : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", end time :"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 712
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v12, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", RegionList.size() : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 713
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 711
    invoke-static {v4, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    const-string v12, "audio decoder: EOS"

    if-ge v7, v8, :cond_4

    .line 715
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    move-wide/from16 v16, v14

    int-to-long v14, v13

    mul-long v14, v14, v16

    invoke-virtual {v8, v14, v15, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 717
    :goto_2
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v5, v8

    mul-long v5, v5, v16

    cmp-long v5, v13, v5

    if-gez v5, :cond_5

    .line 719
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    cmp-long v5, v5, v19

    if-eqz v5, :cond_3

    .line 722
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_2

    .line 720
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 725
    :cond_4
    invoke-static {v4, v12}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 728
    :cond_5
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseOutputBuffer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const/4 v5, -0x1

    iput v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 733
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_6

    .line 735
    invoke-static {v4, v12}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 737
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 739
    :cond_6
    return-void

    .line 741
    .end local v7    # "i":I
    :cond_7
    move-wide/from16 v9, p4

    move-object v5, v12

    move-object v12, v11

    .end local v11    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v12, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 742
    .local v11, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 743
    const-string v6, "VSPExe2 is called"

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v9, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v6, v1, v6

    move/from16 v33, v13

    move v13, v6

    move/from16 v6, v33

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 746
    .local v7, "newSize":I
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v8, v7

    mul-int/2addr v8, v6

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 747
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v10, v7

    mul-int/2addr v10, v6

    invoke-virtual {v11, v8, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 749
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v7

    mul-int/2addr v9, v6

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 750
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 751
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VSPExe2 original size :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mTempAudioLength :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mTempAudioEncSize :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .end local p2    # "presentationTime":J
    .local v2, "presentationTime":J
    :goto_3
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v8, :cond_8

    .line 755
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 757
    .local v6, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v6, v8, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 759
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 760
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v13, v15

    const/4 v15, 0x0

    invoke-static {v8, v9, v10, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 762
    iput v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 763
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 764
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/16 v21, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 765
    add-long v2, v2, v17

    .line 766
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 768
    .local v27, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v24, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v26, v6

    move-object/from16 v23, v8

    move/from16 v28, v9

    .end local v6    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .local v26, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v23 .. v28}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 770
    move-object/from16 v8, v27

    .end local v27    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v6, "encodedSize":I
    .local v8, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 p2, v2

    .end local v2    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 773
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 774
    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 775
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v8, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 777
    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 778
    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    add-long v2, v2, v17

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 779
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/16 v21, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 780
    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 781
    .end local v6    # "encodedSize":I
    .end local v8    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v26    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    move-wide/from16 v2, p2

    goto/16 :goto_3

    .line 782
    .end local v7    # "newSize":I
    .end local v11    # "tempAudio":Ljava/nio/ByteBuffer;
    .end local p2    # "presentationTime":J
    .restart local v2    # "presentationTime":J
    :cond_8
    goto/16 :goto_6

    .line 706
    .end local v2    # "presentationTime":J
    .end local v12    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v11, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local p2    # "presentationTime":J
    :cond_9
    move-object v5, v12

    move v6, v13

    move-object v12, v11

    .line 783
    .end local v11    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v12    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    :goto_4
    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v7

    if-eqz v7, :cond_c

    if-lez v1, :cond_c

    sget-wide v19, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v7, v19, v9

    if-eqz v7, :cond_c

    .line 784
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 785
    .local v7, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 786
    const-string v8, "SRCExe2 is called"

    invoke-static {v4, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v9, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v11, v1, v11

    div-int/lit8 v13, v11, 0x2

    move-object v11, v12

    move-object v12, v7

    .end local v7    # "tempAudio":Ljava/nio/ByteBuffer;
    .restart local v11    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v12, "tempAudio":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 789
    move-object v8, v12

    move-object v12, v11

    .end local v11    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v7, "newSize":I
    .local v8, "tempAudio":Ljava/nio/ByteBuffer;
    .local v12, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v7

    mul-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 790
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v9, v9, v15

    if-eqz v9, :cond_a

    .line 791
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v7

    mul-int/2addr v9, v6

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->audioVolume(Ljava/nio/ByteBuffer;I)V

    .line 793
    :cond_a
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 794
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v11, v7

    mul-int/2addr v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 796
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v10, v7

    mul-int/2addr v10, v6

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 797
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 798
    .end local p2    # "presentationTime":J
    .restart local v2    # "presentationTime":J
    :goto_5
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v9, :cond_b

    .line 799
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 800
    .local v6, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v6, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 801
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 802
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v13, v15

    const/4 v15, 0x0

    invoke-static {v9, v10, v11, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    iput v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 805
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 806
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/16 v21, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 807
    add-long v2, v2, v17

    .line 808
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 809
    .restart local v27    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v24, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v26, v6

    move-object/from16 v23, v9

    move/from16 v28, v10

    .end local v6    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .restart local v26    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v23 .. v28}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 811
    move-object/from16 v9, v27

    .end local v27    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v6, "encodedSize":I
    .local v9, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 p2, v2

    .end local v2    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 814
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 815
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 816
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v9, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 818
    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 819
    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    add-long v2, v2, v17

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 820
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/16 v21, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 821
    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 822
    .end local v6    # "encodedSize":I
    .end local v9    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v26    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    move-wide/from16 v2, p2

    goto/16 :goto_5

    .line 823
    .end local v7    # "newSize":I
    .end local v8    # "tempAudio":Ljava/nio/ByteBuffer;
    .end local p2    # "presentationTime":J
    .restart local v2    # "presentationTime":J
    :cond_b
    goto :goto_6

    .line 824
    .end local v2    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_c
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 825
    .local v6, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 826
    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 827
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 828
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/16 v21, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 829
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 830
    .local v31, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v28, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v30, v6

    move-object/from16 v27, v7

    move/from16 v32, v8

    .end local v6    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .local v30, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v27 .. v32}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 832
    move-object/from16 v7, v31

    .end local v31    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v6, "encodedSize":I
    .local v7, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Enc NAACEncoderExe2 encoded_size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 835
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 836
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 837
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v7, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 839
    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 840
    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    add-long v4, v4, v17

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 841
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/16 v21, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 842
    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 845
    .end local v6    # "encodedSize":I
    .end local v7    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v30    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local p2    # "presentationTime":J
    .restart local v2    # "presentationTime":J
    :cond_d
    :goto_6
    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderFinish()Z

    move-result v4

    if-eqz v4, :cond_e

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    goto :goto_7

    :cond_e
    const/4 v5, 0x1

    .line 847
    :goto_7
    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    invoke-virtual {v0, v6, v7, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 848
    return-void
.end method

.method private sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6
    .param p1, "encoderOutputBufferIndex"    # I
    .param p2, "videoEncoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1532
    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkEncoderOutputBufferIndex(I)Z

    move-result v0

    const-string v1, "TranscodeLib"

    if-nez v0, :cond_0

    .line 1533
    const-string v0, "video encoder: sendVideoFramesToMuxer condition error"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    return-void

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1538
    .local v0, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1539
    const-string v2, "video encoder: codec config buffer"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1542
    return-void

    .line 1545
    :cond_1
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_2

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video encoder: writing sample data timestamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    invoke-virtual {v2, v4, v0, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    goto :goto_0

    .line 1551
    :catch_0
    move-exception v2

    .line 1552
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to writeSampleData videoEncoderDone? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 1557
    :cond_2
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 1558
    const-string v2, "video encoder: EOS"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    .line 1562
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1566
    goto :goto_1

    .line 1563
    :catch_1
    move-exception v2

    .line 1564
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to release output buffer of encoder videoEncoderDone? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    return-void
.end method

.method private setDecodeMaxInputSize(Landroid/media/MediaFormat;)V
    .locals 6
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .line 2646
    const-string v0, "max-input-size"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 2647
    .local v2, "maxInputSize":I
    if-ne v2, v1, :cond_1

    .line 2648
    const-string v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 2649
    .local v1, "inputWidth":I
    const-string v3, "height"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 2650
    .local v3, "inputHeight":I
    mul-int v4, v1, v3

    const v5, 0x7e9000

    if-le v4, v5, :cond_0

    .line 2651
    const/high16 v2, 0xf00000

    goto :goto_0

    .line 2653
    :cond_0
    const/high16 v2, 0x800000

    .line 2655
    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2657
    .end local v1    # "inputWidth":I
    .end local v3    # "inputHeight":I
    :cond_1
    return-void
.end method

.method private setOrientation(I)V
    .locals 1
    .param p1, "degree"    # I

    .line 2369
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRotation:I

    add-int/2addr p1, v0

    .line 2370
    rem-int/lit16 p1, p1, 0x168

    .line 2371
    sparse-switch p1, :sswitch_data_0

    .line 2385
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    goto :goto_0

    .line 2381
    :sswitch_0
    const/16 v0, 0x10e

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2382
    goto :goto_0

    .line 2377
    :sswitch_1
    const/16 v0, 0xb4

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2378
    goto :goto_0

    .line 2373
    :sswitch_2
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2374
    nop

    .line 2388
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private setStereoAudioChannelForDolbyAudioCodec()V
    .locals 2

    .line 2779
    const/4 v0, 0x2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2780
    const-string v0, "TranscodeLib"

    const-string v1, "Audio ac3 type :  mOutputAudioChannelCount is changed."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    return-void
.end method

.method protected static unsignedIntToLong([B)J
    .locals 5
    .param p0, "b"    # [B

    .line 225
    const-wide/16 v0, 0x0

    .line 226
    .local v0, "l":J
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 227
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 228
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 229
    shl-long/2addr v0, v2

    .line 230
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 231
    shl-long/2addr v0, v2

    .line 232
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 234
    return-wide v0
.end method


# virtual methods
.method protected audioVolume(Ljava/nio/ByteBuffer;I)V
    .locals 10
    .param p1, "pcmData"    # Ljava/nio/ByteBuffer;
    .param p2, "dataLength"    # I

    .line 570
    const v0, 0x3dcccccd    # 0.1f

    .line 571
    .local v0, "fadeSampleRateConvFactor":F
    div-int/lit8 v1, p2, 0x4

    .line 572
    .local v1, "buflen":I
    const/4 v2, 0x0

    .line 573
    .local v2, "cnt":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioVolume  fade_sampleRateConvFactor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data_length; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 578
    .local v3, "outBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 579
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 581
    :goto_0
    if-lez v1, :cond_0

    .line 582
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    .line 583
    .local v5, "temp":S
    const v6, 0xffff

    and-int v7, v5, v6

    int-to-short v5, v7

    .line 584
    int-to-float v7, v5

    mul-float/2addr v7, v0

    float-to-int v7, v7

    int-to-short v5, v7

    .line 585
    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 586
    const v7, 0xff00

    and-int v8, v5, v7

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 587
    add-int/lit8 v2, v2, 0x2

    .line 589
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    int-to-short v5, v8

    .line 590
    and-int/2addr v6, v5

    int-to-short v5, v6

    .line 591
    int-to-float v6, v5

    mul-float/2addr v6, v0

    float-to-int v6, v6

    int-to-short v5, v6

    .line 592
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 593
    and-int v6, v5, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 594
    add-int/lit8 v2, v2, 0x2

    .line 595
    nop

    .end local v5    # "temp":S
    add-int/lit8 v1, v1, -0x1

    .line 596
    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 598
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 599
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 601
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 604
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 605
    return-void
.end method

.method protected calculateIsDrop([BJ)Z
    .locals 9
    .param p1, "a"    # [B
    .param p2, "presentationTimeUs"    # J

    .line 2095
    const/4 v0, 0x0

    .line 2096
    .local v0, "isDrop":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->getLayerNumber([B)I

    move-result v4

    .line 2097
    .local v4, "layerNumber":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowFastExceptSlowV2120NoneSVC()Z

    move-result v1

    const-string v8, "TranscodeLib"

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2104
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2105
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-direct {p0, p2, p3, v4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->procSuperSlowVideo(JII)Z

    move-result v0

    .line 2106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mModifiedVideotime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-wide v2, p2

    goto :goto_1

    .line 2109
    :cond_1
    const-string v1, "Need to check recording mode and SEF data"

    invoke-static {v8, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-wide v2, p2

    goto :goto_1

    .line 2100
    :cond_2
    :goto_0
    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNumOfSVCLayers:I

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    move-object v1, p0

    move-wide v2, p2

    .end local p2    # "presentationTimeUs":J
    .local v2, "presentationTimeUs":J
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/transcode/core/EncodeBase;->procSVCLayerDrop(JIIII)Z

    move-result v0

    .line 2102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "layerNumber: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", isDrop: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", mModifiedVideotime: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :goto_1
    return v0
.end method

.method protected checkDecAudio(IZ)I
    .locals 11
    .param p1, "size"    # I
    .param p2, "isAudioSolution"    # Z

    .line 851
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    aget-object v0, v0, v1

    .line 852
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 853
    .local v0, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 854
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 855
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 857
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 858
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    div-int v1, p1, v1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v1, v3

    .line 860
    .local v1, "encoderInputBufferSize":I
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/lit8 v3, v3, 0x2

    .line 861
    .local v3, "outputBitStreamSize":I
    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    mul-int/lit8 v4, v4, 0x2

    .line 863
    .local v4, "inputBitStreamSize":I
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 864
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 865
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    div-int v6, p1, v4

    if-ge v5, v6, :cond_1

    .line 866
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-ge v6, v7, :cond_0

    .line 867
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    mul-int v8, v5, v3

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    mul-int v9, v5, v4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    .line 868
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 867
    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 869
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    mul-int v8, v5, v3

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    mul-int v9, v5, v4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    .line 870
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 869
    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 866
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 865
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 873
    .end local v3    # "outputBitStreamSize":I
    .end local v4    # "inputBitStreamSize":I
    .end local v5    # "i":I
    :cond_1
    goto :goto_2

    .line 874
    .end local v1    # "encoderInputBufferSize":I
    :cond_2
    move v1, p1

    .line 876
    .restart local v1    # "encoderInputBufferSize":I
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 877
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 878
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 880
    :goto_2
    if-nez p2, :cond_3

    .line 881
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 882
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 883
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 885
    :cond_3
    return v1
.end method

.method protected checkDecoderFinish()Z
    .locals 4

    .line 1022
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    const/4 v2, 0x0

    const-string v3, "TranscodeLib"

    if-ge v0, v1, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1024
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1025
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio decoder: EOS  mTempAudioLength : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1030
    :cond_0
    return v1

    .line 1032
    :cond_1
    const-string v0, "Not finished yet"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    return v2
.end method

.method protected checkMuxerStart()V
    .locals 5

    .line 321
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_6

    .line 323
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    :goto_0
    nop

    .line 325
    .local v0, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-author"

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 327
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-transcoding"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 328
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 329
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-recording-mode"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set recording mode for NDE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TranscodeLib"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_2
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v4, "param-meta-brand-model-name"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    .line 338
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v1, :cond_4

    .line 339
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 342
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v1, :cond_5

    .line 343
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 345
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 346
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    .line 348
    .end local v0    # "filepath":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method protected checkOutputVideoBitRate()V
    .locals 10

    .line 2547
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    .line 2548
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->m2ndTimeEncoding:Z

    if-nez v0, :cond_0

    const-string v0, "video/avc"

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2550
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSizeFraction:F

    .line 2553
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-eqz v0, :cond_1

    .line 2554
    const/16 v0, 0x7d00

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    .line 2557
    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    if-ne v0, v1, :cond_3

    .line 2558
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSizeFraction:F

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    div-int/lit16 v7, v0, 0x3e8

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v9, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    goto :goto_0

    .line 2563
    :cond_2
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    if-ne v0, v1, :cond_3

    .line 2564
    new-instance v2, Lcom/samsung/android/transcode/info/ExportMediaInfo;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    .line 2566
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHDR10Plus()Z

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/transcode/info/ExportMediaInfo;-><init>(IIILjava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 2564
    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    .line 2569
    :cond_3
    :goto_0
    return-void
.end method

.method protected checkSourceFrameRate(Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .line 2535
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2537
    :try_start_0
    const-string v0, "frame-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    goto :goto_0

    .line 2538
    :catch_0
    move-exception v0

    .line 2540
    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    .line 2541
    :cond_0
    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfo;->getVideoFramerate()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2543
    :cond_1
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v1, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    .line 2544
    return-void
.end method

.method protected checkTrimAudioEndUs(Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2716
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2717
    if-eqz p1, :cond_0

    .line 2718
    const-string v0, "durationUs"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    .line 2720
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrimAudioEndUs was 0 but updated mTrimAudioEndUs :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginTrimEndUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    :cond_1
    return-void
.end method

.method protected createAudioExtractor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2680
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    .line 2681
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto :goto_0

    .line 2682
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2687
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2691
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 2693
    :goto_0
    return-void

    .line 2688
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createVideoEncoder()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2409
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkOutputVideoFrameRate()V

    .line 2410
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkOutputVideoBitRate()V

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOutputVideoBitRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputAudioBitRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSourceFrameRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputVideoFrameRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFramesSkipInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeepSourceFrameRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputVideoTargetFrameRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 2421
    .local v0, "outputVideoFormat":Landroid/media/MediaFormat;
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->supportHierB()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    const-string v4, "video/hevc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHLG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2422
    const/4 v2, 0x1

    .line 2423
    .local v2, "baseLayer":I
    const/4 v4, 0x2

    .line 2424
    .local v4, "enhenceLayer":I
    const-string v5, "ro.hardware"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2425
    .local v5, "chipName":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, "qcom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2426
    const/4 v4, 0x3

    .line 2428
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.generic."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts-schema"

    invoke-virtual {v0, v7, v6}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string v6, "max-bframes"

    invoke-virtual {v0, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2431
    .end local v2    # "baseLayer":I
    .end local v4    # "enhenceLayer":I
    .end local v5    # "chipName":Ljava/lang/String;
    :cond_1
    const-string v2, "color-format"

    const v4, 0x7f000789

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2433
    const-string v2, "bitrate"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2434
    const-string v2, "frame-rate"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2435
    const-string v2, "i-frame-interval"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2436
    const-string v2, "priority"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2437
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkBitrateMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2438
    const-string v2, "bitrate-mode"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2441
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-nez v2, :cond_3

    .line 2442
    const-string v2, "color-standard"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2445
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output video format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 2449
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setVideoEncoderAsyncCallback()V

    .line 2450
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2453
    new-instance v1, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    .line 2454
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 2455
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    .line 2456
    return-void
.end method

.method protected createVideoExtractor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2391
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    .line 2392
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2393
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2396
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2398
    :goto_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->setOrientation(I)V

    .line 2399
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 2401
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_2

    .line 2402
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_1

    .line 2404
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2406
    :goto_1
    return-void

    .line 2396
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getRegionNumber(J)I
    .locals 6
    .param p1, "timeUs"    # J

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegionNumber timeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 612
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 613
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegionNumber number :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return v0

    .line 611
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected getSlowfastSeektime(J)J
    .locals 14
    .param p1, "seekTimeUs"    # J

    .line 1312
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1313
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1318
    const-wide/16 v0, 0x0

    .line 1322
    .local v0, "timeDelta":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1323
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v3

    .line 1324
    .local v3, "timescale":F
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 1325
    .local v4, "regStartTime":J
    iget-object v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v6

    .line 1326
    .local v8, "regEndTime":J
    sub-long v6, v8, v4

    .line 1328
    .local v6, "regDuration":J
    const v10, 0x49742400    # 1000000.0f

    mul-float/2addr v10, v3

    float-to-long v10, v10

    mul-long/2addr v10, v6

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    .line 1330
    .local v10, "regScaledDuration":J
    add-long v12, v4, v0

    cmp-long v12, p1, v12

    if-ltz v12, :cond_1

    add-long v12, v10, v4

    add-long/2addr v12, v0

    cmp-long v12, p1, v12

    if-gtz v12, :cond_1

    .line 1332
    sub-long v12, p1, v4

    sub-long/2addr v12, v0

    long-to-float v12, v12

    div-float/2addr v12, v3

    float-to-long v12, v12

    add-long/2addr v12, v4

    .line 1334
    .end local p1    # "seekTimeUs":J
    .local v12, "seekTimeUs":J
    goto :goto_2

    .line 1335
    .end local v12    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_1
    add-long v12, v10, v4

    add-long/2addr v12, v0

    cmp-long v12, p1, v12

    if-lez v12, :cond_2

    .line 1336
    sub-long v12, v10, v6

    add-long/2addr v0, v12

    .line 1337
    iget-object v12, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v2, v12, :cond_4

    .line 1338
    sub-long v12, p1, v0

    .line 1339
    .end local p1    # "seekTimeUs":J
    .restart local v12    # "seekTimeUs":J
    goto :goto_2

    .line 1341
    .end local v12    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_2
    add-long v12, v4, v0

    cmp-long v12, p1, v12

    if-gez v12, :cond_4

    .line 1342
    if-nez v2, :cond_3

    .line 1343
    goto :goto_1

    .line 1345
    :cond_3
    sub-long v12, p1, v0

    .line 1346
    .end local p1    # "seekTimeUs":J
    .restart local v12    # "seekTimeUs":J
    goto :goto_2

    .line 1322
    .end local v10    # "regScaledDuration":J
    .end local v12    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1350
    .end local v0    # "timeDelta":J
    .end local v2    # "i":I
    .end local v3    # "timescale":F
    .end local v4    # "regStartTime":J
    .end local v6    # "regDuration":J
    .end local v8    # "regEndTime":J
    :cond_5
    :goto_1
    move-wide v12, p1

    .end local p1    # "seekTimeUs":J
    .restart local v12    # "seekTimeUs":J
    :goto_2
    nop

    .line 1355
    return-wide v12

    .line 1351
    .end local v12    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_6
    const-string v0, "TranscodeLib"

    const-string v1, "There is no region info."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    return-wide p1
.end method

.method protected getSuperslowSeektime(J)J
    .locals 20
    .param p1, "seekTimeUs"    # J

    .line 1359
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1360
    const-wide/16 v3, -0x1

    return-wide v3

    .line 1363
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    const-string v4, "TranscodeLib"

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1364
    const-wide/16 v5, 0x0

    .line 1369
    .local v5, "timeDelta":J
    move-wide/from16 v7, p1

    .line 1371
    .local v7, "tmpSeekTimeUs":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 1372
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    .line 1373
    .local v9, "regStartTime":J
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v11

    .line 1374
    .local v13, "regEndTime":J
    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    move-wide/from16 v16, v11

    int-to-long v11, v15

    mul-long v11, v11, v16

    .line 1375
    .local v11, "regAudioEndTime":J
    sub-long v15, v13, v11

    .line 1376
    .local v15, "regDuration":J
    const/16 v17, 0x0

    .line 1378
    .local v17, "isCancel":Z
    move-wide/from16 v18, v15

    .end local v15    # "regDuration":J
    .local v18, "regDuration":J
    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v0, 0x9

    if-ne v15, v0, :cond_1

    .line 1379
    const/16 v17, 0x1

    move/from16 v0, v17

    goto :goto_1

    .line 1378
    :cond_1
    move/from16 v0, v17

    .line 1382
    .end local v17    # "isCancel":Z
    .local v0, "isCancel":Z
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    const-string v4, "[getSuperslowSeektime] regStartTime = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ",regEndTime : "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ",regAudioEndTime: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", isCancel ="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ",tmpSeekTimeUs: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", timeDelta:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", seekTimeUs:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", i :"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v15, v16

    invoke-static {v15, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    cmp-long v4, v7, v11

    if-ltz v4, :cond_3

    cmp-long v4, v7, v13

    if-gtz v4, :cond_3

    .line 1389
    if-eqz v0, :cond_2

    .line 1390
    add-long v5, v5, v18

    .line 1391
    add-long v7, v7, v18

    .line 1393
    :cond_2
    move-object/from16 v4, p0

    move/from16 v16, v0

    .end local v0    # "isCancel":Z
    .local v16, "isCancel":Z
    iget-object v0, v4, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_7

    .line 1394
    add-long v0, v1, v5

    .line 1395
    .end local p1    # "seekTimeUs":J
    .local v0, "seekTimeUs":J
    goto :goto_3

    .line 1388
    .end local v16    # "isCancel":Z
    .local v0, "isCancel":Z
    .restart local p1    # "seekTimeUs":J
    :cond_3
    move-object/from16 v4, p0

    move/from16 v16, v0

    .line 1399
    .end local v0    # "isCancel":Z
    .restart local v16    # "isCancel":Z
    cmp-long v0, v7, v13

    if-lez v0, :cond_5

    .line 1400
    if-eqz v16, :cond_4

    .line 1401
    add-long v5, v5, v18

    .line 1402
    add-long v7, v7, v18

    .line 1404
    :cond_4
    iget-object v0, v4, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_7

    .line 1405
    add-long v0, v1, v5

    .line 1406
    .end local p1    # "seekTimeUs":J
    .local v0, "seekTimeUs":J
    goto :goto_3

    .line 1410
    .end local v0    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_5
    cmp-long v0, v7, v11

    if-gez v0, :cond_7

    .line 1411
    if-nez v3, :cond_6

    .line 1412
    goto :goto_2

    .line 1414
    :cond_6
    add-long v0, v1, v5

    .line 1415
    .end local p1    # "seekTimeUs":J
    .restart local v0    # "seekTimeUs":J
    goto :goto_3

    .line 1371
    .end local v0    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    move-object v4, v15

    goto/16 :goto_0

    .end local v9    # "regStartTime":J
    .end local v11    # "regAudioEndTime":J
    .end local v13    # "regEndTime":J
    .end local v16    # "isCancel":Z
    .end local v18    # "regDuration":J
    :cond_8
    move-object v15, v4

    move-object v4, v0

    .line 1419
    .end local v3    # "i":I
    .end local v5    # "timeDelta":J
    .end local v7    # "tmpSeekTimeUs":J
    :goto_2
    move-wide v0, v1

    .end local p1    # "seekTimeUs":J
    .restart local v0    # "seekTimeUs":J
    :goto_3
    nop

    .line 1424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSuperslowSeektime] seekTimeUs= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    return-wide v0

    .line 1363
    .end local v0    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_9
    move-object v15, v4

    move-object v4, v0

    .line 1420
    const-string v0, "There is no region info."

    invoke-static {v15, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    return-wide v1
.end method

.method protected initialize_audio()V
    .locals 4

    .line 2259
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 2260
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 2262
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 2263
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 2265
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2266
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2268
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2271
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    .line 2272
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 2273
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 2275
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 2278
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 2279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 2280
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 2282
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 2283
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 2284
    const v2, 0x64000

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    .line 2285
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 2286
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 2287
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    .line 2289
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 2290
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 2291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    .line 2292
    return-void
.end method

.method protected initialize_video()V
    .locals 3

    .line 2160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    .line 2162
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    .line 2164
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    .line 2165
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 2166
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2167
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 2169
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    .line 2170
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    .line 2172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2174
    new-instance v0, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-direct {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    .line 2175
    return-void
.end method

.method protected isSlow120(II)Z
    .locals 1
    .param p1, "recordingMode"    # I
    .param p2, "recordingFps"    # I

    .line 1839
    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    const/16 v0, 0x78

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isSlowFast()Z
    .locals 3

    .line 550
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method protected isSlowV2()Z
    .locals 2

    .line 2896
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isSuperSlow()Z
    .locals 2

    .line 2087
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$preprocessAudioOutputFormat$1$com-samsung-android-transcode-core-EncodeBase()V
    .locals 1

    .line 2853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    return-void
.end method

.method protected prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const-string v0, "TranscodeLib"

    const-string v1, "prepare video and audio codec"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aput-boolean v2, v0, v1

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareVideoCodec()V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareAudioCodec()V

    .line 168
    return-void
.end method

.method protected prepareAudioCodec()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2797
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createAudioExtractor()V

    .line 2798
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 2799
    .local v0, "audioInputTrack":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMute:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 2803
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 2804
    .local v1, "inputAudioFormat":Landroid/media/MediaFormat;
    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkCopyAudio(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2805
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2806
    return-void

    .line 2809
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2810
    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTrimAudioEndUs(Landroid/media/MediaFormat;)V

    .line 2812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio input format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    const-string v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2814
    const-string v2, "channel-count"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2816
    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2817
    .local v2, "mimeType":Ljava/lang/String;
    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->isDolbyAudioCodec(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2818
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->preprocessAudioOutputFormat(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 2821
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->getMaxInputSize(Landroid/media/MediaFormat;)I

    move-result v4

    .line 2822
    .local v4, "maxInputSize":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioChannelCount()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2823
    return-void

    .line 2825
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createAudioHandle()V

    .line 2827
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMimeType:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-static {v5, v6, v7}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    .line 2829
    .local v5, "outputAudioFormat":Landroid/media/MediaFormat;
    if-eqz v4, :cond_5

    .line 2830
    const-string v6, "max-input-size"

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2832
    :cond_5
    const-string v6, "bitrate"

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2833
    const-string v6, "aac-profile"

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioAACProfile:I

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2834
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio output format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 2836
    .local v3, "audioCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    .line 2838
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->createInputAudioDecoder(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 2839
    return-void

    .line 2800
    .end local v1    # "inputAudioFormat":Landroid/media/MediaFormat;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "audioCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "maxInputSize":I
    .end local v5    # "outputAudioFormat":Landroid/media/MediaFormat;
    :cond_6
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2801
    return-void
.end method

.method protected prepareForRewrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareVideoCodecNeo()V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareAudioCodec()V

    .line 176
    return-void
.end method

.method protected prepareVideoCodec()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2572
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createVideoExtractor()V

    .line 2574
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    .line 2575
    .local v1, "videoTrack":I
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 2577
    .local v2, "inputFormat":Landroid/media/MediaFormat;
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->supportConverter()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mConvert:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHDR10()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHLG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2578
    :cond_0
    const-string v0, "ro.soc.model"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2579
    .local v0, "socModelName":Ljava/lang/String;
    const-string v4, "ro.hardware.chipname"

    invoke-static {v4, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2581
    .local v4, "chipName":Ljava/lang/String;
    const-string v5, "exynos2100"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2582
    const-string v5, "vendor.sec-dec-output.image-convert.value"

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2583
    const-string v5, "vendor.sec-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2584
    const-string v5, "vendor.sec-dec-output.buffers.usage.value"

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 2585
    :cond_1
    const-string v5, "sm8350"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2586
    const-string v5, "vendor.qti-ext-dec-forceNonUBWC.value"

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2587
    const-string v5, "vendor.qti-ext-imageformat-filter-enabled.value"

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2588
    const-string v5, "vendor.qti-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 2589
    :cond_2
    const-string v5, "sm8450"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "s5e9925"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 2592
    :cond_3
    const-string v5, "color-transfer-request"

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 2590
    :cond_4
    :goto_0
    const-string v5, "vendor.renderengine-hdr-tonemap.value"

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2594
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->setDecodeMaxInputSize(Landroid/media/MediaFormat;)V

    .line 2596
    .end local v0    # "socModelName":Ljava/lang/String;
    .end local v4    # "chipName":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input video format: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TranscodeLib"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_6

    .line 2599
    const-string v0, "durationUs"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2600
    .local v5, "duration":J
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/transcode/core/EncodeBase;->setOriginalTrimTime(J)V

    .line 2602
    .end local v5    # "duration":J
    :cond_6
    invoke-virtual {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSourceFrameRate(Landroid/media/MediaFormat;)V

    .line 2604
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createVideoEncoder()V

    .line 2607
    :try_start_0
    const-string v0, "width"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 2608
    .local v11, "originWidth":I
    const-string v0, "height"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    .line 2611
    .local v12, "originHeight":I
    int-to-float v0, v11

    int-to-float v5, v12

    div-float/2addr v0, v5

    .line 2612
    .local v0, "originAspectRatio":F
    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    int-to-float v6, v6

    div-float v14, v5, v6

    .line 2613
    .local v14, "targetAspectRatio":F
    cmpl-float v5, v0, v14

    if-lez v5, :cond_7

    .line 2614
    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    .line 2615
    .local v5, "width":I
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    mul-int/2addr v6, v12

    div-int/2addr v6, v11

    .line 2616
    .local v6, "height":I
    const/4 v7, 0x0

    .line 2617
    .local v7, "x":I
    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    move v9, v5

    move v10, v6

    .local v8, "y":I
    goto :goto_2

    .line 2619
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_7
    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    move v6, v5

    .line 2620
    .restart local v6    # "height":I
    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v5, v11

    div-int/2addr v5, v12

    .line 2621
    .restart local v5    # "width":I
    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    .line 2622
    .restart local v7    # "x":I
    const/4 v8, 0x0

    move v9, v5

    move v10, v6

    .line 2625
    .end local v5    # "width":I
    .end local v6    # "height":I
    .restart local v8    # "y":I
    .local v9, "width":I
    .local v10, "height":I
    :goto_2
    new-instance v5, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    sget-object v6, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v6, v6, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    iget-boolean v13, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(IIIIIIIZ)V

    iput-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2630
    .end local v0    # "originAspectRatio":F
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "originWidth":I
    .end local v12    # "originHeight":I
    .end local v14    # "targetAspectRatio":F
    goto :goto_3

    .line 2627
    :catch_0
    move-exception v0

    .line 2628
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Can\'t get input video resolution"

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    new-instance v4, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {v4, v5}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    .line 2632
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-nez v0, :cond_8

    .line 2634
    const-string v0, "priority"

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2636
    :cond_8
    nop

    .line 2637
    const-string v0, "mime"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2636
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 2640
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setVideoDecoderAsyncCallback()V

    .line 2641
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2642
    return-void
.end method

.method protected prepareVideoCodecNeo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2302
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    .line 2303
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2304
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2307
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2311
    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2312
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    .line 2314
    :cond_2
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    .line 2316
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->setOrientation(I)V

    .line 2317
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 2318
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    .line 2319
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input video auth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordingMode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_3

    .line 2325
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_1

    .line 2327
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2329
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 2331
    .local v0, "videoTrack":I
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 2332
    .local v2, "inputFormat":Landroid/media/MediaFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input video format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 2335
    const-string v3, "durationUs"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2336
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSMConvert:Z

    if-eqz v3, :cond_5

    .line 2337
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v3

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_4

    .line 2338
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    mul-long/2addr v9, v7

    invoke-virtual {v3, v9, v10}, Lcom/samsung/android/transcode/util/SEFHelper;->getEditedDuration(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    goto :goto_2

    .line 2341
    :cond_4
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v3, v7

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2344
    :cond_5
    :goto_2
    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    .line 2345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOriginTrimEndUs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    :cond_6
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2351
    :try_start_0
    const-string v3, "frame-rate"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    goto :goto_3

    .line 2352
    :catch_0
    move-exception v3

    .line 2354
    :goto_3
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lez v3, :cond_7

    .line 2355
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2358
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOutputVideoFrameRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isRewritable(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    .line 2361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "askRewritable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    if-eqz v1, :cond_8

    .line 2366
    return-void

    .line 2364
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unable to handle input file"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2308
    .end local v0    # "videoTrack":I
    .end local v2    # "inputFormat":Landroid/media/MediaFormat;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected pushSampleDataToDecoderInputBuffer(IIJZ)V
    .locals 16
    .param p1, "inputBufferIndex"    # I
    .param p2, "size"    # I
    .param p3, "time"    # J
    .param p5, "isDrop"    # Z

    .line 2142
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    if-ltz p2, :cond_1

    .line 2143
    if-nez p5, :cond_0

    .line 2144
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2145
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    .line 2144
    const/4 v4, 0x0

    move/from16 v3, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 2147
    :cond_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2148
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v15

    .line 2147
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2150
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 2152
    :cond_1
    const-string v1, "TranscodeLib"

    const-string v2, "video extractor: EOS "

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v13, 0x0

    const/4 v15, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2156
    :goto_1
    return-void
.end method

.method protected releaseFramemanager()V
    .locals 2

    .line 2980
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    if-eqz v0, :cond_2

    .line 2981
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->queSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 2982
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->dequeueFrame()Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    move-result-object v0

    .line 2983
    .local v0, "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    if-nez v0, :cond_0

    .line 2984
    return-void

    .line 2986
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 2987
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z

    .line 2989
    .end local v0    # "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    :cond_1
    goto :goto_0

    .line 2991
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    .line 2992
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    .line 2993
    return-void
.end method

.method protected sendFrametoEncoder()V
    .locals 8

    .line 1636
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    return-void

    .line 1640
    :cond_0
    const/4 v0, 0x0

    .line 1641
    .local v0, "count":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->queSize()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v1, :cond_7

    .line 1643
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->dequeueFrame()Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    move-result-object v1

    .line 1644
    .local v1, "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    if-nez v1, :cond_1

    .line 1645
    return-void

    .line 1648
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1649
    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z

    move-result v2

    const-string v3, "TranscodeLib"

    if-eqz v2, :cond_5

    .line 1651
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_2
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1659
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    .line 1660
    iget-wide v4, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 1661
    iget-wide v4, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSkipFrames(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    :cond_3
    goto :goto_1

    .line 1663
    :catch_0
    move-exception v2

    .line 1664
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 1665
    .local v4, "msg":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    const-string v5, "Surface frame wait timed out"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 1669
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1673
    .end local v2    # "r":Ljava/lang/RuntimeException;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_5
    :goto_1
    iget v2, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 1674
    const-string v2, "video decoder: EOS"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    .line 1676
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 1677
    goto :goto_2

    .line 1679
    .end local v1    # "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    :cond_6
    goto/16 :goto_0

    .line 1680
    :cond_7
    :goto_2
    return-void
.end method

.method protected sendVideoToDecoder(I)V
    .locals 11
    .param p1, "decoderInputBufferIndex"    # I

    .line 2116
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2117
    .local v0, "decoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 2118
    .local v5, "size":I
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    .line 2119
    .local v9, "presentationTime":J
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2121
    iput-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    .line 2123
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v1, :cond_0

    .line 2125
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 2126
    .local v1, "a":[B
    const/4 v3, 0x4

    .line 2127
    .local v3, "offset":I
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2128
    array-length v4, v1

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2129
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2130
    invoke-virtual {p0, v1, v9, v10}, Lcom/samsung/android/transcode/core/EncodeBase;->calculateIsDrop([BJ)Z

    .line 2132
    .end local v1    # "a":[B
    .end local v3    # "offset":I
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    if-eqz v1, :cond_1

    .line 2133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2136
    :cond_1
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    iget-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    move-object v3, p0

    move v4, p1

    .end local p1    # "decoderInputBufferIndex":I
    .local v4, "decoderInputBufferIndex":I
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/transcode/core/EncodeBase;->pushSampleDataToDecoderInputBuffer(IIJZ)V

    .line 2138
    return-void
.end method

.method protected setOriginalTrimTime(J)V
    .locals 5
    .param p1, "duration"    # J

    .line 2460
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2461
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v0, :cond_1

    .line 2462
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getEditedDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    goto :goto_0

    .line 2465
    :cond_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2468
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginTrimEndUs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    return-void
.end method

.method protected setVideoDecoderAsyncCallback()V
    .locals 2

    .line 2219
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/samsung/android/transcode/core/EncodeBase$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/core/EncodeBase$2;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 2256
    return-void
.end method

.method protected setVideoEncoderAsyncCallback()V
    .locals 2

    .line 2179
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/samsung/android/transcode/core/EncodeBase$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/core/EncodeBase$1;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 2216
    return-void
.end method

.method protected startAudioEncoding()V
    .locals 0

    .line 1470
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToDecoder()V

    .line 1479
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioDecoderOutput()V

    .line 1485
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioDecoderOutput()V

    .line 1492
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToMuxer()V

    .line 1494
    return-void
.end method

.method protected startAudioRewriting()V
    .locals 0

    .line 1497
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioFormat()V

    .line 1498
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getandsendAudioToMuxer()V

    .line 1499
    return-void
.end method

.method protected startEncoding()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void

    .line 184
    :cond_0
    const-string v0, "startEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initialize_video()V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initialize_audio()V

    .line 189
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    invoke-virtual {v0, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 193
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_9

    .line 204
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_6

    .line 205
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mConvert:Z

    if-eqz v0, :cond_5

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startAudioRewriting()V

    goto :goto_1

    .line 208
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startAudioEncoding()V

    .line 212
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-nez v0, :cond_7

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startVideoDecoding()V

    .line 216
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendFrametoEncoder()V

    .line 217
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-eqz v0, :cond_3

    .line 218
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding abruptly stopped mUserStop ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCodecError? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    nop

    .line 222
    :cond_9
    return-void
.end method

.method protected startVideoDecoding()V
    .locals 2

    .line 2295
    const-string v0, "TranscodeLib"

    const-string v1, " starts transcoding"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    .line 2297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    .line 2298
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2299
    return-void
.end method

.method protected supportConverter()Z
    .locals 2

    .line 3003
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR2SDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateCreationTime(Ljava/lang/String;Z)Z
    .locals 25
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "mode"    # Z

    .line 241
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCreationTime mode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", filepath : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TranscodeLib"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 244
    const-string v0, "Do not update CreationTime"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v5

    .line 248
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 250
    .local v6, "file":Ljava/io/File;
    const/4 v0, 0x4

    new-array v7, v0, [B

    .line 251
    .local v7, "atomSizeBuf":[B
    new-array v8, v0, [B

    .line 252
    .local v8, "atomNameBuf":[B
    new-array v9, v0, [B

    .line 254
    .local v9, "temp":[B
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 256
    .local v10, "fileSize":J
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gtz v0, :cond_1

    .line 257
    const-string v0, "file size is same or less than 0"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return v5

    .line 260
    :cond_1
    const-string v0, "stbl"

    const-string v14, "trak"

    const-string v15, "mdia"

    move-wide/from16 v16, v12

    const-string v12, "minf"

    const-string v13, "moov"

    filled-new-array {v15, v12, v13, v0, v14}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 262
    .local v12, "parentContainer":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 263
    .local v13, "ret":Z
    if-eqz v3, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v14, "rw"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    move-object v15, v6

    goto/16 :goto_8

    .line 264
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v14, "r"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    move-object v14, v0

    .line 265
    .local v14, "fileObj":Ljava/io/RandomAccessFile;
    const-wide/16 v18, 0x0

    move-object v15, v6

    move-wide/from16 v5, v18

    .line 267
    .end local v6    # "file":Ljava/io/File;
    .local v5, "filePointer":J
    .local v15, "file":Ljava/io/File;
    :goto_1
    cmp-long v0, v5, v10

    if-gez v0, :cond_8

    .line 269
    :try_start_2
    invoke-virtual {v14, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    goto :goto_2

    .line 263
    .end local v5    # "filePointer":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    .line 270
    .restart local v5    # "filePointer":J
    :catch_1
    move-exception v0

    .line 271
    .local v0, "e1":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_2
    array-length v0, v7

    const/4 v2, 0x0

    invoke-virtual {v14, v7, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 274
    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeBase;->unsignedIntToLong([B)J

    move-result-wide v18

    .line 277
    .local v18, "atomSize":J
    array-length v0, v8

    invoke-virtual {v14, v8, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 279
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v8, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 281
    .local v0, "atomName":Ljava/lang/String;
    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 282
    .local v2, "tmpAtomPosition":I
    const-wide/16 v20, 0x8

    if-ltz v2, :cond_3

    .line 283
    add-long v5, v5, v20

    const/4 v2, 0x0

    goto/16 :goto_4

    .line 285
    :cond_3
    move/from16 v22, v2

    .end local v2    # "tmpAtomPosition":I
    .local v22, "tmpAtomPosition":I
    const-string v2, "mvhd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    .line 286
    const/4 v2, 0x1

    .line 287
    .end local v13    # "ret":Z
    .local v2, "ret":Z
    if-eqz v3, :cond_4

    .line 288
    :try_start_4
    array-length v4, v9

    const/4 v13, 0x0

    invoke-virtual {v14, v9, v13, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 289
    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    sget-object v13, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v13, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "ret":Z
    .local v16, "ret":Z
    :try_start_5
    invoke-virtual {v14, v4, v2, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_3

    .line 263
    .end local v0    # "atomName":Ljava/lang/String;
    .end local v5    # "filePointer":J
    .end local v16    # "ret":Z
    .end local v18    # "atomSize":J
    .end local v22    # "tmpAtomPosition":I
    .restart local v2    # "ret":Z
    :catchall_1
    move-exception v0

    move/from16 v16, v2

    move-object v1, v0

    move/from16 v13, v16

    .end local v2    # "ret":Z
    .restart local v16    # "ret":Z
    goto :goto_5

    .line 291
    .end local v16    # "ret":Z
    .restart local v0    # "atomName":Ljava/lang/String;
    .restart local v2    # "ret":Z
    .restart local v5    # "filePointer":J
    .restart local v18    # "atomSize":J
    .restart local v22    # "tmpAtomPosition":I
    :cond_4
    move/from16 v16, v2

    .end local v2    # "ret":Z
    .restart local v16    # "ret":Z
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v4, v4

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 292
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v4, v4

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 295
    nop

    .line 314
    .end local v0    # "atomName":Ljava/lang/String;
    .end local v5    # "filePointer":J
    .end local v18    # "atomSize":J
    .end local v22    # "tmpAtomPosition":I
    :goto_3
    move/from16 v13, v16

    goto :goto_7

    .line 263
    :catchall_2
    move-exception v0

    move-object v1, v0

    move/from16 v13, v16

    goto :goto_5

    .line 297
    .end local v16    # "ret":Z
    .restart local v0    # "atomName":Ljava/lang/String;
    .restart local v5    # "filePointer":J
    .restart local v13    # "ret":Z
    .restart local v18    # "atomSize":J
    .restart local v22    # "tmpAtomPosition":I
    :cond_5
    const-wide/16 v23, 0x1

    cmp-long v2, v18, v23

    if-nez v2, :cond_6

    .line 298
    move-object v2, v0

    .end local v0    # "atomName":Ljava/lang/String;
    .local v2, "atomName":Ljava/lang/String;
    add-long v0, v5, v20

    :try_start_6
    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 299
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 300
    .local v0, "atomLargeSizeBuf":[B
    array-length v1, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "atomName":Ljava/lang/String;
    .local v20, "atomName":Ljava/lang/String;
    invoke-virtual {v14, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 301
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 302
    .local v1, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v23

    .line 303
    .local v23, "atomLargeSize":J
    add-long v5, v5, v23

    .line 304
    .end local v0    # "atomLargeSizeBuf":[B
    .end local v1    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v23    # "atomLargeSize":J
    goto :goto_4

    .end local v20    # "atomName":Ljava/lang/String;
    .local v0, "atomName":Ljava/lang/String;
    :cond_6
    move-object/from16 v20, v0

    const/4 v2, 0x0

    .end local v0    # "atomName":Ljava/lang/String;
    .restart local v20    # "atomName":Ljava/lang/String;
    cmp-long v0, v18, v16

    if-nez v0, :cond_7

    .line 305
    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 306
    const/4 v0, 0x0

    .line 307
    .end local v13    # "ret":Z
    .local v0, "ret":Z
    move v13, v0

    goto :goto_7

    .line 309
    .end local v0    # "ret":Z
    .restart local v13    # "ret":Z
    :cond_7
    add-long v5, v5, v18

    .line 313
    .end local v18    # "atomSize":J
    .end local v20    # "atomName":Ljava/lang/String;
    .end local v22    # "tmpAtomPosition":I
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 263
    .end local v5    # "filePointer":J
    :goto_5
    :try_start_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "atomSizeBuf":[B
    .end local v8    # "atomNameBuf":[B
    .end local v9    # "temp":[B
    .end local v10    # "fileSize":J
    .end local v12    # "parentContainer":[Ljava/lang/String;
    .end local v13    # "ret":Z
    .end local v15    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    .end local p1    # "filepath":Ljava/lang/String;
    .end local p2    # "mode":Z
    :goto_6
    throw v1

    .line 314
    .restart local v7    # "atomSizeBuf":[B
    .restart local v8    # "atomNameBuf":[B
    .restart local v9    # "temp":[B
    .restart local v10    # "fileSize":J
    .restart local v12    # "parentContainer":[Ljava/lang/String;
    .restart local v13    # "ret":Z
    .restart local v15    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    .restart local p1    # "filepath":Ljava/lang/String;
    .restart local p2    # "mode":Z
    :cond_8
    :goto_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 316
    .end local v14    # "fileObj":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 314
    :catch_2
    move-exception v0

    goto :goto_8

    .end local v15    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    move-object v15, v6

    .line 315
    .end local v6    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v15    # "file":Ljava/io/File;
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 317
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    return v13
.end method

.method protected updateProgress(JZ)V
    .locals 8
    .param p1, "frametime"    # J
    .param p3, "isAudio"    # Z

    .line 2948
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2949
    return-void

    .line 2951
    :cond_0
    if-eqz p3, :cond_1

    .line 2952
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    goto :goto_0

    .line 2954
    :cond_1
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2957
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_2

    .line 2958
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .local v0, "time":J
    goto :goto_1

    .line 2960
    .end local v0    # "time":J
    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2963
    .restart local v0    # "time":J
    :goto_1
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 2967
    .local v2, "progress":I
    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2968
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2970
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mProgress:I

    if-le v2, v3, :cond_3

    .line 2971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgress: audioProgressTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vidioProgressTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onProgressChanged(I)V

    .line 2975
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mProgress:I

    .line 2977
    :cond_3
    return-void
.end method
