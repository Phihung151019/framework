.class public interface abstract Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
.super Ljava/lang/Object;
.source "IExtensionClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub;,
        Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camerax.advanced.api.IExtensionClient"

.field public static final EXTENSION_AUTO:I = 0x1

.field public static final EXTENSION_BEAUTY:I = 0x4

.field public static final EXTENSION_BOKEH:I = 0x5

.field public static final EXTENSION_HDR:I = 0x2

.field public static final EXTENSION_MAX:I = 0x6

.field public static final EXTENSION_NIGHT:I = 0x3

.field public static final EXTENSION_NONE:I


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract prepareCapture(Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;JLcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract preparePreview(Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processCaptureImage(ILcom/samsung/android/camerax/advanced/api/ExtensionImage;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processPreview(Lcom/samsung/android/camerax/advanced/api/ExtensionImage;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
