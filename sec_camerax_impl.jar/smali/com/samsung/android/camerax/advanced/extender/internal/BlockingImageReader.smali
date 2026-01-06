.class public Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
.super Ljava/lang/Object;
.source "BlockingImageReader.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClosed:Z

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private final mHandOutImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageReader:Landroid/media/ImageReader;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMaxImages:I

.field private final mNeedReleaseFreeBuffers:Z

.field private mPhysicalId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/ImageReader;Ljava/lang/String;)V
    .locals 8
    .param p1, "imageReader"    # Landroid/media/ImageReader;
    .param p2, "physicalId"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mMaxImages:I

    .line 74
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 75
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mPhysicalId:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/vendor/ImgFormat;->isRawImageFormat(I)Z

    move-result v0

    .line 78
    .local v0, "isRawImageFormat":Z
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    const v2, 0x2dc6c00

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 79
    .local v1, "isHighResolution":Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->HIGH:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-static {v2}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->isLessThan(Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-static {}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->isReleaseFreeBuffersEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mNeedReleaseFreeBuffers:Z

    .line 82
    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 85
    invoke-virtual {v4}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/camerax/advanced/vendor/ImgFormat;->valueOf(I)Lcom/samsung/android/camerax/advanced/vendor/ImgFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 86
    invoke-virtual {v6}, Landroid/media/ImageReader;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mNeedReleaseFreeBuffers:Z

    .line 87
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 82
    const-string v5, "BlockingImageReader created: Format(%s), Size(%dx%d), mNeedReleaseFreeBuffers(%b)"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method private getHandOutImageTimestamps()Ljava/lang/String;
    .locals 5

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v0, "handOutImageTimestamps":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 370
    .local v2, "image":Landroid/media/Image;
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 371
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    .end local v2    # "image":Landroid/media/Image;
    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "acquireLatestImage is failed - already closed"

    if-eqz v0, :cond_0

    .line 106
    :try_start_1
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    nop

    .line 131
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 107
    return-object v1

    .line 110
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mMaxImages:I

    if-lt v0, v3, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->getHandOutImageTimestamps()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "handOutImageTimestamps":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireLatestImage waiting for handout images: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 117
    iget-boolean v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z

    if-eqz v3, :cond_1

    .line 118
    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    nop

    .line 131
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 119
    return-object v1

    .line 121
    .end local v0    # "handOutImageTimestamps":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 123
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 125
    .local v0, "image":Landroid/media/Image;
    if-eqz v0, :cond_3

    .line 126
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :cond_3
    nop

    .line 131
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    return-object v0

    .line 131
    .end local v0    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    throw v0
.end method

.method public acquireLatestImage(JLjava/util/concurrent/TimeUnit;)Landroid/media/Image;
    .locals 16
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 153
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 155
    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string v4, "acquireLatestImage is failed - already closed"

    if-eqz v0, :cond_0

    .line 156
    :try_start_1
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    nop

    .line 204
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    return-object v3

    .line 160
    :cond_0
    move-wide/from16 v5, p1

    .line 163
    .local v5, "leftTime":J
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v7, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mMaxImages:I

    if-lt v0, v7, :cond_4

    .line 164
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 166
    .local v7, "startNanoTime":J
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v5, v6, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    iget-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    nop

    .line 204
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    return-object v3

    .line 177
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 179
    .local v9, "endNanoTime":J
    sub-long v11, v9, v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v11, v12, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    sub-long/2addr v5, v11

    .line 181
    const-wide/16 v11, 0x0

    cmp-long v0, v5, v11

    if-lez v0, :cond_2

    goto :goto_0

    .line 182
    :cond_2
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "acquireLatestImage is failed : startNanoTime(%d %s) is bigger than endNanoTime(%d %s)"

    .line 184
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 185
    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 186
    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v11

    .line 182
    invoke-static {v3, v4, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .end local p1    # "time":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0

    .line 167
    .end local v9    # "endNanoTime":J
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .restart local p1    # "time":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_3
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "acquireLatestImage is failed : waiting time(%d %s) elapsed"

    .line 168
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 169
    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 167
    invoke-static {v3, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .end local p1    # "time":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0

    .line 196
    .end local v7    # "startNanoTime":J
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .restart local p1    # "time":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_4
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 198
    .local v0, "image":Landroid/media/Image;
    if-eqz v0, :cond_5

    .line 199
    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    :cond_5
    nop

    .line 204
    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    return-object v0

    .line 204
    .end local v0    # "image":Landroid/media/Image;
    .end local v5    # "leftTime":J
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 205
    throw v0
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "acquireNextImage is failed - already closed"

    if-eqz v0, :cond_0

    .line 223
    :try_start_1
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    nop

    .line 248
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    return-object v1

    .line 227
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mMaxImages:I

    if-lt v0, v3, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->getHandOutImageTimestamps()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "handOutImageTimestamps":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireNextImage waiting for handout images: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 234
    iget-boolean v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z

    if-eqz v3, :cond_1

    .line 235
    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    nop

    .line 248
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 236
    return-object v1

    .line 238
    .end local v0    # "handOutImageTimestamps":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 240
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 242
    .local v0, "image":Landroid/media/Image;
    if-eqz v0, :cond_3

    .line 243
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :cond_3
    nop

    .line 248
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 246
    return-object v0

    .line 248
    .end local v0    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 249
    throw v0
.end method

.method public acquireNextImage(JLjava/util/concurrent/TimeUnit;)Landroid/media/Image;
    .locals 16
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 269
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 271
    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string v4, "acquireNextImage is failed - already closed"

    if-eqz v0, :cond_0

    .line 272
    :try_start_1
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    nop

    .line 320
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    return-object v3

    .line 276
    :cond_0
    move-wide/from16 v5, p1

    .line 279
    .local v5, "leftTime":J
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v7, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mMaxImages:I

    if-lt v0, v7, :cond_4

    .line 280
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 282
    .local v7, "startNanoTime":J
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v5, v6, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z

    if-eqz v0, :cond_1

    .line 289
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    nop

    .line 320
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    return-object v3

    .line 293
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 295
    .local v9, "endNanoTime":J
    sub-long v11, v9, v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v11, v12, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    sub-long/2addr v5, v11

    .line 297
    const-wide/16 v11, 0x0

    cmp-long v0, v5, v11

    if-lez v0, :cond_2

    goto :goto_0

    .line 298
    :cond_2
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "acquireNextImage is failed : startNanoTime(%d %s) is bigger than endNanoTime(%d %s)"

    .line 300
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 301
    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 302
    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v11

    .line 298
    invoke-static {v3, v4, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .end local p1    # "time":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0

    .line 283
    .end local v9    # "endNanoTime":J
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .restart local p1    # "time":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_3
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "acquireNextImage is failed : waiting time(%d %s) elapsed"

    .line 284
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 285
    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 283
    invoke-static {v3, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .end local p1    # "time":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0

    .line 312
    .end local v7    # "startNanoTime":J
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .restart local p1    # "time":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_4
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 314
    .local v0, "image":Landroid/media/Image;
    if-eqz v0, :cond_5

    .line 315
    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    :cond_5
    nop

    .line 320
    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 318
    return-object v0

    .line 320
    .end local v0    # "image":Landroid/media/Image;
    .end local v5    # "leftTime":J
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 321
    throw v0
.end method

.method public close()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 455
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 462
    nop

    .line 463
    return-void

    .line 461
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 462
    throw v0
.end method

.method public closeImage(Landroid/media/Image;)V
    .locals 6
    .param p1, "image"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    const-string v1, "closeImage is failed - already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 337
    return-void

    .line 340
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 344
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mNeedReleaseFreeBuffers:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 345
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "discardFreeBuffers - Format(%s), Size(%dx%d)"

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 347
    invoke-virtual {v3}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/vendor/ImgFormat;->valueOf(I)Lcom/samsung/android/camerax/advanced/vendor/ImgFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 348
    invoke-virtual {v4}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 349
    invoke-virtual {v5}, Landroid/media/ImageReader;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 346
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->discardFreeBuffers()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 359
    nop

    .line 360
    return-void

    .line 353
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "closeImage is failed : image is not getting from this imageReader or already is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .end local p1    # "image":Landroid/media/Image;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .restart local p1    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 359
    throw v0
.end method

.method public getHeight()I
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mMaxImages:I

    return v0
.end method

.method public getOriginImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getPhysicalId()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mPhysicalId:Ljava/lang/String;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 473
    return v0

    .line 475
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    throw v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 491
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 492
    return-void
.end method

.method public setPhysicalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "physicalId"    # Ljava/lang/String;

    .line 446
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->mPhysicalId:Ljava/lang/String;

    .line 447
    return-void
.end method
