.class public interface abstract Lcom/samsung/android/uwb_extras/ISecUwbCallback;
.super Ljava/lang/Object;
.source "ISecUwbCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/uwb_extras/ISecUwbCallback$Stub;,
        Lcom/samsung/android/uwb_extras/ISecUwbCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.uwb_extras.ISecUwbCallback"


# virtual methods
.method public abstract blacklist notifySessionToken(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNotification(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
