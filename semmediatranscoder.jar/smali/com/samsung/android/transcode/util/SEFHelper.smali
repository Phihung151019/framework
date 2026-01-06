.class public Lcom/samsung/android/transcode/util/SEFHelper;
.super Ljava/lang/Object;
.source "SEFHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/util/SEFHelper$Speed;,
        Lcom/samsung/android/transcode/util/SEFHelper$Region;
    }
.end annotation


# static fields
.field public static final SLOW_MOTION_DATA:Ljava/lang/String; = "SlowMotion_Data"

.field public static final SUPER_SLOW_MOTION_DATA:Ljava/lang/String; = "Super_SlowMotion_Data"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mFilepath:Ljava/lang/String;

.field private mRecordingFps:I

.field private mRecordingMode:I

.field private mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation
.end field

.field private mSEFData:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    return-void
.end method

.method private checkValidSEFData(Ljava/lang/String;)Z
    .locals 13
    .param p1, "data"    # Ljava/lang/String;

    .line 672
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 673
    return v0

    .line 675
    :cond_0
    const-string v1, "\\*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "slowDataregion":[Ljava/lang/String;
    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    .line 677
    .local v5, "s":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, "regionData":[Ljava/lang/String;
    aget-object v7, v6, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 679
    .local v7, "startTime":I
    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 680
    .local v4, "endTime":I
    const-string v8, "TranscodeLib"

    if-lt v7, v4, :cond_1

    .line 681
    const-string v2, "checkValidSEFData : startTime >= endTime"

    invoke-static {v8, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return v0

    .line 685
    :cond_1
    if-ltz v7, :cond_3

    int-to-long v9, v4

    iget-wide v11, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    goto :goto_1

    .line 676
    .end local v4    # "endTime":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "regionData":[Ljava/lang/String;
    .end local v7    # "startTime":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 686
    .restart local v4    # "endTime":I
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v6    # "regionData":[Ljava/lang/String;
    .restart local v7    # "startTime":I
    :cond_3
    :goto_1
    const-string v2, "checkValidSEFData : startTime < 0  or endTime > mDuration"

    invoke-static {v8, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return v0

    .line 690
    .end local v4    # "endTime":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "regionData":[Ljava/lang/String;
    .end local v7    # "startTime":I
    :cond_4
    return v4
.end method

.method private createDefaultRegion()Z
    .locals 15

    .line 246
    const/4 v0, 0x0

    .line 249
    .local v0, "me":Landroid/media/MediaExtractor;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "me":Landroid/media/MediaExtractor;
    .local v2, "me":Landroid/media/MediaExtractor;
    goto :goto_0

    .line 252
    .end local v2    # "me":Landroid/media/MediaExtractor;
    .restart local v0    # "me":Landroid/media/MediaExtractor;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v2

    .end local v0    # "me":Landroid/media/MediaExtractor;
    .restart local v2    # "me":Landroid/media/MediaExtractor;
    move-object v0, v2

    .line 254
    .end local v2    # "me":Landroid/media/MediaExtractor;
    .restart local v0    # "me":Landroid/media/MediaExtractor;
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    .line 256
    .local v2, "videoTrack":I
    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 257
    .local v3, "inputFormat":Landroid/media/MediaFormat;
    const-string v4, "durationUs"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v2    # "videoTrack":I
    .end local v3    # "inputFormat":Landroid/media/MediaFormat;
    .local v4, "duration":J
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 266
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDefaultRegion duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    .line 268
    return v1

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSlowMotionV2()Z

    move-result v2

    const/4 v6, 0x1

    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x2

    const-wide/16 v11, 0x2710

    if-eqz v2, :cond_5

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    mul-long/2addr v4, v9

    .line 281
    :cond_3
    new-instance v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v2}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 282
    .local v2, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 283
    mul-long v13, v4, v9

    div-long/2addr v13, v11

    long-to-int v1, v13

    iput v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 284
    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 285
    iget-object v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    iput v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 286
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    new-instance v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v1}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v2, v1

    .line 290
    mul-long/2addr v9, v4

    div-long/2addr v9, v11

    long-to-int v1, v9

    iput v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 291
    mul-long v9, v4, v7

    div-long/2addr v9, v11

    long-to-int v1, v9

    iput v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 292
    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 293
    iget-object v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    iput v1, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 294
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_4
    new-instance v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v1}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 298
    .end local v2    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v1, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    mul-long/2addr v7, v4

    div-long/2addr v7, v11

    long-to-int v2, v7

    iput v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 299
    const-wide/16 v7, 0x3e8

    div-long v7, v4, v7

    long-to-int v2, v7

    iput v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 300
    sget-object v2, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 301
    iget-object v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    iput v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 302
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 304
    .end local v1    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_5
    new-instance v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v1}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 305
    .restart local v1    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    mul-long/2addr v9, v4

    div-long/2addr v9, v11

    long-to-int v2, v9

    iput v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 306
    mul-long/2addr v7, v4

    div-long/2addr v7, v11

    long-to-int v2, v7

    iput v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 307
    iget v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    if-ne v2, v6, :cond_6

    .line 308
    sget-object v2, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    goto :goto_1

    .line 309
    :cond_6
    iget v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_7

    .line 310
    sget-object v2, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 312
    :cond_7
    :goto_1
    iget-object v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    iput v2, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 313
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region List "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionStartTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionEndTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionSpeed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionSpeedType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 324
    .end local v2    # "i":I
    :cond_8
    return v6

    .line 262
    .end local v1    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .end local v4    # "duration":J
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    nop

    .line 262
    if-eqz v0, :cond_9

    .line 263
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 260
    :cond_9
    return v1

    .line 262
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_a

    .line 263
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 265
    :cond_a
    throw v1
.end method

.method public static getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .locals 1
    .param p0, "speed"    # I

    .line 106
    packed-switch p0, :pswitch_data_0

    .line 126
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 124
    :pswitch_0
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 122
    :pswitch_1
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 120
    :pswitch_2
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 118
    :pswitch_3
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 116
    :pswitch_4
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 114
    :pswitch_5
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 112
    :pswitch_6
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 110
    :pswitch_7
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 108
    :pswitch_8
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F
    .locals 3
    .param p0, "speedType"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    .line 72
    .local v0, "timescale":F
    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$1;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    const/high16 v0, 0x3d000000    # 0.03125f

    .line 99
    goto :goto_0

    .line 95
    :pswitch_1
    const/high16 v0, 0x3d800000    # 0.0625f

    .line 96
    goto :goto_0

    .line 92
    :pswitch_2
    const/high16 v0, 0x3e000000    # 0.125f

    .line 93
    goto :goto_0

    .line 89
    :pswitch_3
    const/high16 v0, 0x3e800000    # 0.25f

    .line 90
    goto :goto_0

    .line 86
    :pswitch_4
    const/high16 v0, 0x3f000000    # 0.5f

    .line 87
    goto :goto_0

    .line 83
    :pswitch_5
    const/high16 v0, 0x41000000    # 8.0f

    .line 84
    goto :goto_0

    .line 80
    :pswitch_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    goto :goto_0

    .line 77
    :pswitch_7
    const/high16 v0, 0x40000000    # 2.0f

    .line 78
    goto :goto_0

    .line 74
    :pswitch_8
    const/high16 v0, 0x40800000    # 4.0f

    .line 75
    nop

    .line 103
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private is120fpsSlowMotionVideo()Z
    .locals 2

    .line 658
    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    const/16 v1, 0x78

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

.method public static isSEFVideoMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 130
    packed-switch p0, :pswitch_data_0

    .line 145
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 143
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isSlowMotionV2()Z
    .locals 2

    .line 664
    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

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

.method private newslowSEFParserV2(Ljava/lang/String;)Z
    .locals 18
    .param p1, "sefData"    # Ljava/lang/String;

    .line 543
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TranscodeLib"

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sefData read slow : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    if-nez v2, :cond_0

    .line 545
    const-string v0, "sefData == null"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return v4

    .line 548
    :cond_0
    const-string v0, "\\*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "slowDataregion":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "region speed: "

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x3

    const-string v11, ":"

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v5, v13, :cond_4

    .line 551
    :try_start_1
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, "regionData":[Ljava/lang/String;
    new-instance v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v11}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 553
    .local v11, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 554
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 555
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 556
    iget v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v15}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v15

    iput-object v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 557
    iget-object v15, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 561
    .end local v11    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v15, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v11, v5, v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    mul-int/2addr v11, v14

    iput v11, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 562
    aget-object v11, v5, v13

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    mul-int/2addr v11, v14

    iput v11, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 563
    aget-object v11, v5, v14

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_1

    .line 564
    iput v9, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 565
    :cond_1
    aget-object v9, v5, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v14, :cond_2

    .line 566
    iput v8, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 567
    :cond_2
    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_3

    .line 568
    iput v13, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 570
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iput v13, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 573
    :goto_0
    iget v6, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 574
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 576
    .end local v15    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 577
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 578
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 579
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 580
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    nop

    .end local v5    # "regionData":[Ljava/lang/String;
    goto/16 :goto_3

    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_4
    array-length v5, v0

    if-ne v5, v14, :cond_b

    .line 582
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "regionData1":[Ljava/lang/String;
    aget-object v15, v0, v13

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 584
    .local v11, "regionData2":[Ljava/lang/String;
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 585
    .restart local v15    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 586
    aget-object v16, v5, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v17, v4

    mul-int/lit8 v4, v16, 0x2

    :try_start_2
    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 587
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 588
    iget v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v4

    iput-object v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 589
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 592
    .end local v15    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v4, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v15, v5, v17

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 593
    aget-object v15, v5, v13

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 594
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_5

    .line 595
    iput v9, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 596
    :cond_5
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v14, :cond_6

    .line 597
    iput v8, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 598
    :cond_6
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v7, :cond_7

    .line 599
    iput v13, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 601
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iput v13, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 604
    :goto_1
    iget v7, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 605
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 608
    .end local v4    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v7, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v4, v5, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v4, v14

    iput v4, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 609
    aget-object v4, v11, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v4, v14

    iput v4, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 610
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 611
    iget v4, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v4

    iput-object v4, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 612
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 615
    .end local v7    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .restart local v4    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v11, v17

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 616
    aget-object v7, v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 617
    aget-object v7, v11, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_8

    .line 618
    iput v9, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    .line 619
    :cond_8
    aget-object v7, v11, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v14, :cond_9

    .line 620
    iput v8, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    .line 621
    :cond_9
    aget-object v7, v11, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    .line 622
    iput v13, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    .line 624
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v11, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iput v12, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 627
    :goto_2
    iget v6, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 628
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 631
    .end local v4    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .restart local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v4, v11, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v4, v14

    iput v4, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 632
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v4, v7

    iput v4, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 633
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 634
    iget v4, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v4

    iput-object v4, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 635
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    nop

    .end local v5    # "regionData1":[Ljava/lang/String;
    .end local v11    # "regionData2":[Ljava/lang/String;
    goto :goto_3

    .line 638
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_b
    move/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is not slowDataregion, length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 643
    .end local v0    # "slowDataregion":[Ljava/lang/String;
    :goto_3
    nop

    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region List "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionStartTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 648
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 647
    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionEndTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeedType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 652
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 654
    .end local v0    # "i":I
    :cond_c
    return v13

    .line 640
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v17, v4

    .line 641
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "throwing number format:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return v17
.end method


# virtual methods
.method public checkSEFData(IIJ)Z
    .locals 4
    .param p1, "recordingMode"    # I
    .param p2, "recordingFps"    # I
    .param p3, "duration"    # J

    .line 149
    const/4 v0, 0x1

    .line 150
    .local v0, "ret":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 153
    iput p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    .line 154
    iput p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    .line 155
    iput-wide p3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 158
    const-string v1, "TranscodeLib"

    const-string v2, "extractSEFData : SEFData == null, createDefaultRegion"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->createDefaultRegion()Z

    move-result v0

    goto/16 :goto_3

    .line 161
    :cond_0
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 164
    :cond_1
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x16

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 170
    :cond_2
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    const/16 v3, 0x78

    if-gt v1, v3, :cond_6

    :cond_3
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x13

    if-ne v1, v3, :cond_4

    goto :goto_0

    .line 174
    :cond_4
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xd

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xf

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    if-ne v1, v2, :cond_9

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->newslowSEFParserV2(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 173
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->newslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 169
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->superslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 163
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->slowfastSEFParser(Ljava/lang/String;)Z

    move-result v0

    .line 180
    :cond_9
    :goto_3
    if-nez v0, :cond_a

    .line 181
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 184
    :cond_a
    return v0
.end method

.method public extractSEFData()Ljava/lang/String;
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 198
    const-string v3, "filepath is Wrong"

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v2

    .line 201
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .end local v0    # "path":Ljava/lang/String;
    .local v1, "sefFile":Ljava/io/File;
    goto :goto_0

    .line 203
    .end local v1    # "sefFile":Ljava/io/File;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 204
    const-string v0, "filepath is NULL"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object v2

    .line 207
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 210
    .restart local v1    # "sefFile":Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xc

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xd

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xf

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x13

    if-ne v0, v3, :cond_3

    goto :goto_2

    .line 220
    :cond_3
    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x16

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x12

    if-ne v0, v3, :cond_4

    goto :goto_1

    .line 227
    :cond_4
    return-object v2

    .line 225
    :cond_5
    :goto_1
    const-string v0, "Super_SlowMotion_Data"

    invoke-static {v1, v0}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "sefByteData":[B
    goto :goto_3

    .line 219
    .end local v0    # "sefByteData":[B
    :cond_6
    :goto_2
    const-string v0, "SlowMotion_Data"

    invoke-static {v1, v0}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    .line 228
    .restart local v0    # "sefByteData":[B
    :goto_3
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 229
    .local v3, "sefString":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->checkValidSEFData(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_7

    .line 230
    return-object v2

    .line 232
    :cond_7
    return-object v3

    .line 237
    .end local v0    # "sefByteData":[B
    .end local v3    # "sefString":Ljava/lang/String;
    :cond_8
    nop

    .line 238
    return-object v2

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    return-object v2
.end method

.method public extractSEFData(IJ)Ljava/lang/String;
    .locals 1
    .param p1, "recordingMode"    # I
    .param p2, "duration"    # J

    .line 188
    iput p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    .line 189
    iput-wide p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConvertedTime(J)J
    .locals 18
    .param p1, "sampleTime"    # J

    .line 703
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 706
    .local v1, "timedelta":J
    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 707
    const-wide/16 v3, 0x2

    mul-long v3, v3, p1

    .end local p1    # "sampleTime":J
    .local v3, "sampleTime":J
    goto :goto_0

    .line 706
    .end local v3    # "sampleTime":J
    .restart local p1    # "sampleTime":J
    :cond_0
    move-wide/from16 v3, p1

    .line 709
    .end local p1    # "sampleTime":J
    .restart local v3    # "sampleTime":J
    :goto_0
    move-wide v5, v3

    .line 711
    .local v5, "tempSampleTime":J
    iget-object v7, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 712
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 713
    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-ltz v8, :cond_1

    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 714
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-gez v8, :cond_1

    .line 715
    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 716
    .local v8, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v9

    .line 717
    .local v9, "timescale":F
    iget-object v12, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v12, v12

    mul-long/2addr v12, v10

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 718
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v14, v14

    mul-long/2addr v14, v10

    sub-long v10, v3, v14

    const v14, 0x49742400    # 1000000.0f

    mul-float/2addr v14, v9

    float-to-long v14, v14

    mul-long/2addr v10, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v10, v14

    add-long v5, v12, v10

    .line 720
    goto/16 :goto_3

    .line 721
    .end local v8    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v9    # "timescale":F
    :cond_1
    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-ltz v8, :cond_3

    .line 722
    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 723
    .restart local v8    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v9

    .line 726
    .restart local v9    # "timescale":F
    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    .line 727
    long-to-double v10, v1

    move-wide/from16 p1, v12

    float-to-double v12, v9

    sub-double v12, v12, p1

    const-wide v16, 0x408f400000000000L    # 1000.0

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 728
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v15, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double/2addr v12, v14

    mul-double v12, v12, v16

    add-double/2addr v10, v12

    double-to-long v1, v10

    goto :goto_2

    .line 731
    :cond_2
    move-wide/from16 p1, v12

    const-wide v16, 0x408f400000000000L    # 1000.0

    long-to-double v10, v1

    float-to-double v12, v9

    sub-double v12, p1, v12

    mul-double v12, v12, v16

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 732
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v15, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-long v1, v10

    .line 712
    .end local v8    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v9    # "timescale":F
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 735
    .end local v7    # "i":I
    :cond_4
    :goto_3
    add-long v7, v5, v1

    return-wide v7

    .line 737
    :cond_5
    const-wide/16 v7, 0x0

    return-wide v7
.end method

.method public getEditedDuration(J)J
    .locals 2
    .param p1, "sampleTime"    # J

    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 695
    const-string v0, "TranscodeLib"

    const-string v1, "getEditedDuration : use original data"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-wide p1

    .line 699
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRegionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 36
    iput-object p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "TranscodeLib"

    const-string v1, "SEFHelper Initialize failed!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input file path cannot be null."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSEFRegion(JI)Z
    .locals 9
    .param p1, "TimeUs"    # J
    .param p3, "recordingmode"    # I

    .line 328
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 329
    return v1

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 336
    if-eqz v0, :cond_1

    .line 337
    goto :goto_3

    .line 339
    :cond_1
    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    if-eq p3, v2, :cond_3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    goto :goto_1

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .local v5, "regStartTime":J
    goto :goto_2

    .line 340
    .end local v5    # "regStartTime":J
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .line 344
    .restart local v5    # "regStartTime":J
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v7, v2

    mul-long/2addr v7, v3

    .line 346
    .local v7, "regEndTime":J
    cmp-long v2, p1, v5

    if-ltz v2, :cond_4

    cmp-long v2, p1, v7

    if-gez v2, :cond_4

    .line 347
    const/4 v0, 0x1

    .line 348
    goto :goto_3

    .line 335
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v5    # "regStartTime":J
    .end local v7    # "regEndTime":J
    :cond_5
    :goto_3
    nop

    .line 356
    return v0

    .line 352
    :cond_6
    const-string v2, "TranscodeLib"

    const-string v3, "There is no region info."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return v1
.end method

.method public newslowSEFParser(Ljava/lang/String;)Z
    .locals 19
    .param p1, "sefData"    # Ljava/lang/String;

    .line 363
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TranscodeLib"

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sefData read slow : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    if-nez v2, :cond_0

    .line 365
    const-string v0, "sefData == null"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return v4

    .line 368
    :cond_0
    const-string v0, "\\*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "slowDataregion":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "region speed: "

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x4

    const-string v11, ":"

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v5, v13, :cond_4

    .line 371
    :try_start_1
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "regionData":[Ljava/lang/String;
    new-instance v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v11}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 373
    .local v11, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 374
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 375
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 376
    iget v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v15}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v15

    iput-object v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 377
    iget-object v15, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v10, :cond_3

    .line 380
    new-instance v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v10}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v11, v10

    .line 381
    aget-object v10, v5, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 382
    aget-object v10, v5, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 383
    aget-object v10, v5, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_1

    .line 384
    iput v8, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 385
    :cond_1
    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_2

    .line 386
    iput v7, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 388
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 391
    :goto_0
    iget v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 392
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_3
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 395
    .end local v11    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 396
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 397
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 398
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 399
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    move/from16 v18, v13

    .end local v5    # "regionData":[Ljava/lang/String;
    goto/16 :goto_4

    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_4
    array-length v5, v0

    if-ne v5, v14, :cond_b

    .line 402
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "regionData1":[Ljava/lang/String;
    aget-object v15, v0, v13

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 404
    .local v11, "regionData2":[Ljava/lang/String;
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 405
    .local v15, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 406
    aget-object v16, v5, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v17, v4

    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 407
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 408
    iget v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v4

    iput-object v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 409
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    aget-object v4, v5, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_7

    .line 412
    new-instance v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v15, v4

    .line 413
    aget-object v4, v5, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 414
    aget-object v4, v5, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 415
    aget-object v4, v5, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 416
    iput v8, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    move/from16 v18, v13

    goto :goto_1

    .line 417
    :cond_5
    aget-object v4, v5, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v14, :cond_6

    .line 418
    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    move/from16 v18, v13

    goto :goto_1

    .line 420
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v16, v5, v14

    move/from16 v18, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 424
    :goto_1
    iget v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v4

    iput-object v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 425
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 411
    :cond_7
    move/from16 v18, v13

    .line 428
    :goto_2
    new-instance v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 429
    .end local v15    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v4, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v13, v5, v18

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 430
    aget-object v13, v11, v17

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 431
    iput v12, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 432
    iget v13, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v13}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v13

    iput-object v13, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 433
    iget-object v13, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    aget-object v13, v11, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v10, :cond_a

    .line 436
    new-instance v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v10}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v4, v10

    .line 437
    aget-object v10, v11, v17

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 438
    aget-object v10, v11, v18

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 439
    aget-object v10, v11, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_8

    .line 440
    iput v8, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_3

    .line 441
    :cond_8
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_9

    .line 442
    iput v7, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_3

    .line 444
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v11, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iput v12, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 447
    :goto_3
    iget v6, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 448
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_a
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 452
    .end local v4    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .restart local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v4, v11, v18

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 453
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v4, v7

    iput v4, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 454
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 455
    iget v4, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v4

    iput-object v4, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 456
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    nop

    .end local v5    # "regionData1":[Ljava/lang/String;
    .end local v11    # "regionData2":[Ljava/lang/String;
    goto :goto_4

    .line 459
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_b
    move/from16 v17, v4

    move/from16 v18, v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is not slowDataregion, length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 464
    .end local v0    # "slowDataregion":[Ljava/lang/String;
    :goto_4
    nop

    .line 466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region List "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionStartTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionEndTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeedType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 473
    .end local v0    # "i":I
    :cond_c
    return v18

    .line 461
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v17, v4

    .line 462
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "throwing number format:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return v17
.end method

.method public slowfastSEFParser(Ljava/lang/String;)Z
    .locals 8
    .param p1, "sefData"    # Ljava/lang/String;

    .line 479
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sefData read slow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    if-nez p1, :cond_0

    .line 481
    const-string v2, "sefData == null"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return v1

    .line 484
    :cond_0
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "slowDataregion":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 487
    aget-object v4, v2, v3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "regionData":[Ljava/lang/String;
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 489
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v4, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 490
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 491
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 492
    iget v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v5

    iput-object v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 493
    iget-object v5, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    nop

    .end local v4    # "regionData":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 499
    .end local v2    # "slowDataregion":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_1
    nop

    .line 500
    return v5

    .line 496
    :catch_0
    move-exception v2

    .line 497
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return v1
.end method

.method public superslowSEFParser(Ljava/lang/String;)Z
    .locals 10
    .param p1, "sefData"    # Ljava/lang/String;

    .line 507
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sefData read super : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    if-nez p1, :cond_0

    .line 509
    const-string v2, "sefData == null"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return v1

    .line 512
    :cond_0
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "slowDataregion":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 515
    aget-object v4, v2, v3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "regionData":[Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v7, v4, v6

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, "mainData":[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v5, :cond_1

    .line 519
    aget-object v8, v7, v1

    aput-object v8, v4, v6

    .line 523
    :cond_1
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 524
    .local v8, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 525
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 526
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    .line 527
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 528
    iget v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v5

    iput-object v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 529
    iget-object v5, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    nop

    .end local v4    # "regionData":[Ljava/lang/String;
    .end local v7    # "mainData":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    .end local v2    # "slowDataregion":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v8    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_2
    nop

    .line 536
    return v5

    .line 532
    :catch_0
    move-exception v2

    .line 533
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return v1
.end method
