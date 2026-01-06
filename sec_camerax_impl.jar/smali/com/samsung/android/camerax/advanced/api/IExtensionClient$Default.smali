.class public Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Default;
.super Ljava/lang/Object;
.source "IExtensionClient.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/api/IExtensionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public prepareCapture(Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;JLcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;)V
    .locals 0
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "totalCaptureResult"    # Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .param p3, "captureStartTimestamp"    # J
    .param p5, "callback"    # Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public preparePreview(Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;)V
    .locals 0
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public processCaptureImage(ILcom/samsung/android/camerax/advanced/api/ExtensionImage;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    .param p3, "totalCaptureResult"    # Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public processPreview(Lcom/samsung/android/camerax/advanced/api/ExtensionImage;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .locals 0
    .param p1, "image"    # Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    .param p2, "totalCaptureResult"    # Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
