.class public interface abstract Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;
.super Ljava/lang/Object;
.source "IExtensionClientCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Stub;,
        Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camerax.advanced.api.IExtensionClientCallback"


# virtual methods
.method public abstract onProcessCompleted(Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProcessFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProcessProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
