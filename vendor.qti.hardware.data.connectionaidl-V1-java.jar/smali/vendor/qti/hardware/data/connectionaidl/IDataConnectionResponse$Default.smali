.class public Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Default;
.super Ljava/lang/Object;
.source "IDataConnectionResponse.java"

# interfaces
.implements Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public onAllBearerAllocationsResponse(I[Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "bearersList"    # [Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onBearerAllocationResponse(ILvendor/qti/hardware/data/connectionaidl/AllocatedBearers;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "bearers"    # Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
