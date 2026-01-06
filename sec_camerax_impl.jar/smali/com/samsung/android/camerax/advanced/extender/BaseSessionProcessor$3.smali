.class Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;
.super Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Stub;
.source "BaseSessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->prepareCaptureLocked(Lcom/samsung/android/camerax/advanced/api/IExtensionClient;Landroid/hardware/camera2/CaptureRequest;JLcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

.field final synthetic val$callback:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1156
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->val$callback:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessCompleted(Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .locals 4
    .param p1, "totalCaptureResult"    # Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    .line 1169
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    iget-object v0, v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessCompleted, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1172
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->val$callback:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    .line 1173
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->getTotalCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    .line 1172
    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 1174
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->val$callback:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureSequenceCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    nop

    .line 1178
    return-void

    .line 1176
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    throw v2
.end method

.method public onProcessFailed()V
    .locals 3

    .line 1182
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    iget-object v0, v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v1, "onProcessFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1185
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->val$callback:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureFailed()V

    .line 1186
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->val$callback:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureSequenceCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    nop

    .line 1190
    return-void

    .line 1188
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    throw v2
.end method

.method public onProcessProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 1159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1161
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;->val$callback:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v2, p1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureProcessProgressed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    nop

    .line 1165
    return-void

    .line 1163
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    throw v2
.end method
