.class Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$2;
.super Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Stub;
.source "BaseSessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->preparePreviewLocked(Lcom/samsung/android/camerax/advanced/api/IExtensionClient;Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V
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

    .line 1122
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$2;->val$callback:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessCompleted(Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .locals 4
    .param p1, "totalCaptureResult"    # Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    .line 1130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1132
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$2;->val$callback:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    .line 1133
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->getTotalCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    .line 1132
    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    nop

    .line 1137
    return-void

    .line 1135
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    throw v2
.end method

.method public onProcessFailed()V
    .locals 3

    .line 1141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1143
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$2;->val$callback:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1146
    nop

    .line 1147
    return-void

    .line 1145
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1146
    throw v2
.end method

.method public onProcessProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 1126
    return-void
.end method
