.class public Landroidx/car/app/model/IAlertCallback$Default;
.super Ljava/lang/Object;
.source "IAlertCallback.java"

# interfaces
.implements Landroidx/car/app/model/IAlertCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/IAlertCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAlertCancelled(ILandroidx/car/app/IOnDoneCallback;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public onAlertDismissed(Landroidx/car/app/IOnDoneCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
