.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/EncodeBase;
.source "EncodeVideo.java"


# static fields
.field private static final NAL_START_CODE:[B

.field private static final UNKNOWN_AUDIO:Ljava/lang/String; = "audio/unknown"


# instance fields
.field private final mStopLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    return-void
.end method

.method private checkAudioTranscodeSection()V
    .locals 4

    .line 349
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-gez v0, :cond_1

    .line 352
    const-string v0, "Advance audio..."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Transcode section: Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 356
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_2
    return-void
.end method

.method private checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 8
    .param p1, "formatV"    # Landroid/media/MediaFormat;

    .line 672
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 673
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 674
    .local v0, "filepath":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 675
    const-string v2, "param-meta-author"

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 676
    const-string v2, "param-meta-transcoding"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 677
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 678
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-recording-mode"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set recording mode for NDE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_2
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v2, v2, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 683
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v2, v2, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v3, "param-meta-brand-model-name"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_3
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v2

    const-string v3, "level"

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 686
    const-string v4, "video/hevc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 687
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 688
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 687
    invoke-virtual {p1, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    .line 690
    :cond_4
    nop

    .line 691
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_5

    const/16 v2, 0x200

    goto :goto_1

    .line 692
    :cond_5
    const/16 v2, 0x1000

    .line 690
    :goto_1
    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 693
    const-string v2, "csd-0"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 694
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 695
    .local v3, "csd":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_7

    .line 696
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 697
    .local v5, "buffer":[B
    array-length v6, v5

    invoke-virtual {v3, v5, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 698
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/4 v7, 0x7

    if-ne v6, v4, :cond_6

    .line 699
    const/16 v4, 0x1f

    aput-byte v4, v5, v7

    goto :goto_2

    .line 701
    :cond_6
    const/16 v4, 0x29

    aput-byte v4, v5, v7

    .line 703
    :goto_2
    array-length v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 704
    .local v4, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v6, v5

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 705
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 706
    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 710
    .end local v3    # "csd":Ljava/nio/ByteBuffer;
    .end local v4    # "csdTemp":Ljava/nio/ByteBuffer;
    .end local v5    # "buffer":[B
    :cond_7
    :goto_3
    return-object p1
.end method

.method private checkTrimAudioStartPos()V
    .locals 17

    .line 633
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 634
    .local v1, "prevVideoStartTime":J
    iget-wide v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 635
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 636
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 638
    :cond_0
    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    const-string v7, "TranscodeLib"

    if-eqz v3, :cond_5

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v3, v8, v1

    if-eqz v3, :cond_5

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v3, v8, v5

    if-lez v3, :cond_5

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkTrimAudfioStartPos prev : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ~ "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v9

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 641
    .local v9, "diffUs":J
    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    sub-long/2addr v11, v9

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 642
    .local v11, "endMs":J
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v15, 0x1

    if-eq v3, v15, :cond_3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v15, 0x2

    if-eq v3, v15, :cond_3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0xc

    if-eq v3, v15, :cond_3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0x15

    if-eq v3, v15, :cond_3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0x13

    if-ne v3, v15, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSuperSlow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 649
    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    .line 650
    :cond_2
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {v0, v3, v15}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 651
    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v13

    const-wide/16 v15, 0x2

    div-long/2addr v13, v15

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    .line 647
    :cond_3
    :goto_0
    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 653
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkTrimAudfioStartPos after : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .end local v9    # "diffUs":J
    .end local v11    # "endMs":J
    goto :goto_2

    .line 655
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video  section: Current position: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_2
    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v3, :cond_8

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v3, v8, v5

    if-eqz v3, :cond_8

    .line 659
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 660
    :goto_3
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 661
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 664
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3

    .line 662
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid File!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 666
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Transcode section: Current position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 667
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTrimAudioStartUs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_8
    return-void
.end method

.method private checkTrimVideoStartPointChanged()V
    .locals 11

    .line 325
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 326
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRewritable:Z

    if-eqz v0, :cond_1

    .line 327
    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 328
    .local v3, "prevVideoStartTime":J
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 330
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    .line 333
    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 334
    .local v5, "prevEndTime":J
    iget-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    iget-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v9, v3, v9

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change end time for rewrite mode prev : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " new : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 338
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 339
    const-string v0, "Abandon Rewrite. Switch to Rewrite mode."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v3    # "prevVideoStartTime":J
    .end local v5    # "prevEndTime":J
    goto :goto_0

    .line 342
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 343
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 344
    const-string v0, "Start point has not been updated!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_1
    :goto_0
    return-void
.end method

.method private checkVideoCodec(IIZ)Z
    .locals 6
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "isRewrite"    # Z

    .line 1156
    const/4 v0, 0x0

    .line 1158
    .local v0, "error":I
    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-nez p3, :cond_1

    .line 1159
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v3, v4, v5, p1, p2}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedResolution(Landroid/media/MediaFormat;IIII)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedResolution  Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    return v1

    .line 1165
    :cond_0
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedCodecType video  Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    return v1

    .line 1171
    :cond_1
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-lez v3, :cond_5

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1177
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 1178
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 1179
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowFast()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-ne v1, p1, :cond_3

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 1181
    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1182
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 1183
    const-string v1, "Slowmotion Converting case  mSMConvert"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return v3

    .line 1186
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1187
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 1188
    const-string v1, "Slowmotion V2 transcoding case mSMEncode"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_4
    return v3

    .line 1172
    :cond_5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolution Error appear : width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    return v1
.end method

.method private createAudiosolution()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_1

    .line 1532
    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/AudioSolution;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    nop

    .line 1537
    :cond_1
    return-void

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a valid audio solution."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23
    .param p0, "srcMediaPath"    # Ljava/lang/String;
    .param p1, "atomToHunt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1206
    .local v3, "ret":Z
    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    if-nez v1, :cond_0

    .line 1207
    const-string v0, "findAtom : filepath is null"

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    return v4

    .line 1210
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1211
    .local v6, "file":Ljava/io/File;
    const/4 v0, 0x4

    new-array v7, v0, [B

    .line 1212
    .local v7, "atomSizeBuf":[B
    new-array v8, v0, [B

    .line 1213
    .local v8, "atomNameBuf":[B
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 1214
    .local v9, "fileSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file size: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v0, "stbl"

    const-string v11, "trak"

    const-string v12, "mdia"

    const-string v13, "minf"

    const-string v14, "moov"

    filled-new-array {v12, v13, v14, v0, v11}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1218
    .local v11, "parentContainer":[Ljava/lang/String;
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v12, "r"

    invoke-direct {v0, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 1219
    .local v12, "fileObj":Ljava/io/RandomAccessFile;
    const-wide/16 v13, 0x0

    .line 1221
    .local v13, "filePointer":J
    :goto_0
    cmp-long v0, v13, v9

    if-gez v0, :cond_8

    .line 1223
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filePointer: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    goto :goto_1

    .line 1218
    .end local v13    # "filePointer":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_4

    .line 1225
    .restart local v13    # "filePointer":J
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e1":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1228
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_1
    array-length v0, v7

    invoke-virtual {v12, v7, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v15, "file read is reached to end of the file"

    if-gez v0, :cond_1

    .line 1229
    :try_start_2
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1231
    :cond_1
    :try_start_3
    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 1234
    .local v18, "atomSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Atom Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v17, v3

    move-wide/from16 v3, v18

    .end local v18    # "atomSize":J
    .local v3, "atomSize":J
    .local v17, "ret":Z
    :try_start_4
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    array-length v0, v8

    const/4 v1, 0x0

    invoke-virtual {v12, v8, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-gez v0, :cond_2

    .line 1236
    :try_start_5
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1218
    .end local v3    # "atomSize":J
    .end local v13    # "filePointer":J
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v6

    goto/16 :goto_4

    .line 1239
    .restart local v3    # "atomSize":J
    .restart local v13    # "filePointer":J
    :cond_2
    :goto_2
    :try_start_6
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v8, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1240
    .local v0, "atomName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v18, v6

    .end local v6    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    :try_start_7
    const-string v6, "Atom Box: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1243
    .local v1, "tmpAtomPosition":I
    const-wide/16 v19, 0x8

    if-ltz v1, :cond_3

    .line 1244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found parent: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " move to : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    add-long v13, v13, v19

    goto/16 :goto_3

    .line 1247
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const/4 v5, 0x1

    .line 1250
    .end local v17    # "ret":Z
    .local v5, "ret":Z
    move v3, v5

    goto/16 :goto_6

    .line 1252
    .end local v5    # "ret":Z
    .restart local v17    # "ret":Z
    :cond_4
    const-wide/16 v21, 0x1

    cmp-long v6, v3, v21

    if-nez v6, :cond_6

    .line 1253
    move-object v6, v0

    move/from16 v21, v1

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v1    # "tmpAtomPosition":I
    .local v6, "atomName":Ljava/lang/String;
    .local v21, "tmpAtomPosition":I
    add-long v0, v13, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1254
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1255
    .local v0, "atomLargeSizeBuf":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_5

    .line 1256
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_5
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 1259
    .local v1, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 1260
    .local v19, "atomLargeSize":J
    add-long v13, v13, v19

    .line 1261
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64bit: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v15, v0

    move-object/from16 v22, v1

    move-wide/from16 v0, v19

    .end local v1    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v19    # "atomLargeSize":J
    .local v0, "atomLargeSize":J
    .local v15, "atomLargeSizeBuf":[B
    .local v22, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    .end local v0    # "atomLargeSize":J
    .end local v15    # "atomLargeSizeBuf":[B
    .end local v22    # "atomTmpLargeSize":Ljava/math/BigInteger;
    goto :goto_3

    .end local v6    # "atomName":Ljava/lang/String;
    .end local v21    # "tmpAtomPosition":I
    .local v0, "atomName":Ljava/lang/String;
    .local v1, "tmpAtomPosition":I
    :cond_6
    move-object v6, v0

    move/from16 v21, v1

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v1    # "tmpAtomPosition":I
    .restart local v6    # "atomName":Ljava/lang/String;
    .restart local v21    # "tmpAtomPosition":I
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_7

    .line 1263
    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const/4 v0, 0x0

    .line 1265
    .end local v17    # "ret":Z
    .local v0, "ret":Z
    move v3, v0

    goto :goto_6

    .line 1267
    .end local v0    # "ret":Z
    .restart local v17    # "ret":Z
    :cond_7
    add-long/2addr v13, v3

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " atomsize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1272
    .end local v3    # "atomSize":J
    .end local v6    # "atomName":Ljava/lang/String;
    .end local v21    # "tmpAtomPosition":I
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1218
    .end local v13    # "filePointer":J
    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .end local v18    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v6

    move-object v1, v0

    .end local v6    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto :goto_4

    .end local v17    # "ret":Z
    .end local v18    # "file":Ljava/io/File;
    .local v3, "ret":Z
    .restart local v6    # "file":Ljava/io/File;
    :catchall_4
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    move-object v1, v0

    .end local v3    # "ret":Z
    .end local v6    # "file":Ljava/io/File;
    .restart local v17    # "ret":Z
    .restart local v18    # "file":Ljava/io/File;
    :goto_4
    :try_start_8
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    .line 1221
    .end local v17    # "ret":Z
    .end local v18    # "file":Ljava/io/File;
    .restart local v3    # "ret":Z
    .restart local v6    # "file":Ljava/io/File;
    .restart local v13    # "filePointer":J
    :cond_8
    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 1273
    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "filePointer":J
    .restart local v18    # "file":Ljava/io/File;
    :goto_6
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 1274
    .end local v12    # "fileObj":Ljava/io/RandomAccessFile;
    return v3
.end method

.method private static findNalStartCode([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 1451
    array-length v0, p0

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1452
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1453
    invoke-static {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1454
    return v1

    .line 1452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1457
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static getMaxEncodingDuration(IIII)I
    .locals 8
    .param p0, "maxSizeKB"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "audioCodecType"    # I

    .line 1064
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v0

    .line 1070
    .local v0, "minBitRate":I
    int-to-float v1, p0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    .line 1073
    .local v1, "outFileSize":J
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 1074
    const/16 v3, 0x8

    .local v3, "audioBitRate":I
    goto :goto_1

    .line 1076
    .end local v3    # "audioBitRate":I
    :cond_0
    const/16 v3, 0x3e8

    if-lt p0, v3, :cond_2

    const/16 v3, 0xc8

    if-ge p1, v3, :cond_1

    if-ge p2, v3, :cond_1

    goto :goto_0

    .line 1079
    :cond_1
    const/16 v3, 0x80

    .restart local v3    # "audioBitRate":I
    goto :goto_1

    .line 1077
    .end local v3    # "audioBitRate":I
    :cond_2
    :goto_0
    const/16 v3, 0x40

    .line 1082
    .restart local v3    # "audioBitRate":I
    :goto_1
    const-wide/16 v4, 0x8

    mul-long/2addr v4, v1

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    add-int v6, v0, v3

    int-to-long v6, v6

    div-long/2addr v4, v6

    .line 1084
    .local v4, "expectedDurationInMs":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minBitRate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " audiocodec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxdur "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TranscodeLib"

    invoke-static {v7, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    return v6
.end method

.method private getVideoSampleSize(Landroid/media/MediaFormat;)I
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1540
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    const-string v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 1542
    .local v0, "width":I
    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 1543
    .local v1, "height":I
    const v2, 0x3f99999a    # 1.2f

    int-to-float v3, v0

    mul-float/2addr v3, v2

    int-to-float v2, v1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    return v2

    .line 1545
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    .locals 49
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;

    .line 1286
    const-string v0, "uuid"

    const-string v1, "trak"

    const-string v2, "moov"

    const-string v3, "insertUuidFor360Video"

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    new-instance v3, Ljava/io/File;

    move-object/from16 v5, p0

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1288
    .local v3, "inputFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v6, "outputFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1290
    .local v8, "size":J
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v10, v3, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1291
    .local v10, "inputRAF":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v12, "rws"

    invoke-direct {v11, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1292
    .local v11, "outputRAF":Ljava/io/RandomAccessFile;
    const-wide/16 v12, 0x0

    .line 1293
    .local v12, "filePointer":J
    :try_start_2
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1294
    .local v14, "parentContainer":[Ljava/lang/String;
    const/4 v15, 0x4

    move-object/from16 v16, v3

    .end local v3    # "inputFile":Ljava/io/File;
    .local v16, "inputFile":Ljava/io/File;
    :try_start_3
    new-array v3, v15, [B

    .line 1295
    .local v3, "atomSizeBuf":[B
    new-array v5, v15, [B

    .line 1296
    .local v5, "atomNameBuf":[B
    :goto_0
    cmp-long v17, v12, v8

    if-gez v17, :cond_13

    .line 1297
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1298
    array-length v15, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v18, v6

    .end local v6    # "outputFile":Ljava/io/File;
    .local v18, "outputFile":Ljava/io/File;
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v10, v3, v6, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v6, "inputfile read is reached to end of the file"

    if-gez v15, :cond_0

    .line 1299
    :try_start_5
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1290
    .end local v3    # "atomSizeBuf":[B
    .end local v5    # "atomNameBuf":[B
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-wide/from16 v37, v8

    goto/16 :goto_9

    .line 1301
    .restart local v3    # "atomSizeBuf":[B
    .restart local v5    # "atomNameBuf":[B
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_6
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 1304
    .local v21, "atomSize":J
    array-length v15, v5

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "atomSizeBuf":[B
    .local v19, "atomSizeBuf":[B
    invoke-virtual {v10, v5, v3, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-gez v15, :cond_1

    .line 1305
    :try_start_7
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1308
    :cond_1
    :try_start_8
    new-instance v3, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v5, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1309
    .local v3, "atomName":Ljava/lang/String;
    invoke-static {v14, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1310
    .local v15, "tmpAtomPosition":I
    move-object/from16 v20, v5

    .end local v5    # "atomNameBuf":[B
    .local v20, "atomNameBuf":[B
    const-string v5, "64bit: "

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x1

    const-wide/16 v27, 0x8

    if-ltz v15, :cond_f

    .line 1311
    :try_start_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 1312
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v29

    .line 1313
    .local v29, "outputFileSize":J
    const-wide/16 v31, 0x0

    .line 1314
    .local v31, "outputFilePointer":J
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v33

    move-object/from16 v34, v33

    .line 1315
    .local v34, "outParentContainer":[Ljava/lang/String;
    move-object/from16 v35, v0

    const/4 v7, 0x4

    const/16 v33, 0x8

    new-array v0, v7, [B

    .line 1316
    .local v0, "outputAtomSizeBuf":[B
    move-object/from16 v36, v1

    new-array v1, v7, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-wide/from16 v37, v8

    move-wide/from16 v7, v31

    .line 1317
    .end local v8    # "size":J
    .end local v31    # "outputFilePointer":J
    .local v1, "outputAtomNameBuf":[B
    .local v7, "outputFilePointer":J
    .local v37, "size":J
    :goto_2
    cmp-long v9, v7, v29

    if-gez v9, :cond_d

    .line 1318
    :try_start_a
    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1320
    array-length v9, v0

    move-object/from16 v31, v3

    const/4 v3, 0x0

    .end local v3    # "atomName":Ljava/lang/String;
    .local v31, "atomName":Ljava/lang/String;
    invoke-virtual {v11, v0, v3, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const-string v3, "outputFile read is reached to end of the file"

    if-gez v9, :cond_2

    .line 1321
    :try_start_b
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v39

    .line 1324
    .local v39, "outputAtomSize":J
    array-length v9, v1

    move-object/from16 v32, v0

    const/4 v0, 0x0

    .end local v0    # "outputAtomSizeBuf":[B
    .local v32, "outputAtomSizeBuf":[B
    invoke-virtual {v11, v1, v0, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    if-gez v9, :cond_3

    .line 1325
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_3
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1329
    .local v0, "outputAtomName":Ljava/lang/String;
    move-object/from16 v3, v34

    .end local v34    # "outParentContainer":[Ljava/lang/String;
    .local v3, "outParentContainer":[Ljava/lang/String;
    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1330
    .local v9, "tmp":I
    move-object/from16 v34, v1

    .end local v1    # "outputAtomNameBuf":[B
    .local v34, "outputAtomNameBuf":[B
    const-string v1, "outputfile read is reached to end of the file"

    if-ltz v9, :cond_9

    .line 1331
    :try_start_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    const-wide/16 v42, 0xff

    if-eqz v41, :cond_5

    .line 1332
    add-long v44, v39, v21

    .line 1334
    .local v44, "l":J
    move-object/from16 v41, v0

    const/4 v1, 0x4

    .end local v0    # "outputAtomName":Ljava/lang/String;
    .local v41, "outputAtomName":Ljava/lang/String;
    new-array v0, v1, [B

    .line 1335
    .local v0, "b":[B
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 1336
    move/from16 v47, v1

    move-object/from16 v46, v2

    .end local v1    # "i":I
    .local v47, "i":I
    and-long v1, v44, v42

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v47

    .line 1337
    shr-long v44, v44, v33

    .line 1335
    add-int/lit8 v1, v47, -0x1

    move-object/from16 v2, v46

    .end local v47    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    :cond_4
    move/from16 v47, v1

    move-object/from16 v46, v2

    .line 1339
    .end local v1    # "i":I
    move-wide v1, v7

    .line 1340
    .local v1, "position":J
    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1341
    move-object/from16 v47, v3

    .end local v3    # "outParentContainer":[Ljava/lang/String;
    .local v47, "outParentContainer":[Ljava/lang/String;
    array-length v3, v0

    move/from16 v48, v9

    const/4 v9, 0x0

    .end local v9    # "tmp":I
    .local v48, "tmp":I
    invoke-virtual {v11, v0, v9, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1342
    invoke-virtual {v11, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1343
    add-long v7, v7, v27

    .line 1344
    .end local v0    # "b":[B
    .end local v1    # "position":J
    .end local v44    # "l":J
    move-wide/from16 v42, v21

    goto/16 :goto_5

    .line 1345
    .end local v41    # "outputAtomName":Ljava/lang/String;
    .end local v47    # "outParentContainer":[Ljava/lang/String;
    .end local v48    # "tmp":I
    .local v0, "outputAtomName":Ljava/lang/String;
    .restart local v3    # "outParentContainer":[Ljava/lang/String;
    .restart local v9    # "tmp":I
    :cond_5
    move-object/from16 v41, v0

    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move/from16 v48, v9

    .end local v0    # "outputAtomName":Ljava/lang/String;
    .end local v3    # "outParentContainer":[Ljava/lang/String;
    .end local v9    # "tmp":I
    .restart local v41    # "outputAtomName":Ljava/lang/String;
    .restart local v47    # "outParentContainer":[Ljava/lang/String;
    .restart local v48    # "tmp":I
    add-long v2, v39, v21

    .line 1347
    .local v2, "l":J
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 1348
    .local v5, "b":[B
    const/4 v9, 0x3

    .local v9, "i":I
    :goto_4
    if-ltz v9, :cond_6

    .line 1349
    move-object/from16 v17, v1

    and-long v0, v2, v42

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v9

    .line 1350
    shr-long v2, v2, v33

    .line 1348
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v1, v17

    const/4 v0, 0x4

    goto :goto_4

    :cond_6
    move-object/from16 v17, v1

    .line 1352
    .end local v9    # "i":I
    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1353
    array-length v0, v5

    const/4 v9, 0x0

    invoke-virtual {v11, v5, v9, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1354
    add-long v0, v7, v39

    .line 1355
    .local v0, "positionAudio":J
    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1356
    move-wide/from16 v23, v2

    .end local v2    # "l":J
    .local v23, "l":J
    sub-long v2, v29, v0

    .line 1357
    .local v2, "audioSize":J
    long-to-int v9, v2

    new-array v9, v9, [B

    .line 1358
    .local v9, "dataAudio":[B
    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1359
    move-wide/from16 v25, v2

    .end local v2    # "audioSize":J
    .local v25, "audioSize":J
    array-length v2, v9

    const/4 v3, 0x0

    invoke-virtual {v11, v9, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_7

    .line 1360
    move-object/from16 v2, v17

    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :cond_7
    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1363
    move-wide/from16 v2, v21

    move-wide/from16 v21, v0

    .end local v0    # "positionAudio":J
    .local v2, "atomSize":J
    .local v21, "positionAudio":J
    long-to-int v0, v2

    new-array v0, v0, [B

    .line 1364
    .local v0, "dataUuid":[B
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1365
    array-length v1, v0

    move-wide/from16 v42, v2

    const/4 v2, 0x0

    .end local v2    # "atomSize":J
    .local v42, "atomSize":J
    invoke-virtual {v10, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_8

    .line 1366
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_8
    array-length v1, v0

    const/4 v3, 0x0

    invoke-virtual {v11, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1369
    array-length v1, v9

    invoke-virtual {v11, v9, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1370
    goto/16 :goto_6

    .line 1373
    .end local v5    # "b":[B
    .end local v23    # "l":J
    .end local v25    # "audioSize":J
    .end local v41    # "outputAtomName":Ljava/lang/String;
    .end local v42    # "atomSize":J
    .end local v47    # "outParentContainer":[Ljava/lang/String;
    .end local v48    # "tmp":I
    .local v0, "outputAtomName":Ljava/lang/String;
    .restart local v3    # "outParentContainer":[Ljava/lang/String;
    .local v9, "tmp":I
    .local v21, "atomSize":J
    :cond_9
    move-object/from16 v41, v0

    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move/from16 v48, v9

    move-wide/from16 v42, v21

    move-object v2, v1

    .end local v0    # "outputAtomName":Ljava/lang/String;
    .end local v3    # "outParentContainer":[Ljava/lang/String;
    .end local v9    # "tmp":I
    .end local v21    # "atomSize":J
    .restart local v41    # "outputAtomName":Ljava/lang/String;
    .restart local v42    # "atomSize":J
    .restart local v47    # "outParentContainer":[Ljava/lang/String;
    .restart local v48    # "tmp":I
    cmp-long v0, v39, v25

    if-nez v0, :cond_b

    .line 1374
    add-long v0, v7, v27

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1375
    move/from16 v0, v33

    new-array v1, v0, [B

    .line 1376
    .local v1, "outputAtomLargeSizeBuf":[B
    array-length v0, v1

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_a

    .line 1378
    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :cond_a
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 1382
    .local v0, "outputAtomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 1383
    .local v2, "outputAtomLargeSize":J
    add-long/2addr v7, v2

    .line 1384
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    .end local v0    # "outputAtomTmpLargeSize":Ljava/math/BigInteger;
    .end local v1    # "outputAtomLargeSizeBuf":[B
    .end local v2    # "outputAtomLargeSize":J
    goto :goto_5

    :cond_b
    cmp-long v0, v39, v23

    if-nez v0, :cond_c

    .line 1386
    goto :goto_6

    .line 1388
    :cond_c
    add-long v7, v7, v39

    .line 1391
    .end local v39    # "outputAtomSize":J
    .end local v41    # "outputAtomName":Ljava/lang/String;
    .end local v48    # "tmp":I
    :goto_5
    move-object/from16 v3, v31

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-wide/from16 v21, v42

    move-object/from16 v2, v46

    move-object/from16 v34, v47

    const/16 v33, 0x8

    goto/16 :goto_2

    .line 1317
    .end local v31    # "atomName":Ljava/lang/String;
    .end local v32    # "outputAtomSizeBuf":[B
    .end local v42    # "atomSize":J
    .end local v47    # "outParentContainer":[Ljava/lang/String;
    .local v0, "outputAtomSizeBuf":[B
    .local v1, "outputAtomNameBuf":[B
    .local v3, "atomName":Ljava/lang/String;
    .restart local v21    # "atomSize":J
    .local v34, "outParentContainer":[Ljava/lang/String;
    :cond_d
    move-object/from16 v32, v0

    move-object/from16 v46, v2

    move-object/from16 v31, v3

    move-wide/from16 v42, v21

    move-object/from16 v47, v34

    move-object/from16 v34, v1

    .end local v0    # "outputAtomSizeBuf":[B
    .end local v1    # "outputAtomNameBuf":[B
    .end local v3    # "atomName":Ljava/lang/String;
    .end local v21    # "atomSize":J
    .restart local v31    # "atomName":Ljava/lang/String;
    .restart local v32    # "outputAtomSizeBuf":[B
    .local v34, "outputAtomNameBuf":[B
    .restart local v42    # "atomSize":J
    .restart local v47    # "outParentContainer":[Ljava/lang/String;
    goto :goto_6

    .line 1311
    .end local v7    # "outputFilePointer":J
    .end local v29    # "outputFileSize":J
    .end local v31    # "atomName":Ljava/lang/String;
    .end local v32    # "outputAtomSizeBuf":[B
    .end local v34    # "outputAtomNameBuf":[B
    .end local v37    # "size":J
    .end local v42    # "atomSize":J
    .end local v47    # "outParentContainer":[Ljava/lang/String;
    .restart local v3    # "atomName":Ljava/lang/String;
    .restart local v8    # "size":J
    .restart local v21    # "atomSize":J
    :cond_e
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move-object/from16 v46, v2

    move-object/from16 v31, v3

    move-wide/from16 v37, v8

    move-wide/from16 v42, v21

    .line 1393
    .end local v3    # "atomName":Ljava/lang/String;
    .end local v8    # "size":J
    .end local v21    # "atomSize":J
    .restart local v31    # "atomName":Ljava/lang/String;
    .restart local v37    # "size":J
    .restart local v42    # "atomSize":J
    :goto_6
    add-long v12, v12, v27

    goto :goto_7

    .line 1395
    .end local v31    # "atomName":Ljava/lang/String;
    .end local v37    # "size":J
    .end local v42    # "atomSize":J
    .restart local v3    # "atomName":Ljava/lang/String;
    .restart local v8    # "size":J
    .restart local v21    # "atomSize":J
    :cond_f
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move-object/from16 v46, v2

    move-object/from16 v31, v3

    move-wide/from16 v37, v8

    move-wide/from16 v42, v21

    .end local v3    # "atomName":Ljava/lang/String;
    .end local v8    # "size":J
    .end local v21    # "atomSize":J
    .restart local v31    # "atomName":Ljava/lang/String;
    .restart local v37    # "size":J
    .restart local v42    # "atomSize":J
    cmp-long v0, v42, v25

    if-nez v0, :cond_11

    .line 1396
    add-long v0, v12, v27

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1397
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1398
    .local v0, "atomLargeSizeBuf":[B
    array-length v1, v0

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_10

    .line 1399
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :cond_10
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 1402
    .local v1, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 1403
    .local v2, "atomLargeSize":J
    add-long/2addr v12, v2

    .line 1404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1405
    .end local v0    # "atomLargeSizeBuf":[B
    .end local v1    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v2    # "atomLargeSize":J
    goto :goto_7

    .line 1290
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .end local v15    # "tmpAtomPosition":I
    .end local v19    # "atomSizeBuf":[B
    .end local v20    # "atomNameBuf":[B
    .end local v31    # "atomName":Ljava/lang/String;
    .end local v42    # "atomSize":J
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_9

    .line 1405
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    .restart local v15    # "tmpAtomPosition":I
    .restart local v19    # "atomSizeBuf":[B
    .restart local v20    # "atomNameBuf":[B
    .restart local v31    # "atomName":Ljava/lang/String;
    .restart local v42    # "atomSize":J
    :cond_11
    cmp-long v0, v42, v23

    if-nez v0, :cond_12

    .line 1406
    goto :goto_8

    .line 1408
    :cond_12
    add-long v12, v12, v42

    .line 1411
    .end local v15    # "tmpAtomPosition":I
    .end local v31    # "atomName":Ljava/lang/String;
    .end local v42    # "atomSize":J
    :goto_7
    move-object/from16 v7, p1

    move-object/from16 v6, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-wide/from16 v8, v37

    move-object/from16 v2, v46

    const/4 v15, 0x4

    goto/16 :goto_0

    .line 1290
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .end local v19    # "atomSizeBuf":[B
    .end local v20    # "atomNameBuf":[B
    .end local v37    # "size":J
    .restart local v8    # "size":J
    :catchall_2
    move-exception v0

    move-wide/from16 v37, v8

    move-object v1, v0

    .end local v8    # "size":J
    .restart local v37    # "size":J
    goto :goto_9

    .line 1296
    .end local v18    # "outputFile":Ljava/io/File;
    .end local v37    # "size":J
    .local v3, "atomSizeBuf":[B
    .local v5, "atomNameBuf":[B
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    :cond_13
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v18, v6

    move-wide/from16 v37, v8

    .line 1412
    .end local v3    # "atomSizeBuf":[B
    .end local v5    # "atomNameBuf":[B
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v37    # "size":J
    :goto_8
    :try_start_d
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .end local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    :try_start_e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 1414
    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    goto :goto_e

    .line 1290
    .end local v18    # "outputFile":Ljava/io/File;
    .end local v37    # "size":J
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    .restart local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v6

    move-wide/from16 v37, v8

    move-object v1, v0

    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v37    # "size":J
    goto :goto_9

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v18    # "outputFile":Ljava/io/File;
    .end local v37    # "size":J
    .local v3, "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v6

    move-wide/from16 v37, v8

    move-object v1, v0

    .end local v3    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v37    # "size":J
    :goto_9
    :try_start_f
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    :try_start_10
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .end local v16    # "inputFile":Ljava/io/File;
    .end local v18    # "outputFile":Ljava/io/File;
    .end local v37    # "size":J
    .end local p0    # "inputFilePath":Ljava/lang/String;
    .end local p1    # "outputFilePath":Ljava/lang/String;
    :goto_a
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .end local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    .restart local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v37    # "size":J
    .restart local p0    # "inputFilePath":Ljava/lang/String;
    .restart local p1    # "outputFilePath":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_b

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v18    # "outputFile":Ljava/io/File;
    .end local v37    # "size":J
    .restart local v3    # "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catchall_7
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v6

    move-wide/from16 v37, v8

    move-object v1, v0

    .end local v3    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v37    # "size":J
    :goto_b
    :try_start_11
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    :try_start_12
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v18    # "outputFile":Ljava/io/File;
    .end local v37    # "size":J
    .end local p0    # "inputFilePath":Ljava/lang/String;
    .end local p1    # "outputFilePath":Ljava/lang/String;
    :goto_c
    throw v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    .line 1412
    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v37    # "size":J
    .restart local p0    # "inputFilePath":Ljava/lang/String;
    .restart local p1    # "outputFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_d

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v18    # "outputFile":Ljava/io/File;
    .end local v37    # "size":J
    .restart local v3    # "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v6

    move-wide/from16 v37, v8

    .line 1413
    .end local v3    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v37    # "size":J
    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1415
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    return-void
.end method

.method private static isNalStartCode([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 1439
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 1440
    return v2

    .line 1442
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1443
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1

    .line 1444
    return v2

    .line 1442
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1447
    .end local v0    # "j":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1282
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1278
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private releaseAudioObjects()V
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 937
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 938
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    goto :goto_0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing output audio encoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 946
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 947
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 948
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 951
    goto :goto_1

    .line 949
    :catch_1
    move-exception v0

    .line 950
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing input audio decoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 956
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 957
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 960
    goto :goto_2

    .line 958
    :catch_2
    move-exception v0

    .line 959
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Exception in releasing audio extractor."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method private releaseHandleObjects()V
    .locals 6

    .line 979
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCDestroy(J)V

    .line 981
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    .line 982
    const-string v0, " SRC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_0
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPDestroy(J)V

    .line 987
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    .line 988
    const-string v0, " VSP release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_1
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderDeInit(J)Z

    .line 993
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    .line 994
    const-string v0, " NAAC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_2
    return-void
.end method

.method private releaseMuxer()V
    .locals 3

    .line 965
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 967
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing muxer."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private releaseSurfaceObjects()V
    .locals 4

    .line 914
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    .line 917
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing outputSurface."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-eqz v0, :cond_1

    .line 925
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    .line 926
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 929
    goto :goto_1

    .line 927
    :catch_1
    move-exception v0

    .line 928
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Exception in releasing input surface."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private releaseVideoObjects()V
    .locals 5

    .line 879
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 882
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 883
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 884
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    .line 889
    :goto_0
    goto :goto_2

    .line 888
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 889
    throw v0

    .line 891
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 893
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 894
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 895
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 896
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 900
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 897
    :catch_1
    move-exception v0

    .line 898
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Exception in releasing input video decoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 900
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    .line 901
    :goto_3
    goto :goto_5

    .line 900
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 901
    throw v0

    .line 903
    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 905
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 906
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 909
    goto :goto_6

    .line 907
    :catch_2
    move-exception v0

    .line 908
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Exception in releasing video extractor."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_6
    return-void
.end method

.method private rewriteAudio(J)V
    .locals 8
    .param p1, "endTime"    # J

    .line 486
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 487
    .local v0, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 488
    .local v1, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "sawEOSA":Z
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 492
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 493
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 494
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v5, "TranscodeLib"

    if-gez v4, :cond_0

    .line 495
    const-string v4, "saw input EOS: Audio"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v2, 0x1

    .line 497
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    .line 499
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 500
    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-eqz v4, :cond_1

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v6, p1

    if-lez v4, :cond_1

    .line 502
    const/4 v2, 0x1

    .line 503
    const-string v4, "sawEOS: true: A"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 507
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v4, v6, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    goto :goto_1

    .line 508
    :catch_0
    move-exception v4

    .line 509
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to writeSampleData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    .line 512
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 516
    :cond_2
    return-void
.end method

.method private rewriteVideo(JLcom/samsung/android/transcode/util/NalUnitParser;I)V
    .locals 21
    .param p1, "endTime"    # J
    .param p3, "firstNalUnit"    # Lcom/samsung/android/transcode/util/NalUnitParser;
    .param p4, "bufferSizeV"    # I

    .line 519
    move-object/from16 v1, p0

    invoke-static/range {p4 .. p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 520
    .local v2, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v3, v0

    .line 521
    .local v3, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 522
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 523
    .local v5, "startPtsTimeUs":J
    const/4 v0, 0x0

    move-object/from16 v7, p3

    move v8, v0

    .line 525
    .end local p3    # "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .local v7, "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .local v8, "sawEOSV":Z
    :goto_0
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_7

    if-nez v8, :cond_7

    .line 526
    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 527
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 528
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v9, "TranscodeLib"

    if-gez v0, :cond_0

    .line 529
    const-string v0, "saw input EOS: Video"

    invoke-static {v9, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v8, 0x1

    .line 531
    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 534
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 535
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 536
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    .line 538
    .local v10, "nextPresentationTimeUs":J
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    const-wide/16 v14, 0x0

    if-eqz v0, :cond_1

    .line 539
    move-wide/from16 v16, v12

    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v12, v10, v12

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v19, v5

    .local v12, "frameDuration":J
    goto :goto_2

    .line 542
    .end local v12    # "frameDuration":J
    :cond_1
    move-wide/from16 v16, v12

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_2

    .line 543
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v12, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v12, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    :goto_1
    const-wide/16 v18, 0x3e8

    mul-long v12, v12, v18

    .line 544
    .local v12, "lastPtsUs":J
    move-wide/from16 v19, v5

    .end local v5    # "startPtsTimeUs":J
    .local v19, "startPtsTimeUs":J
    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v4, v12, v4

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v12, v4

    .line 547
    .local v12, "frameDuration":J
    :goto_2
    cmp-long v0, p1, v16

    if-eqz v0, :cond_3

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v4, v12

    cmp-long v0, v4, p1

    if-ltz v0, :cond_3

    .line 549
    const/4 v0, 0x1

    .line 550
    .end local v8    # "sawEOSV":Z
    .local v0, "sawEOSV":Z
    const-string v4, "sawEOS: true: V"

    invoke-static {v9, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    const/4 v6, 0x0

    goto :goto_6

    .line 552
    .end local v0    # "sawEOSV":Z
    .restart local v8    # "sawEOSV":Z
    :cond_3
    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v4, v19

    if-ltz v0, :cond_6

    .line 554
    if-eqz v7, :cond_5

    :try_start_0
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 556
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser;

    invoke-direct {v0, v2}, Lcom/samsung/android/transcode/util/NalUnitParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findHDRStaticMeta()Z

    move-result v0

    if-nez v0, :cond_4

    .line 557
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v4

    invoke-virtual {v7, v2, v0, v4}, Lcom/samsung/android/transcode/util/NalUnitParser;->insertHDRStaticMeta(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 558
    .local v0, "newBuf":Ljava/nio/ByteBuffer;
    const-string v4, "add HDR static info"

    invoke-static {v9, v4}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 560
    .end local v0    # "newBuf":Ljava/nio/ByteBuffer;
    goto :goto_3

    .line 561
    :cond_4
    const-string v0, "has already static info"

    invoke-static {v9, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 564
    :goto_3
    const/4 v7, 0x0

    goto :goto_4

    .line 566
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_4
    goto :goto_5

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to writeSampleData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5
    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    goto :goto_6

    .line 552
    :cond_6
    const/4 v6, 0x0

    .line 575
    .end local v10    # "nextPresentationTimeUs":J
    .end local v12    # "frameDuration":J
    :goto_6
    move v4, v6

    move-wide/from16 v5, v19

    goto/16 :goto_0

    .line 525
    .end local v19    # "startPtsTimeUs":J
    .restart local v5    # "startPtsTimeUs":J
    :cond_7
    move-wide/from16 v19, v5

    .line 577
    .end local v5    # "startPtsTimeUs":J
    .restart local v19    # "startPtsTimeUs":J
    return-void
.end method


# virtual methods
.method checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 5
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "inputUri"    # Landroid/net/Uri;
    .param p7, "rewrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    if-lez p2, :cond_b

    if-lez p3, :cond_b

    .line 1466
    if-eqz p1, :cond_a

    .line 1470
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    .line 1471
    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_0

    .line 1472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t use uri uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    :cond_1
    if-eqz p4, :cond_9

    .line 1481
    :goto_0
    :try_start_0
    invoke-static {p4, p5, p6}, Lcom/samsung/android/transcode/info/MediaInfo;->getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    nop

    .line 1485
    const/4 v0, 0x1

    invoke-static {p4, p5, p6, v0}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 1486
    const/4 v1, 0x0

    invoke-static {p4, p5, p6, v1}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioinfo:Landroid/media/MediaFormat;

    .line 1488
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v1}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1492
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfo;->getVideoFramerate()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    .line 1493
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    .line 1494
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    .line 1495
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    .line 1496
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    if-eqz v1, :cond_2

    .line 1497
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->getHDRMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    goto :goto_1

    .line 1498
    :cond_2
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->colorTransfer:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 1499
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsHLG:Z

    .line 1502
    :cond_3
    :goto_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1503
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mNumOfSVCLayers:I

    .line 1504
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    .line 1505
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0, p4, p5, p6}, Lcom/samsung/android/transcode/util/SEFHelper;->initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 1506
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    .line 1507
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1508
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    .line 1510
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->checkSEFData(IIJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSEFData mSEFVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getRegionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRegionList:Ljava/util/List;

    .line 1514
    :cond_5
    invoke-direct {p0, p2, p3, p7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkVideoCodec(IIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1518
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    .line 1519
    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    .line 1520
    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    .line 1521
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_6

    .line 1522
    iput-object p6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    .line 1523
    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    goto :goto_2

    .line 1525
    :cond_6
    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 1527
    :goto_2
    return-void

    .line 1515
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid input file - can\'t get file info"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1477
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid output size width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputFileSize()I
    .locals 15

    .line 1101
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    .local v0, "extractor":Landroid/media/MediaExtractor;
    goto :goto_0

    .line 1104
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    .line 1106
    .restart local v0    # "extractor":Landroid/media/MediaExtractor;
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    .line 1108
    .local v1, "videoTrack":I
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 1109
    .local v2, "inputFormat":Landroid/media/MediaFormat;
    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 1110
    .local v3, "trimEndTime":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x3e8

    if-nez v7, :cond_2

    .line 1111
    iget-boolean v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v7, :cond_1

    .line 1112
    sget-object v7, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v10, v7, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v10, v8

    move-wide v3, v10

    .end local v3    # "trimEndTime":J
    .local v10, "trimEndTime":J
    goto :goto_1

    .line 1114
    .end local v10    # "trimEndTime":J
    .restart local v3    # "trimEndTime":J
    :cond_1
    const-string v7, "durationUs"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .end local v3    # "trimEndTime":J
    .restart local v10    # "trimEndTime":J
    move-wide v3, v10

    .line 1116
    .end local v10    # "trimEndTime":J
    .restart local v3    # "trimEndTime":J
    :goto_1
    const-string v7, "TranscodeLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOutputFileSize  trimEndTime was 0 but updated trimEndTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1123
    iget-wide v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    cmp-long v7, v10, v5

    if-ltz v7, :cond_4

    .line 1124
    const-string v7, "video/avc"

    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1125
    const v7, 0x3f666666    # 0.9f

    iput v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    .line 1128
    :cond_3
    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    move-wide v10, v8

    iget-wide v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v12, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v12, v3, v12

    div-long v10, v12, v10

    iget v12, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v12, v12, 0x3e8

    iget v13, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v14, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static/range {v7 .. v14}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    .local v7, "outputVideBitRate":I
    goto :goto_2

    .line 1132
    .end local v7    # "outputVideBitRate":I
    :cond_4
    new-instance v7, Lcom/samsung/android/transcode/info/ExportMediaInfo;

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    iget-object v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 1134
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10Plus()Z

    move-result v12

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/transcode/info/ExportMediaInfo;-><init>(IIILjava/lang/String;Z)V

    sget-object v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 1132
    invoke-static {v7, v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v7

    .line 1137
    .restart local v7    # "outputVideBitRate":I
    :goto_2
    iget-wide v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v8, v3, v8

    long-to-double v8, v8

    const-wide v10, 0x415e848000000000L    # 8000000.0

    div-double/2addr v8, v10

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    add-int/2addr v10, v7

    int-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-int v8, v8

    .line 1140
    .local v8, "size":I
    iget-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v9, v5

    if-nez v5, :cond_5

    .line 1141
    int-to-double v5, v8

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v9

    double-to-int v5, v5

    return v5

    .line 1143
    :cond_5
    return v8

    .line 1147
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    .end local v1    # "videoTrack":I
    .end local v2    # "inputFormat":Landroid/media/MediaFormat;
    .end local v3    # "trimEndTime":J
    .end local v7    # "outputVideBitRate":I
    .end local v8    # "size":I
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1149
    const/4 v1, -0x1

    return v1

    .line 1145
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1150
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 1152
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 111
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "outputFilePath":Ljava/lang/String;
    .end local p2    # "outputWidth":I
    .end local p3    # "outputHeight":I
    .end local p4    # "context":Landroid/content/Context;
    .end local p5    # "inputUri":Landroid/net/Uri;
    .local v2, "outputFilePath":Ljava/lang/String;
    .local v3, "outputWidth":I
    .local v4, "outputHeight":I
    .local v6, "context":Landroid/content/Context;
    .local v7, "inputUri":Landroid/net/Uri;
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 113
    return-void
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 9
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .param p6, "isRewrite"    # Z
    .param p7, "isSEFVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 126
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 127
    return-void
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZI)V
    .locals 10
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .param p6, "isRewrite"    # Z
    .param p7, "isSEFVideo"    # Z
    .param p8, "inputFPS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    move/from16 v0, p8

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 140
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 142
    if-nez p7, :cond_0

    if-lez v0, :cond_0

    .line 143
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    .line 146
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v3, :cond_1

    if-nez p6, :cond_1

    .line 147
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not support rewrite for Photoring case mSMConvert : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSMEncode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TranscodeLib"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 153
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 55
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "outputFilePath":Ljava/lang/String;
    .end local p2    # "outputWidth":I
    .end local p3    # "outputHeight":I
    .end local p4    # "inputFilePath":Ljava/lang/String;
    .local v2, "outputFilePath":Ljava/lang/String;
    .local v3, "outputWidth":I
    .local v4, "outputHeight":I
    .local v5, "inputFilePath":Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 57
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 9
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "isRewrite"    # Z
    .param p6, "isSEFVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 70
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v8, p5

    .end local p1    # "outputFilePath":Ljava/lang/String;
    .end local p2    # "outputWidth":I
    .end local p3    # "outputHeight":I
    .end local p4    # "inputFilePath":Ljava/lang/String;
    .end local p5    # "isRewrite":Z
    .local v2, "outputFilePath":Ljava/lang/String;
    .local v3, "outputWidth":I
    .local v4, "outputHeight":I
    .local v5, "inputFilePath":Ljava/lang/String;
    .local v8, "isRewrite":Z
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 71
    return-void
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZI)V
    .locals 10
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "isRewrite"    # Z
    .param p6, "isSEFVideo"    # Z
    .param p7, "inputFPS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    move/from16 v0, p7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 84
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 86
    const/4 v3, 0x1

    if-nez p6, :cond_0

    if-lez v0, :cond_0

    .line 87
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    .line 88
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    .line 90
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v4, :cond_1

    if-nez p5, :cond_1

    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 92
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not support rewrite for Photoring case mSMConvert : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSMEncode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TranscodeLib"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 98
    return-void
.end method

.method protected declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 1001
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TranscodeLib"

    const-string v2, "releasing encoder objects"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseFramemanager()V

    .line 1003
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseVideoObjects()V

    .line 1004
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseSurfaceObjects()V

    .line 1005
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseAudioObjects()V

    .line 1006
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseMuxer()V

    .line 1007
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseHandleObjects()V

    .line 1009
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1020
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1011
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mIs360Video:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_1

    .line 1012
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1015
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_2

    .line 1016
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1017
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1020
    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1021
    :try_start_7
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 1022
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1024
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1025
    nop

    .line 1026
    monitor-exit p0

    return-void

    .line 1024
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 1020
    :catchall_3
    move-exception v1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1021
    :try_start_a
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 1022
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1024
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1025
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1024
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0

    .line 1000
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0
.end method

.method public setAudioCodecs(I)V
    .locals 2
    .param p1, "audioCodecType"    # I

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :pswitch_0
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    .line 240
    goto :goto_0

    .line 236
    :pswitch_1
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    .line 237
    nop

    .line 244
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEncodingCodecs(II)V
    .locals 0
    .param p1, "videoCodecType"    # I
    .param p2, "audioCodecType"    # I

    .line 209
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    .line 210
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    .line 211
    return-void
.end method

.method public setExportRecordingMode(I)V
    .locals 2
    .param p1, "exportrecordingmode"    # I

    .line 1549
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExportRecordingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    return-void
.end method

.method public setMaxOutputSize(I)V
    .locals 6
    .param p1, "kilobytes"    # I

    .line 270
    if-lez p1, :cond_2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max output size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    .line 280
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMMSMode is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputAudioMute(I)V
    .locals 2
    .param p1, "value"    # I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set audio mute : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    .line 231
    return-void
.end method

.method public setOutputBitdepth(I)Z
    .locals 5
    .param p1, "bitDepth"    # I

    .line 1418
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1419
    .local v0, "inputBitDepth":I
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    .line 1421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOutputBitdepth  bitdepth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", InputBitdepth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHDRType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isHLG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1422
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHLG()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1421
    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    if-ne p1, v1, :cond_3

    .line 1425
    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1426
    return v3

    .line 1427
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->supportConverter()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10Plus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1428
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    .line 1429
    return v3

    .line 1431
    :cond_2
    return v2

    .line 1434
    :cond_3
    return v2
.end method

.method public setOutputConfig(II)V
    .locals 2
    .param p1, "configType"    # I
    .param p2, "value"    # I

    .line 286
    packed-switch p1, :pswitch_data_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid config Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputAudioMute(I)V

    .line 307
    goto :goto_0

    .line 303
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoTargetFrameRate(I)V

    .line 304
    goto :goto_0

    .line 300
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoOutputBitRate(I)V

    .line 301
    goto :goto_0

    .line 297
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputBitdepth(I)Z

    .line 298
    goto :goto_0

    .line 294
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setMaxOutputSize(I)V

    .line 295
    goto :goto_0

    .line 291
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    .line 292
    goto :goto_0

    .line 288
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    .line 289
    nop

    .line 312
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 214
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRotation:I

    .line 215
    return-void
.end method

.method public setTrimTime(JJ)V
    .locals 6
    .param p1, "startMs"    # J
    .param p3, "endMs"    # J

    .line 161
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 164
    cmp-long v0, p3, v0

    if-ltz v0, :cond_7

    .line 167
    cmp-long v0, p1, p3

    if-gtz v0, :cond_6

    .line 170
    cmp-long v0, p1, p3

    if-eqz v0, :cond_5

    .line 174
    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    .line 175
    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 176
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v2, :cond_3

    .line 177
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSuperSlow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 186
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    .line 187
    :cond_1
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    .line 189
    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 190
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 191
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 183
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    .line 194
    :cond_3
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 195
    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 197
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim startUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OriginstartUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OriginendUS :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 171
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoCodecs(I)V
    .locals 2
    .param p1, "videoCodecType"    # I

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoCodecType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_0
    const-string v0, "video/hevc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 256
    goto :goto_0

    .line 252
    :pswitch_1
    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 253
    goto :goto_0

    .line 249
    :pswitch_2
    const-string v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 250
    nop

    .line 261
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVideoOutputBitRate(I)V
    .locals 2
    .param p1, "bitRate"    # I

    .line 218
    if-lez p1, :cond_0

    .line 220
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    .line 221
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitRate should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoTargetFrameRate(I)V
    .locals 2
    .param p1, "fps"    # I

    .line 224
    if-lez p1, :cond_0

    .line 226
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoTargetFrameRate:I

    .line 227
    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fps should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startRewriting()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v1, :cond_0

    .line 363
    const-string v1, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void

    .line 366
    :cond_0
    const-string v1, "startRewriting"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 369
    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 372
    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPendingAudioDecoderOutputBufferIndex:I

    .line 374
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v5

    .line 376
    .local v5, "videoTrack":I
    if-eq v5, v3, :cond_14

    .line 377
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 382
    .local v6, "formatV":Landroid/media/MediaFormat;
    const/4 v7, 0x0

    .line 383
    .local v7, "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_2

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v8, v11, v9

    if-eqz v8, :cond_2

    .line 384
    invoke-direct {v0, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v8

    .line 385
    .local v8, "bufferSizeV":I
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 386
    .local v11, "tempBuffer":Ljava/nio/ByteBuffer;
    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v11, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    if-lez v12, :cond_2

    .line 387
    new-instance v12, Lcom/samsung/android/transcode/util/NalUnitParser;

    invoke-direct {v12, v11}, Lcom/samsung/android/transcode/util/NalUnitParser;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v7, v12

    .line 388
    invoke-virtual {v7}, Lcom/samsung/android/transcode/util/NalUnitParser;->findHDRStaticMeta()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/transcode/util/NalUnitParser;->getHdrStaticMeta()Ljava/nio/ByteBuffer;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 389
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "has hdr static meta : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to find hdr static meta "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v7, 0x0

    .line 397
    .end local v8    # "bufferSizeV":I
    .end local v11    # "tempBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    invoke-direct {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimVideoStartPointChanged()V

    .line 399
    invoke-direct {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkAudioTranscodeSection()V

    .line 402
    const-string v8, "Rewriting starts"

    invoke-static {v2, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 405
    iput-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 407
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v8

    .line 408
    .local v8, "audioTrack":I
    const/4 v9, 0x0

    .line 409
    .local v9, "formatA":Landroid/media/MediaFormat;
    if-eq v8, v3, :cond_3

    .line 410
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9

    .line 413
    :cond_3
    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v10, :cond_10

    .line 414
    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_4
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 415
    .local v10, "filepath":Ljava/lang/String;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filepath :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 417
    const-string v11, "param-meta-author"

    const/16 v12, 0x8

    invoke-virtual {v6, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 418
    const-string v11, "param-meta-transcoding"

    invoke-virtual {v6, v11, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 420
    :cond_5
    sget-object v11, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v11, v11, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 421
    sget-object v11, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v11, v11, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v12, "param-meta-brand-model-name"

    invoke-virtual {v6, v12, v11}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_6
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string v12, "mime"

    const-string v13, "param-meta-recording-mode"

    if-eq v11, v3, :cond_7

    .line 424
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v6, v13, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 425
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set recording mode for NDE : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 426
    :cond_7
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0xa

    if-eq v11, v14, :cond_c

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0x19

    if-ne v11, v14, :cond_8

    goto/16 :goto_3

    .line 430
    :cond_8
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0x1a

    if-eq v11, v14, :cond_b

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0x1b

    if-ne v11, v14, :cond_9

    goto :goto_2

    .line 434
    :cond_9
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0x1d

    if-ne v11, v14, :cond_d

    .line 435
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v6, v13, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 436
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set recording mode for MV_HEVC : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v11, "video/hevc"

    invoke-virtual {v6, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 439
    const-string v11, "video/x-mvhevc"

    invoke-virtual {v6, v12, v11}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_a
    const-string v11, "csd-mvhevc-ext"

    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 443
    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 444
    .local v13, "csd":Ljava/nio/ByteBuffer;
    if-eqz v13, :cond_d

    .line 445
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v14, v14, [B

    .line 446
    .local v14, "buffer":[B
    array-length v15, v14

    invoke-virtual {v13, v14, v1, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 447
    array-length v15, v14

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 448
    .local v15, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v3, v14

    invoke-virtual {v15, v14, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 449
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 450
    const-string v3, "csd-1"

    invoke-virtual {v6, v3, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 451
    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->removeKey(Ljava/lang/String;)V

    goto :goto_4

    .line 432
    .end local v13    # "csd":Ljava/nio/ByteBuffer;
    .end local v14    # "buffer":[B
    .end local v15    # "csdTemp":Ljava/nio/ByteBuffer;
    :cond_b
    :goto_2
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v6, v13, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set recording mode for Log video : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 428
    :cond_c
    :goto_3
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v6, v13, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set recording mode for HDR 10 PLUS : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_d
    :goto_4
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 457
    if-eqz v9, :cond_e

    const-string v3, "audio/unknown"

    invoke-virtual {v9, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 458
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v9}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_5

    .line 462
    :cond_e
    const/4 v3, -0x1

    move v8, v3

    .line 464
    :goto_5
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v3, v11}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 465
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v3, :cond_f

    .line 466
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v11, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v11, v11, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v12, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v12, v12, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v3, v11, v12}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 468
    :cond_f
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 469
    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 472
    .end local v10    # "filepath":Ljava/lang/String;
    :cond_10
    invoke-direct {v0, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v3

    .line 473
    .local v3, "bufferSizeV":I
    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-direct {v0, v10, v11, v7, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->rewriteVideo(JLcom/samsung/android/transcode/util/NalUnitParser;I)V

    .line 475
    const/4 v4, -0x1

    if-eq v8, v4, :cond_12

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    if-eqz v4, :cond_11

    goto :goto_6

    .line 478
    :cond_11
    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/transcode/core/EncodeVideo;->rewriteAudio(J)V

    goto :goto_7

    .line 476
    :cond_12
    :goto_6
    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 480
    :goto_7
    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v1, :cond_13

    .line 481
    const-string v1, "Rewriting finished"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_13
    return-void

    .line 379
    .end local v3    # "bufferSizeV":I
    .end local v6    # "formatV":Landroid/media/MediaFormat;
    .end local v7    # "firstNalUnit":Lcom/samsung/android/transcode/util/NalUnitParser;
    .end local v8    # "audioTrack":I
    .end local v9    # "formatA":Landroid/media/MediaFormat;
    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Absent valid video track"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startSMEncoding()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "Not starting Slowmotion encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void

    .line 585
    :cond_0
    const-string v0, "startSMEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_video()V

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    .line 590
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 595
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 599
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transcode section - Audio : Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 606
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Video: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 607
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimVideoStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    .line 613
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_9

    .line 614
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_6

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    .line 618
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-nez v0, :cond_7

    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startVideoDecoding()V

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 623
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->sendFrametoEncoder()V

    .line 625
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-eqz v0, :cond_4

    .line 626
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding abruptly stopped mUserStop ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCodecError? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    nop

    .line 630
    :cond_9
    return-void
.end method

.method public startSMRewriting()V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void

    .line 718
    :cond_0
    const-string v0, "startSMRewriting"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    .line 721
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    .line 722
    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 723
    .local v4, "trimRewriteEndTime":J
    invoke-direct {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimAudioStartPos()V

    .line 727
    const-string v0, "Rewriting starts"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    .line 731
    :cond_1
    const/4 v0, 0x0

    .line 732
    .local v0, "sawEOSV":Z
    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 733
    .local v6, "videoTrack":I
    const/4 v7, -0x1

    .line 734
    .local v7, "audioTrack":I
    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 737
    :cond_2
    const/4 v8, 0x0

    .line 739
    .local v8, "formatA":Landroid/media/MediaFormat;
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 740
    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 742
    const/4 v11, -0x1

    if-eq v6, v11, :cond_15

    .line 743
    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    .line 748
    .local v12, "formatV":Landroid/media/MediaFormat;
    if-eq v7, v11, :cond_3

    .line 749
    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 752
    :cond_3
    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    const/4 v14, 0x1

    if-nez v13, :cond_6

    .line 753
    invoke-direct {v1, v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v12

    .line 754
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video format "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v13, v12}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v13

    iput v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 756
    if-eqz v8, :cond_5

    const-string v13, "mime"

    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "audio/unknown"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 757
    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "csd-0"

    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 758
    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 759
    .local v15, "csd":Ljava/nio/ByteBuffer;
    move-wide/from16 v16, v9

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    new-array v9, v9, [B

    .line 760
    .local v9, "buffer":[B
    array-length v10, v9

    invoke-virtual {v15, v9, v3, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 761
    const/16 v10, 0x11

    aput-byte v10, v9, v3

    .line 762
    const/16 v10, -0x70

    aput-byte v10, v9, v14

    .line 763
    array-length v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 764
    .local v10, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v11, v9

    invoke-virtual {v10, v9, v3, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 765
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 766
    invoke-virtual {v8, v13, v10}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 757
    .end local v9    # "buffer":[B
    .end local v10    # "csdTemp":Ljava/nio/ByteBuffer;
    .end local v15    # "csd":Ljava/nio/ByteBuffer;
    :cond_4
    move-wide/from16 v16, v9

    .line 768
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9

    iput v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_1

    .line 756
    :cond_5
    move-wide/from16 v16, v9

    .line 771
    const/4 v7, -0x1

    .line 774
    :goto_1
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v9, v10}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 775
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    .line 776
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    goto :goto_2

    .line 752
    :cond_6
    move-wide/from16 v16, v9

    .line 779
    :goto_2
    const/4 v9, 0x0

    .line 781
    .local v9, "offset":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_7

    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    if-eqz v10, :cond_8

    .line 783
    :cond_7
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 784
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractorDone:Z

    .line 785
    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 788
    :cond_8
    const/4 v10, -0x1

    if-eq v7, v10, :cond_9

    .line 789
    :goto_3
    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v10, :cond_9

    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v10, :cond_9

    .line 790
    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    goto :goto_3

    .line 794
    :cond_9
    invoke-direct {v1, v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v10

    .line 795
    .local v10, "bufferSizeV":I
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 796
    .local v11, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 797
    .local v13, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v11, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 799
    invoke-static {v12}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v14

    .line 800
    .local v14, "isHevc":Z
    const-wide/16 v18, 0x0

    move v15, v0

    .line 802
    .end local v0    # "sawEOSV":Z
    .local v15, "sawEOSV":Z
    .local v18, "prevModifiedVideotime":J
    :goto_4
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_13

    if-nez v15, :cond_13

    .line 803
    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 804
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v11, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 805
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_a

    .line 806
    const-string v0, "saw input EOS: Video"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const/4 v15, 0x1

    .line 808
    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_4

    .line 810
    :cond_a
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-wide/from16 v20, v4

    .end local v4    # "trimRewriteEndTime":J
    .local v20, "trimRewriteEndTime":J
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    .line 811
    .local v3, "presentationTimeUs":J
    iput-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModifiedVideotime = presentationTime = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v22, v6

    .end local v6    # "videoTrack":I
    .local v22, "videoTrack":I
    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_b

    .line 817
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 818
    .local v0, "a":[B
    const/4 v5, 0x4

    .line 819
    .local v5, "pos":I
    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 820
    array-length v6, v0

    move/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "pos":I
    .local v23, "pos":I
    invoke-virtual {v11, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 821
    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 822
    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->calculateIsDrop([BJ)Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    .line 824
    .end local v0    # "a":[B
    .end local v23    # "pos":I
    :cond_b
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 826
    cmp-long v0, v18, v16

    if-eqz v0, :cond_c

    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    sub-long v5, v5, v18

    goto :goto_5

    :cond_c
    move-wide/from16 v5, v16

    .line 828
    .local v5, "frameDuration":J
    :goto_5
    const-wide/16 v23, -0x1

    cmp-long v0, v20, v23

    if-eqz v0, :cond_d

    move-wide/from16 v23, v3

    .end local v3    # "presentationTimeUs":J
    .local v23, "presentationTimeUs":J
    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v3, v5

    move-wide/from16 v25, v3

    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v0, v25, v3

    if-lez v0, :cond_e

    .line 829
    const/4 v0, 0x1

    .line 830
    .end local v15    # "sawEOSV":Z
    .local v0, "sawEOSV":Z
    const-string v3, "sawEOS: true: V"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v0

    const/4 v3, 0x0

    goto/16 :goto_a

    .line 828
    .end local v0    # "sawEOSV":Z
    .end local v23    # "presentationTimeUs":J
    .restart local v3    # "presentationTimeUs":J
    .restart local v15    # "sawEOSV":Z
    :cond_d
    move-wide/from16 v23, v3

    .line 832
    .end local v3    # "presentationTimeUs":J
    .restart local v23    # "presentationTimeUs":J
    :cond_e
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iput-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 833
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 834
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    .line 836
    .end local v18    # "prevModifiedVideotime":J
    .local v3, "prevModifiedVideotime":J
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    if-nez v0, :cond_12

    .line 838
    const/4 v0, 0x0

    .local v0, "i":I
    const/16 v18, 0x0

    .line 839
    .local v18, "index":I
    move/from16 v19, v0

    .end local v0    # "i":I
    .local v19, "i":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move-wide/from16 v25, v3

    .end local v3    # "prevModifiedVideotime":J
    .local v25, "prevModifiedVideotime":J
    new-array v3, v0, [B

    .line 840
    .local v3, "encodedStream":[B
    array-length v0, v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeSampleData time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v27, v5

    .end local v5    # "frameDuration":J
    .local v27, "frameDuration":J
    iget-wide v4, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " length="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    if-nez v14, :cond_10

    move/from16 v0, v19

    .line 849
    .end local v19    # "i":I
    .restart local v0    # "i":I
    :goto_6
    move v4, v0

    .line 850
    .end local v18    # "index":I
    .local v4, "index":I
    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v5, v5

    add-int/2addr v5, v0

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->findNalStartCode([BI)I

    move-result v0

    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findNalStartCode. i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const/4 v5, -0x1

    if-ne v0, v5, :cond_f

    move/from16 v19, v0

    goto :goto_7

    :cond_f
    move/from16 v18, v4

    goto :goto_6

    .line 847
    .end local v0    # "i":I
    .end local v4    # "index":I
    .restart local v18    # "index":I
    .restart local v19    # "i":I
    :cond_10
    move/from16 v4, v18

    .line 855
    .end local v18    # "index":I
    .restart local v4    # "index":I
    :goto_7
    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 857
    iput v4, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 861
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v5, v11, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    goto :goto_8

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to writeSampleData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8
    const/4 v5, -0x1

    if-ne v7, v5, :cond_11

    .line 866
    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    .line 868
    :cond_11
    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "encodedStream":[B
    .local v18, "encodedStream":[B
    invoke-virtual {v1, v5, v6, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    goto :goto_9

    .line 836
    .end local v4    # "index":I
    .end local v18    # "encodedStream":[B
    .end local v19    # "i":I
    .end local v25    # "prevModifiedVideotime":J
    .end local v27    # "frameDuration":J
    .local v3, "prevModifiedVideotime":J
    .restart local v5    # "frameDuration":J
    :cond_12
    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    const/4 v3, 0x0

    .line 870
    .end local v3    # "prevModifiedVideotime":J
    .end local v5    # "frameDuration":J
    .restart local v25    # "prevModifiedVideotime":J
    .restart local v27    # "frameDuration":J
    :goto_9
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-wide/from16 v18, v25

    .line 872
    .end local v23    # "presentationTimeUs":J
    .end local v25    # "prevModifiedVideotime":J
    .end local v27    # "frameDuration":J
    .local v18, "prevModifiedVideotime":J
    :goto_a
    move-wide/from16 v4, v20

    move/from16 v6, v22

    goto/16 :goto_4

    .line 802
    .end local v20    # "trimRewriteEndTime":J
    .end local v22    # "videoTrack":I
    .local v4, "trimRewriteEndTime":J
    .restart local v6    # "videoTrack":I
    :cond_13
    move-wide/from16 v20, v4

    move/from16 v22, v6

    .line 875
    .end local v4    # "trimRewriteEndTime":J
    .end local v6    # "videoTrack":I
    .restart local v20    # "trimRewriteEndTime":J
    .restart local v22    # "videoTrack":I
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_14

    const-string v0, "Rewriting finished"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_14
    return-void

    .line 745
    .end local v9    # "offset":I
    .end local v10    # "bufferSizeV":I
    .end local v11    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v12    # "formatV":Landroid/media/MediaFormat;
    .end local v13    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    .end local v14    # "isHevc":Z
    .end local v15    # "sawEOSV":Z
    .end local v18    # "prevModifiedVideotime":J
    .end local v20    # "trimRewriteEndTime":J
    .end local v22    # "videoTrack":I
    .local v0, "sawEOSV":Z
    .restart local v4    # "trimRewriteEndTime":J
    .restart local v6    # "videoTrack":I
    :cond_15
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Absent valid video track"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public stop()V
    .locals 5

    .line 1030
    const-string v0, "TranscodeLib"

    const-string v1, "Stop method called "

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-eqz v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    .line 1036
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    .line 1037
    const-string v1, "TranscodeLib"

    const-string v2, "mUserStop - true"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 1040
    :cond_1
    :try_start_1
    const-string v1, "TranscodeLib"

    const-string v2, "Calling wait on stop lock."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    :try_start_2
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1046
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "TranscodeLib"

    const-string v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1046
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1049
    :cond_2
    :goto_1
    monitor-exit v0

    .line 1050
    return-void

    .line 1046
    :goto_2
    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mEncoding :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V

    .line 1048
    :cond_3
    nop

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    throw v1

    .line 1049
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
