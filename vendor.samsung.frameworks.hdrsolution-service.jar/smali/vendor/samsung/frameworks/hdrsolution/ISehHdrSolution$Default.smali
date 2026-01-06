.class public Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Default;
.super Ljava/lang/Object;
.source "ISehHdrSolution.java"

# interfaces
.implements Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public updateHdrInfo(I)V
    .locals 0
    .param p1, "dataspace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public updateHdrInfo2(II)V
    .locals 0
    .param p1, "dataspace"    # I
    .param p2, "netflix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public updateHdrLayerState(Z)V
    .locals 0
    .param p1, "started"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
