.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
.super Ljava/lang/Object;
.source "InteractiveShotInfo.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# static fields
.field static mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;


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

.field private mFilePath:Ljava/lang/String;

.field public mFirstFrame:I

.field public mHeight:I

.field public mLastFrame:I

.field public mMatrixHeight:I

.field public mMatrixWidth:I

.field public mOrientation:I

.field public mSRCMatrix:[[F

.field public mTotalFrames:I

.field public mVideo:[B

.field public mVideoLength:I

.field public mVideoPath:Ljava/lang/String;

.field public mVideoStart:I

.field public mWidth:I

.field private sefFile:Ljava/io/File;

.field private tempPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "InteractiveShotInfo"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "Interactive_Panorama_Info"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->KEY_INFO:Ljava/lang/String;

    .line 19
    const-string v0, "Interactive_Panorama_000"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->KEY_VIDEO:Ljava/lang/String;

    .line 20
    const-string v0, "/.interactivePano.mp4"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    .line 30
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    .line 31
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    .line 32
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    .line 33
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    .line 34
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    .line 35
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    .line 36
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    .line 37
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    .line 38
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    .line 39
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    .line 40
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    .line 41
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    .line 42
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    .line 43
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    .line 44
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    .line 45
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoStart:I

    .line 46
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoLength:I

    .line 54
    return-void
.end method

.method public static declared-synchronized freeInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    monitor-enter v0

    .line 66
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    .line 65
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getInfo(Ljava/lang/String;)V
    .locals 11
    .param p1, "outPath"    # Ljava/lang/String;

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    const-string v1, "Interactive_Panorama_Info"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v0, "data":[B
    const-string v1, "InteractiveShotInfo"

    if-nez v0, :cond_0

    .line 129
    :try_start_1
    const-string v2, "SEF:getSEFData KEY_INFO returns null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 133
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    .line 134
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    .line 135
    const/4 v4, 0x2

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    .line 136
    const/4 v5, 0x3

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    .line 137
    const/4 v5, 0x4

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    .line 139
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    if-gtz v5, :cond_1

    goto/16 :goto_2

    .line 145
    :cond_1
    const/4 v5, 0x5

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    .line 146
    const/4 v5, 0x6

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    .line 147
    const/4 v5, 0x7

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    .line 148
    const/16 v5, 0x8

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    .line 151
    const/16 v5, 0x9

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    .line 152
    const/16 v6, 0xa

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    .line 153
    const/16 v6, 0xb

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    .line 154
    const/16 v6, 0xc

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    .line 155
    const/16 v6, 0xd

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    .line 156
    const/16 v6, 0xe

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    .line 157
    const/16 v6, 0xf

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    .line 159
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    new-array v4, v4, [I

    aput v5, v4, v3

    aput v6, v4, v2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    .line 160
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v4, v4

    if-lt v2, v4, :cond_5

    .line 168
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    const-string v4, "Interactive_Panorama_000"

    invoke-static {v2, v4}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    .line 169
    .end local v0    # "data":[B
    .local v2, "data":[B
    if-nez v2, :cond_2

    .line 171
    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    .line 172
    const-string v0, "SEF Data Null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 176
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "parentPath":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    .line 181
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "input video file path=  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 186
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 187
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 188
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    nop

    .line 190
    nop

    .line 192
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 193
    nop

    .line 196
    .end local v0    # "parentPath":Ljava/lang/String;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v2    # "data":[B
    nop

    .line 207
    return-void

    .line 189
    .restart local v0    # "parentPath":Ljava/lang/String;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "data":[B
    :catchall_0
    move-exception v3

    .line 190
    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 193
    const/4 v1, 0x0

    .line 195
    :cond_4
    nop

    .end local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    .end local p1    # "outPath":Ljava/lang/String;
    throw v3

    .line 161
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v0, "data":[B
    .local v2, "i":I
    .restart local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    .restart local p1    # "outPath":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v5, v5, v2

    array-length v5, v5

    if-lt v4, v5, :cond_6

    .line 160
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .restart local v4    # "j":I
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v5, v5, v2

    array-length v5, v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x10

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v5

    .line 163
    .local v5, "result":I
    int-to-double v6, v5

    .line 164
    .local v6, "value":D
    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v8, v8, v2

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double v9, v6, v9

    double-to-float v9, v9

    aput v9, v8, v4

    .line 161
    .end local v5    # "result":I
    .end local v6    # "value":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    .end local v2    # "i":I
    .end local v4    # "j":I
    :cond_7
    :goto_2
    const-string v2, "Total Frames is less than or equal to Zero "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    return-void

    .line 202
    .end local v0    # "data":[B
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    return-void

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 200
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    .line 61
    :cond_0
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 57
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

    .line 211
    mul-int/lit8 p2, p2, 0x4

    .line 212
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

    .line 214
    .local v0, "value":I
    return v0
.end method

.method public static getParentDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileOrDirPath"    # Ljava/lang/String;

    .line 113
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

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getResize()Z
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getResizedValue(II)V
    .locals 6
    .param p1, "originalDimen"    # I
    .param p2, "newDimen"    # I

    .line 221
    if-ne p1, p2, :cond_0

    .line 222
    return-void

    .line 223
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 224
    .local v0, "aspectRatio":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 232
    .end local v1    # "i":I
    const/16 v1, 0x500

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    .line 233
    const/16 v1, 0x2d0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    .line 235
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    .line 236
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    .line 237
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    .line 238
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    .line 239
    return-void

    .line 226
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v1

    const/4 v3, 0x6

    aget v2, v2, v3

    .line 227
    .local v2, "value":F
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v1

    div-float v5, v2, v0

    aput v5, v4, v3

    .line 228
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    const/4 v4, 0x7

    aget v2, v3, v4

    .line 229
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    div-float v5, v2, v0

    aput v5, v3, v4

    .line 224
    .end local v2    # "value":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "outPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 71
    :try_start_0
    const-string v0, "InteractiveShotInfo"

    const-string v1, "frozen moment sharevia version 1.0.8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bInit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFilePath:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "InteractiveShotInfo"

    const-string v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return v2

    .line 90
    .end local p0    # "this":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInfo(Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    if-nez v0, :cond_1

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    .line 95
    goto :goto_0

    .line 98
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return v2

    .line 102
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 70
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "outPath":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public printInfo()V
    .locals 5

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP:: values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InteractiveShotInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 267
    .end local v0    # "i":I
    return-void

    .line 265
    .restart local v0    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public transformRotation()I
    .locals 2

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "mrotation":I
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 282
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 279
    :sswitch_1
    const/4 v0, 0x2

    .line 280
    goto :goto_0

    .line 276
    :sswitch_2
    const/4 v0, 0x1

    .line 277
    goto :goto_0

    .line 273
    :sswitch_3
    const/4 v0, 0x0

    .line 274
    nop

    .line 285
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
