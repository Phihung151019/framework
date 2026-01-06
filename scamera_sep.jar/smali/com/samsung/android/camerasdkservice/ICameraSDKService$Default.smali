.class public Lcom/samsung/android/camerasdkservice/ICameraSDKService$Default;
.super Ljava/lang/Object;
.source "ICameraSDKService.java"

# interfaces
.implements Lcom/samsung/android/camerasdkservice/ICameraSDKService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerasdkservice/ICameraSDKService;
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
.method public SALogInsert(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "extra"    # Ljava/lang/String;
    .param p5, "customDimension"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public abortNightCaptureProcess(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public deInitialize(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public disableEngine(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "engine"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public enableEngine(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "engine"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public getCurrentSystemSelfieTone(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getServicePictureSurface(Landroid/os/IBinder;III)Landroid/view/Surface;
    .locals 1
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServicePreviewSurface(Landroid/os/IBinder;)Landroid/view/Surface;
    .locals 1
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(ILcom/samsung/android/camerasdkservice/data/SInitializeConfig;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "config"    # Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;
    .param p3, "Info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public prepareCaptureProcess(Landroid/os/IBinder;Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;IZ)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "config"    # Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    .param p3, "orientation"    # I
    .param p4, "isYuvSingleCapture"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public prepareImageCaptureResult(Landroid/os/IBinder;ILcom/samsung/android/camerasdkservice/data/CaptureResultConfig;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "index"    # I
    .param p3, "config"    # Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public preparePreviewCaptureResult(Landroid/os/IBinder;Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "config"    # Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public setProcessorParameter(Landroid/os/IBinder;Lcom/samsung/android/camerasdkservice/data/ProcessParameters;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "param"    # Lcom/samsung/android/camerasdkservice/data/ProcessParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public updateEngineParameters(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "clientBinder"    # Landroid/os/IBinder;
    .param p2, "engine"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method
