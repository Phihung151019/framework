.class public abstract Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
.super Ljava/lang/Object;
.source "RequestCallback.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;,
        Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;
    }
.end annotation


# instance fields
.field protected final mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

.field protected final mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field protected final mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

.field protected final mInterfaceLock:Ljava/lang/Object;

.field protected final mResultListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;

.field protected final mSequenceId:I

.field protected final mSequenceListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;


# direct methods
.method protected constructor <init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)V
    .locals 1
    .param p1, "sequenceId"    # I
    .param p2, "extensionMetadata"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
    .param p3, "sequenceCompleteListener"    # Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;
    .param p4, "captureResultListener"    # Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;
    .param p5, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p6, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mInterfaceLock:Ljava/lang/Object;

    .line 62
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    .line 63
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    .line 64
    iput-object p3, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;

    .line 65
    iput-object p4, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mResultListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;

    .line 66
    iput-object p5, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 67
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;

    invoke-direct {v0, p0, p6}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;-><init>(Lcom/samsung/android/camerax/advanced/extender/RequestCallback;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 120
    return-void
.end method

.method static synthetic lambda$notifyCaptureCompleted$0(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p1, "strength"    # Ljava/lang/Integer;

    .line 158
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public notifyCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 7
    .param p1, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v1, "filteredResult":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 156
    .local v2, "timestamp":Ljava/lang/Long;
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 157
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 156
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 157
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 161
    if-eqz v2, :cond_1

    .line 162
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureResult$Key;

    .line 163
    .local v4, "key":Landroid/hardware/camera2/CaptureResult$Key;
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    nop

    .end local v4    # "key":Landroid/hardware/camera2/CaptureResult$Key;
    goto :goto_0

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    invoke-interface {v3, v4, v5, v6, v1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureCompleted(JILjava/util/Map;)V

    .line 168
    .end local v1    # "filteredResult":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    .end local v2    # "timestamp":Ljava/lang/Long;
    :cond_1
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureFailed()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureFailed(I)V

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureProcessProgressed(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v1, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureProcessProgressed(I)V

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureProcessStarted()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureProcessStarted(I)V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureSequenceAborted()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureSequenceAborted(I)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;->onCaptureSequenceCompleted(I)V

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureSequenceCompleted()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureSequenceCompleted(I)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;->onCaptureSequenceCompleted(I)V

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCaptureStarted(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .line 123
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mCallback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;->mSequenceId:I

    invoke-interface {v1, v2, p1, p2}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureStarted(IJ)V

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
