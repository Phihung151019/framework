.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
.super Ljava/lang/Object;
.source "SelfMotionPanoramaInfo.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# static fields
.field private static final SEF_KEYNAME_SOUND_SHOT_WAVE:Ljava/lang/String; = "Motion_Panorama_AAC_000"

.field private static final SMP_HEIGHT:I = 0x5a0

.field private static final SMP_WIDTH:I = 0x780

.field static mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;


# instance fields
.field final KEY_INFO:Ljava/lang/String;

.field final KEY_VIDEO:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private bInit:Z

.field private isSEFDataFlagNull:Z

.field public mAlgoType:I

.field public mAlgoVersion:I

.field public mCameraType:I

.field public mCaptureDirection:I

.field public mCropHeight:I

.field public mCropWidth:I

.field public mCropX:I

.field public mCropY:I

.field public mExtraFramesEndMatrix:[[F

.field public mExtraFramesStartMatrix:[[F

.field private mFilePath:Ljava/lang/String;

.field public mFirstFrame:I

.field public mFrameRendererFlag:[I

.field public mHeight:I

.field public mIsFilpRequired:Z

.field public mLastFrame:I

.field public mMatrixHeight:I

.field public mMatrixWidth:I

.field public mMaxInputFrameCount:I

.field public mNumExtraFramesEnd:I

.field public mNumExtraFramesStart:I

.field public mOrientation:I

.field public mSRCMatrix:[[F

.field public mTimeStamp:[J

.field public mTotalFrames:I

.field public mVideo:[B

.field public mVideoLength:I

.field public mVideoPath:Ljava/lang/String;

.field public mVideoStart:I

.field public mWidth:I

.field public maxFramesForViewAngleFitting:I

.field private sefFile:Ljava/io/File;

.field private tempPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "Wide_Selfie_Motion_Info"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->KEY_INFO:Ljava/lang/String;

    .line 20
    const-string v0, "Wide_Selfie_Motion_MP4_000"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->KEY_VIDEO:Ljava/lang/String;

    .line 22
    const-string v0, "/.interactivePano.mp4"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    .line 34
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    .line 35
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    .line 36
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    .line 37
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    .line 38
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    .line 39
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    .line 40
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    .line 41
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    .line 42
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    .line 43
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    .line 44
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    .line 45
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    .line 46
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    .line 47
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    .line 48
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    .line 49
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoStart:I

    .line 50
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoLength:I

    .line 69
    return-void
.end method

.method public static declared-synchronized freeInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    monitor-enter v0

    .line 82
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v0

    return-void

    .line 81
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getInfo(Ljava/lang/String;)Z
    .locals 13
    .param p1, "outPath"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string v2, "Wide_Selfie_Motion_Info"

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v1, "data":[B
    const-string v2, "InteractivePano_SelfMotionPanoramaInfo"

    if-nez v1, :cond_0

    .line 148
    :try_start_1
    const-string v3, "SEF:getSEFData KEY_INFO returns null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0

    .line 152
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    .line 153
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    .line 154
    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    .line 155
    const/4 v5, 0x3

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    .line 156
    const/4 v5, 0x4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    .line 158
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/16 v7, 0x780

    if-ne v6, v7, :cond_a

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    const/16 v7, 0x5a0

    if-ne v6, v7, :cond_a

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-lez v6, :cond_a

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    if-ltz v6, :cond_a

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    if-ltz v6, :cond_a

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    if-lez v6, :cond_a

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-le v6, v7, :cond_1

    goto/16 :goto_5

    .line 164
    :cond_1
    const/4 v6, 0x5

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    .line 165
    const/4 v6, 0x6

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    .line 166
    const/4 v6, 0x7

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    .line 167
    const/16 v6, 0x8

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    .line 171
    const/16 v6, 0x9

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    .line 173
    const/16 v7, 0xa

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    if-ne v7, v3, :cond_2

    move v7, v3

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    iput-boolean v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    .line 174
    const/16 v7, 0xb

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMaxInputFrameCount:I

    .line 175
    const/16 v7, 0xc

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    .line 176
    const/16 v7, 0xd

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    .line 177
    const/16 v7, 0xe

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    .line 178
    const/16 v7, 0xf

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    .line 179
    const/16 v7, 0x10

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    .line 180
    const/16 v7, 0x11

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    .line 182
    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    new-array v4, v4, [I

    aput v6, v4, v3

    aput v7, v4, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    .line 183
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_8

    .line 194
    .end local v4    # "i":I
    const v4, 0x8ce8

    .line 195
    .local v4, "offset":I
    move v6, v4

    .line 196
    .local v6, "initialOffset":I
    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    new-array v7, v7, [J

    iput-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTimeStamp:[J

    .line 197
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-lt v7, v8, :cond_7

    .line 202
    .end local v7    # "i":I
    const/16 v7, 0xfa0

    .line 203
    .local v7, "inputTransformData":I
    add-int/lit16 v8, v6, 0x1f40

    add-int/2addr v8, v7

    div-int/2addr v8, v5

    .line 205
    .local v8, "f_id":I
    iget v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    .line 206
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    iget v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-lt v9, v10, :cond_6

    .line 211
    .end local v9    # "i":I
    add-int/lit16 v9, v6, 0x1f40

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v9, v10

    div-int/2addr v9, v5

    .line 212
    .end local v8    # "f_id":I
    .local v9, "f_id":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "offset 2 ="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, v1, v9}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->updateExtraFrameData([BI)V

    .line 217
    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string v8, "Wide_Selfie_Motion_MP4_000"

    invoke-static {v5, v8}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v5

    .line 218
    .end local v1    # "data":[B
    .local v5, "data":[B
    if-nez v5, :cond_3

    .line 220
    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    .line 221
    const-string v1, "SEF Data Null"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v0

    .line 225
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "parentPath":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    .line 230
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "input video file path=  "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 235
    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 236
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 237
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    nop

    .line 239
    nop

    .line 241
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 242
    nop

    .line 245
    .end local v1    # "parentPath":Ljava/lang/String;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "offset":I
    .end local v5    # "data":[B
    .end local v6    # "initialOffset":I
    .end local v7    # "inputTransformData":I
    .end local v9    # "f_id":I
    nop

    .line 261
    return v3

    .line 238
    .restart local v1    # "parentPath":Ljava/lang/String;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "offset":I
    .restart local v5    # "data":[B
    .restart local v6    # "initialOffset":I
    .restart local v7    # "inputTransformData":I
    .restart local v9    # "f_id":I
    :catchall_0
    move-exception v3

    .line 239
    if-eqz v2, :cond_5

    .line 241
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 242
    const/4 v2, 0x0

    .line 244
    :cond_5
    nop

    .end local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    .end local p1    # "outPath":Ljava/lang/String;
    throw v3

    .line 207
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "data":[B
    .local v1, "data":[B
    .restart local v8    # "f_id":I
    .local v9, "i":I
    .restart local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    .restart local p1    # "outPath":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "f_id":I
    .local v10, "f_id":I
    invoke-direct {p0, v1, v8}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v8

    .line 208
    .local v8, "rflag":I
    iget-object v11, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    aput v8, v11, v9

    .line 206
    .end local v8    # "rflag":I
    add-int/lit8 v9, v9, 0x1

    move v8, v10

    goto/16 :goto_3

    .line 198
    .end local v9    # "i":I
    .end local v10    # "f_id":I
    .local v7, "i":I
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTimeStamp:[J

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getLong([BI)J

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 199
    add-int/lit8 v4, v4, 0x8

    .line 197
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 184
    .end local v6    # "initialOffset":I
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_8
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v7, v7, v4

    array-length v7, v7

    if-lt v6, v7, :cond_9

    .line 183
    .end local v6    # "j":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 185
    .restart local v6    # "j":I
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v7, v7, v4

    array-length v7, v7

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x12

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    .line 186
    .local v7, "result":I
    int-to-double v8, v7

    .line 187
    .local v8, "value":D
    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v10, v10, v4

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double v11, v8, v11

    double-to-float v11, v11

    aput v11, v10, v6

    .line 184
    .end local v7    # "result":I
    .end local v8    # "value":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 160
    .end local v4    # "i":I
    .end local v6    # "j":I
    :cond_a
    :goto_5
    const-string v3, "Total Frames is less than or equal to Zero "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 161
    return v0

    .line 256
    .end local v1    # "data":[B
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    return v0

    .line 251
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    return v0

    .line 246
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 248
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 249
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    .line 77
    :cond_0
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 73
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getInt([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    mul-int/lit8 p2, p2, 0x4

    .line 299
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 301
    .local v0, "value":I
    return v0
.end method

.method private getLong([BI)J
    .locals 7
    .param p1, "data"    # [B
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 307
    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    .line 306
    or-long/2addr v0, v4

    .line 307
    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    .line 306
    or-long/2addr v0, v4

    .line 307
    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    .line 306
    or-long/2addr v0, v4

    .line 307
    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    .line 306
    or-long/2addr v0, v2

    .line 309
    .local v0, "value":J
    return-wide v0
.end method

.method public static getParentDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileOrDirPath"    # Ljava/lang/String;

    .line 132
    :try_start_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateExtraFrameData([BI)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "f_id"    # I

    .line 266
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "InteractivePano_SelfMotionPanoramaInfo"

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "f_id":I
    .local v4, "f_id":I
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 267
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "f_id":I
    .local v5, "f_id":I
    :try_start_1
    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "INFO: maxFramesForViewAngleFitting = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mNumExtraFramesStart="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    const/16 v4, 0x9

    mul-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 271
    .local v0, "offset":I
    iget v6, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x1

    aput v4, v8, v9

    const/4 v10, 0x0

    aput v6, v8, v10

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    iput-object v6, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    .line 272
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v8, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    array-length v8, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-wide v11, 0x412e848000000000L    # 1000000.0

    if-lt v6, v8, :cond_2

    .line 280
    .end local v6    # "i":I
    move v5, v0

    .line 281
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "f_id":I
    .local v6, "f_id":I
    :try_start_2
    invoke-direct {v1, v2, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    .line 282
    iget v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    new-array v7, v7, [I

    aput v4, v7, v9

    aput v5, v7, v10

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    .line 283
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 290
    .end local v0    # "offset":I
    .end local v4    # "i":I
    goto/16 :goto_5

    .line 284
    .restart local v0    # "offset":I
    .restart local v4    # "i":I
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget-object v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v7, v7, v4

    array-length v7, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-lt v5, v7, :cond_1

    .line 283
    .end local v5    # "j":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 285
    .restart local v5    # "j":I
    :cond_1
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "f_id":I
    .local v7, "f_id":I
    :try_start_3
    invoke-direct {v1, v2, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v6

    .line 286
    .local v6, "result":I
    int-to-double v8, v6

    .line 287
    .local v8, "value":D
    iget-object v10, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v10, v10, v4

    div-double v13, v8, v11

    double-to-float v13, v13

    aput v13, v10, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 284
    .end local v6    # "result":I
    .end local v8    # "value":D
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_2

    .line 290
    .end local v0    # "offset":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :catch_0
    move-exception v0

    move v4, v7

    goto :goto_4

    .end local v7    # "f_id":I
    .local v6, "f_id":I
    :catch_1
    move-exception v0

    move v4, v6

    goto :goto_4

    .line 273
    .restart local v0    # "offset":I
    .local v5, "f_id":I
    .local v6, "i":I
    :cond_2
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    :try_start_4
    iget-object v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v13, v13, v6

    array-length v13, v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-lt v8, v13, :cond_3

    .line 272
    .end local v8    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 274
    .restart local v8    # "j":I
    :cond_3
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "f_id":I
    .local v13, "f_id":I
    :try_start_5
    invoke-direct {v1, v2, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    .line 275
    .local v5, "result":I
    int-to-double v14, v5

    .line 276
    .local v14, "value":D
    iget-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v4, v4, v6

    move/from16 v16, v8

    .end local v8    # "j":I
    .local v16, "j":I
    div-double v7, v14, v11

    double-to-float v7, v7

    aput v7, v4, v16
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 273
    .end local v5    # "result":I
    .end local v14    # "value":D
    add-int/lit8 v8, v16, 0x1

    move v5, v13

    const/16 v4, 0x9

    const/4 v7, 0x2

    .end local v16    # "j":I
    .restart local v8    # "j":I
    goto :goto_3

    .line 290
    .end local v0    # "offset":I
    .end local v6    # "i":I
    .end local v8    # "j":I
    :catch_2
    move-exception v0

    move v4, v13

    goto :goto_4

    .end local v13    # "f_id":I
    .local v5, "f_id":I
    :catch_3
    move-exception v0

    move v4, v5

    goto :goto_4

    .end local v5    # "f_id":I
    .local v4, "f_id":I
    :catch_4
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INFO: updateExtraFrameData"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "f_id":I
    .local v6, "f_id":I
    :goto_5
    return-void
.end method


# virtual methods
.method public getResize()Z
    .locals 1

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getResizedValue(II)V
    .locals 6
    .param p1, "originalDimen"    # I
    .param p2, "newDimen"    # I

    .line 314
    if-ne p1, p2, :cond_0

    .line 315
    return-void

    .line 316
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 317
    .local v0, "aspectRatio":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 325
    .end local v1    # "i":I
    const/16 v1, 0x500

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    .line 326
    const/16 v1, 0x2d0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    .line 328
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    .line 329
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    .line 330
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    .line 331
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    .line 332
    return-void

    .line 319
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v1

    const/4 v3, 0x6

    aget v2, v2, v3

    .line 320
    .local v2, "value":F
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v1

    div-float v5, v2, v0

    aput v5, v4, v3

    .line 321
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    const/4 v4, 0x7

    aget v2, v3, v4

    .line 322
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    div-float v5, v2, v0

    aput v5, v3, v4

    .line 317
    .end local v2    # "value":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "outPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 87
    :try_start_0
    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string v1, "self motion pano sharevia version 1.0.0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bInit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 97
    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return v2

    .line 106
    .end local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string v1, "SEF File INFO is incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return v2

    .line 111
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    if-nez v0, :cond_2

    .line 113
    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    monitor-exit p0

    return v2

    .line 121
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 86
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "outPath":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public printInfo()V
    .locals 5

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP:: mWidth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mHeight: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mTotalFrames: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mFirstFrame: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mLastFrame: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mAlgoType: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mAlgoVersion: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mOrientation: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCaptureDirection: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCameraType: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCropX: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCropY: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCropWidth: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCropHeight: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mMatrixWidth: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mMatrixHeight: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INFO: mIsFilpRequired = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INFO: mMaxInputFrameCount = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMaxInputFrameCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v2, v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IP:: mSRCMatrix["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    if-eqz v0, :cond_2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP :: mFrameRenderingFlags = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP: maxFramesForViewAngleFitting = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP: mNumExtraFramesStart = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    const-string v3, "]="

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    array-length v2, v2

    if-lt v0, v2, :cond_3

    goto :goto_3

    .line 372
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "IP: mExtraFramesStartMatrix["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 375
    .end local v0    # "i":I
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IP: mNumExtraFramesEnd = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    array-length v2, v2

    if-lt v0, v2, :cond_5

    goto :goto_5

    .line 378
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "IP: mExtraFramesEndMatrix["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 380
    .end local v0    # "i":I
    :cond_6
    :goto_5
    return-void
.end method

.method public transformRotation()I
    .locals 2

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "mrotation":I
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 397
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 394
    :sswitch_1
    const/4 v0, 0x2

    .line 395
    goto :goto_0

    .line 391
    :sswitch_2
    const/4 v0, 0x1

    .line 392
    goto :goto_0

    .line 388
    :sswitch_3
    const/4 v0, 0x0

    .line 389
    nop

    .line 400
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
