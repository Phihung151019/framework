.class public Lcom/samsung/android/camerax/advanced/extender/ImageCallback;
.super Ljava/lang/Object;
.source "ImageCallback.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClosed:Z

.field private final mImageInfoMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mImageListenerMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;",
            "Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    .line 41
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageInfoMap:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 8

    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mClosed:Z

    if-nez v0, :cond_3

    .line 120
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    .line 122
    .local v1, "image":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;

    .line 123
    .local v2, "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 125
    .local v3, "timestamp":J
    if-eqz v1, :cond_0

    .line 126
    sget-object v5, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrease image reference, capture time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 131
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageCallback;
    :cond_0
    if-eqz v2, :cond_1

    .line 132
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;->onImageDropped(J)V

    .line 120
    .end local v1    # "image":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local v2    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .end local v3    # "timestamp":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageInfoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 139
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 114
    nop

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 114
    throw v0
.end method

.method public declared-synchronized onNextImageAvailable(IJLandroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Ljava/lang/String;)V
    .locals 8
    .param p1, "outputConfigId"    # I
    .param p2, "timestampNs"    # J
    .param p4, "imageReference"    # Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .param p5, "physicalCameraId"    # Ljava/lang/String;

    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mClosed:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->TAG:Ljava/lang/String;

    const-string v1, "session closed, skip onNextImageAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageCallback;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 64
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 66
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;

    move-object v2, v1

    .line 67
    .local v2, "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    if-eqz v2, :cond_1

    .line 68
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 69
    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "outputConfigId":I
    .end local p2    # "timestampNs":J
    .end local p4    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local p5    # "physicalCameraId":Ljava/lang/String;
    .local v3, "outputConfigId":I
    .local v4, "timestampNs":J
    .local v6, "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .local v7, "physicalCameraId":Ljava/lang/String;
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;->onImageAvailable(IJLandroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Ljava/lang/String;)V

    .line 71
    invoke-interface {v6}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    goto :goto_0

    .line 73
    .end local v3    # "outputConfigId":I
    .end local v4    # "timestampNs":J
    .end local v6    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local v7    # "physicalCameraId":Ljava/lang/String;
    .restart local p1    # "outputConfigId":I
    .restart local p2    # "timestampNs":J
    .restart local p4    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .restart local p5    # "physicalCameraId":Ljava/lang/String;
    :cond_1
    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "outputConfigId":I
    .end local p2    # "timestampNs":J
    .end local p4    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local p5    # "physicalCameraId":Ljava/lang/String;
    .restart local v3    # "outputConfigId":I
    .restart local v4    # "timestampNs":J
    .restart local v6    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .restart local v7    # "physicalCameraId":Ljava/lang/String;
    sget-object p1, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->TAG:Ljava/lang/String;

    const-string p2, "invalid listener. drop image."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-interface {v6}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 76
    .end local v2    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    :goto_0
    goto :goto_1

    .line 78
    .end local v3    # "outputConfigId":I
    .end local v4    # "timestampNs":J
    .end local v6    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local v7    # "physicalCameraId":Ljava/lang/String;
    .restart local p1    # "outputConfigId":I
    .restart local p2    # "timestampNs":J
    .restart local p4    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .restart local p5    # "physicalCameraId":Ljava/lang/String;
    :cond_2
    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "outputConfigId":I
    .end local p2    # "timestampNs":J
    .end local p4    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local p5    # "physicalCameraId":Ljava/lang/String;
    .restart local v3    # "outputConfigId":I
    .restart local v4    # "timestampNs":J
    .restart local v6    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .restart local v7    # "physicalCameraId":Ljava/lang/String;
    iget-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    new-instance p2, Landroid/util/Pair;

    const/4 p3, 0x0

    invoke-direct {p2, v6, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v5, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageInfoMap:Landroid/util/LongSparseArray;

    new-instance p2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v5, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_1
    monitor-exit p0

    return-void

    .line 46
    .end local v0    # "index":I
    .end local v3    # "outputConfigId":I
    .end local v4    # "timestampNs":J
    .end local v6    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local v7    # "physicalCameraId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerListener(JLcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;)V
    .locals 8
    .param p1, "timestamp"    # J
    .param p3, "listener"    # Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;

    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mClosed:Z

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->TAG:Ljava/lang/String;

    const-string v1, "session closed, skip registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageCallback;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 90
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 92
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    move-object v6, v1

    .line 93
    .local v6, "image":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageInfoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 94
    .local v1, "imageInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    .line 95
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 96
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageInfoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 97
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    move-wide v4, p1

    move-object v2, p3

    .end local p1    # "timestamp":J
    .end local p3    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .local v2, "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .local v4, "timestamp":J
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;->onImageAvailable(IJLandroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Ljava/lang/String;)V

    .line 98
    invoke-interface {v6}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    goto :goto_0

    .line 94
    .end local v2    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .end local v4    # "timestamp":J
    .restart local p1    # "timestamp":J
    .restart local p3    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    :cond_1
    move-wide v4, p1

    move-object v2, p3

    .line 100
    .end local p1    # "timestamp":J
    .end local p3    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .restart local v2    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .restart local v4    # "timestamp":J
    sget-object p1, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid image for timestamp = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "imageInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "image":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    :goto_0
    goto :goto_1

    .line 104
    .end local v2    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .end local v4    # "timestamp":J
    .restart local p1    # "timestamp":J
    .restart local p3    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    :cond_2
    move-wide v4, p1

    move-object v2, p3

    .end local p1    # "timestamp":J
    .end local p3    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .restart local v2    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .restart local v4    # "timestamp":J
    iget-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->mImageListenerMap:Landroid/util/LongSparseArray;

    new-instance p2, Landroid/util/Pair;

    const/4 p3, 0x0

    invoke-direct {p2, p3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v5, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_1
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "index":I
    .end local v2    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;
    .end local v4    # "timestamp":J
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
