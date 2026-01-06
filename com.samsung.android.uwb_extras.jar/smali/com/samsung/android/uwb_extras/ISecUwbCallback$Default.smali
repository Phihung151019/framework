.class public Lcom/samsung/android/uwb_extras/ISecUwbCallback$Default;
.super Ljava/lang/Object;
.source "ISecUwbCallback.java"

# interfaces
.implements Lcom/samsung/android/uwb_extras/ISecUwbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/uwb_extras/ISecUwbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifySessionToken(II)V
    .locals 0
    .param p1, "sessionID"    # I
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onNotification(II[B)V
    .locals 0
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "rawUciNtf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
