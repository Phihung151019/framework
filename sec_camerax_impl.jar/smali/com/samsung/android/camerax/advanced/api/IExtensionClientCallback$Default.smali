.class public Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Default;
.super Ljava/lang/Object;
.source "IExtensionClientCallback.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onProcessCompleted(Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .locals 0
    .param p1, "totalCaptureResult"    # Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onProcessFailed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onProcessProgress(I)V
    .locals 0
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
