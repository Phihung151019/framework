.class public interface abstract Landroid/hardware/IRemoteDeviceCallback;
.super Ljava/lang/Object;
.source "IRemoteDeviceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IRemoteDeviceCallback$Stub;,
        Landroid/hardware/IRemoteDeviceCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.IRemoteDeviceCallback"

.field public static final ERROR_REMOTE_BUFFER:I = 0x1

.field public static final ERROR_REMOTE_DEVICE:I = 0x0

.field public static final ERROR_REMOTE_UNKNOWN:I = 0x2


# virtual methods
.method public abstract onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onOrientationChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
