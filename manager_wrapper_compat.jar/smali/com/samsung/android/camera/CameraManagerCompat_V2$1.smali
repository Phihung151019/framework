.class Lcom/samsung/android/camera/CameraManagerCompat_V2$1;
.super Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
.source "CameraManagerCompat_V2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/CameraManagerCompat_V2;->createCallback(Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;->onClose()V

    .line 183
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 177
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;->onError(I)V

    .line 178
    return-void
.end method

.method public onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;->onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;->onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;->onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;->onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onSessionCreated(Landroid/hardware/camera2/DeviceInjectorSession;)V
    .locals 1
    .param p1, "injectorSession"    # Landroid/hardware/camera2/DeviceInjectorSession;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V2$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/CameraManagerCompat_V2$StatusCallback;->onSessionCreated(Ljava/lang/Object;)V

    .line 149
    return-void
.end method
