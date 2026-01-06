.class public Lcom/samsung/android/sep/camera/util/BlockingImageReader;
.super Ljava/lang/Object;
.source "BlockingImageReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockingImageReader"


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


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mMaxImages:I

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 72
    return-void
.end method

.method private getHandOutImageTimestamps()Ljava/lang/String;
    .locals 5

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "handOutImageTimestamps":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 174
    .local v2, "image":Landroid/media/Image;
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .end local v2    # "image":Landroid/media/Image;
    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public acquireNextImage()Landroid/media/Image;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "acquireNextImage is failed - already closed"

    const-string v3, "BlockingImageReader"

    if-eqz v0, :cond_0

    .line 93
    :try_start_1
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    nop

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 94
    return-object v1

    .line 97
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mMaxImages:I

    if-lt v0, v4, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getHandOutImageTimestamps()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "handOutImageTimestamps":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireNextImage waiting for handout images: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 105
    iget-boolean v4, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mClosed:Z

    if-eqz v4, :cond_1

    .line 106
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    nop

    .line 119
    iget-object v2, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 107
    return-object v1

    .line 109
    .end local v0    # "handOutImageTimestamps":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 111
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 113
    .local v0, "image":Landroid/media/Image;
    if-eqz v0, :cond_3

    .line 114
    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :cond_3
    nop

    .line 119
    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    return-object v0

    .line 119
    .end local v0    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    throw v0
.end method

.method public close()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mClosed:Z

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    nop

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    throw v0
.end method

.method public closeImage(Landroid/media/Image;)V
    .locals 2
    .param p1, "image"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mClosed:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "BlockingImageReader"

    const-string v1, "closeImage is failed - already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 139
    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mMaxImages:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    nop

    .line 162
    return-void

    .line 156
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "closeImage is failed : image is not getting from this imageReader or already is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/BlockingImageReader;
    .end local p1    # "image":Landroid/media/Image;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/util/BlockingImageReader;
    .restart local p1    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    throw v0
.end method

.method public getHeight()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mMaxImages:I

    return v0
.end method

.method public getOriginImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 274
    return v0

    .line 276
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 277
    throw v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 291
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image Reader Width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 302
    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 304
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ImageFormat : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 306
    invoke-virtual {v1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Surface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    .line 308
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    return-object v0
.end method
