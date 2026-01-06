.class public interface abstract Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;
.super Ljava/lang/Object;
.source "IUwbExtrasAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter$Stub;,
        Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.uwb_extras.IUwbExtrasAdapter"


# virtual methods
.method public abstract blacklist enableConformanceTest(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enableDebugOption(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerSecUwbCallback(Lcom/samsung/android/uwb_extras/ISecUwbCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendUciMessage(II[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
