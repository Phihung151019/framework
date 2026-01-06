.class public Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
.super Ljava/lang/Object;
.source "ImageResultMatcher.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/ImageCallback$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;
    }
.end annotation


# static fields
.field public static final NO_PRUNE:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOG:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final PRUNE_THRESHOLD:I

.field private final mImageResultListenerMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingCaptureStageMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingImageMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingResultMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "threshold"    # I
    .param p2, "verbose"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    .line 38
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingResultMap:Landroid/util/LongSparseArray;

    .line 39
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingCaptureStageMap:Landroid/util/LongSparseArray;

    .line 40
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    .line 46
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->PRUNE_THRESHOLD:I

    .line 47
    if-eqz p2, :cond_0

    .line 48
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->LOG:Ljava/util/function/BiFunction;

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->LOG:Ljava/util/function/BiFunction;

    .line 52
    :goto_0
    return-void
.end method

.method private getTimeStampFromCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)J
    .locals 3
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 170
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 171
    .local v0, "timestamp":Ljava/lang/Long;
    const-wide/16 v1, -0x1

    .line 172
    .local v1, "timestampValue":J
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 176
    :cond_0
    return-wide v1
.end method

.method private declared-synchronized removeStaleData(J)V
    .locals 4
    .param p1, "timestamp"    # J

    monitor-enter p0

    .line 116
    nop

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_7

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_6

    .line 127
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingCaptureStageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingCaptureStageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_5

    .line 132
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_4

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, p1

    if-lez v0, :cond_4

    .line 136
    :goto_4
    monitor-exit p0

    return-void

    .line 134
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_3

    .line 129
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingCaptureStageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_2

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_1

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 119
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    .line 115
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized tryFireCallback(J)V
    .locals 4
    .param p1, "timestamp"    # J

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    .line 181
    .local v0, "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 182
    .local v1, "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;

    .line 184
    .local v2, "listener":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 185
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingCaptureStageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 187
    .local v3, "captureStageId":I
    invoke-interface {v2, v0, v1, v3}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;->onImageResultMatched(Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;I)V

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->removeStaleData(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v3    # "captureStageId":I
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    :cond_0
    monitor-exit p0

    return-void

    .line 179
    .end local v0    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local v1    # "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v2    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 162
    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->removeStaleData(J)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingCaptureStageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 161
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized discardPendingListener(J)I
    .locals 4
    .param p1, "timestamp"    # J

    monitor-enter p0

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "pendingResult":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 152
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "index":I
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    :cond_2
    :goto_1
    const-wide/16 v1, 0x1

    sub-long v1, p1, v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->removeStaleData(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return v0

    .line 149
    .end local v0    # "pendingResult":I
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 6
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "captureStageId"    # I

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->getTimeStampFromCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)J

    move-result-wide v0

    .line 98
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->LOG:Ljava/util/function/BiFunction;

    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCaptureResult, capture stage id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", capture time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", capture result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingCaptureStageMap:Landroid/util/LongSparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->tryFireCallback(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 95
    .end local v0    # "timestamp":J
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    .end local p1    # "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local p2    # "captureStageId":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onImageAvailable(IJLandroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Ljava/lang/String;)V
    .locals 4
    .param p1, "outputConfigId"    # I
    .param p2, "timestamp"    # J
    .param p4, "imageReference"    # Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .param p5, "physicalCameraId"    # Ljava/lang/String;

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->LOG:Ljava/util/function/BiFunction;

    sget-object v1, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageAvailable, output = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", capture time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", image reference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    .line 60
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 66
    invoke-interface {p4}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->increment()Z

    .line 68
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->PRUNE_THRESHOLD:I

    if-lt v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 72
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingImageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->LOG:Ljava/util/function/BiFunction;

    sget-object v1, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->TAG:Ljava/lang/String;

    const-string v2, "drop old pending image"

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->tryFireCallback(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 56
    .end local p1    # "outputConfigId":I
    .end local p2    # "timestamp":J
    .end local p4    # "imageReference":Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .end local p5    # "physicalCameraId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onImageDropped(J)V
    .locals 4
    .param p1, "timestamp"    # J

    monitor-enter p0

    .line 81
    :try_start_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDropped, capture time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 84
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;

    .line 86
    .local v1, "listener":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;
    if-eqz v1, :cond_0

    .line 87
    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->TAG:Ljava/lang/String;

    const-string v3, "existing pending result, post failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {v1}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;->onMatchFailed()V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->removeStaleData(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v1    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    .end local v0    # "index":I
    .end local p1    # "timestamp":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerImageResultListener(JLcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "listener"    # Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->mImageResultListenerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->tryFireCallback(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;
    .end local p1    # "timestamp":J
    .end local p3    # "listener":Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
