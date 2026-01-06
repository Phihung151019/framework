.class public Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Default;
.super Ljava/lang/Object;
.source "IDataConnection.java"

# interfaces
.implements Lvendor/qti/hardware/data/connectionaidl/IDataConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/data/connectionaidl/IDataConnection;
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

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllBearerAllocations(Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;)I
    .locals 1
    .param p1, "response"    # Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getBearerAllocation(ILvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;)I
    .locals 1
    .param p1, "cid"    # I
    .param p2, "response"    # Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public registerForAllBearerAllocationUpdates(Lvendor/qti/hardware/data/connectionaidl/IDataConnectionIndication;)I
    .locals 1
    .param p1, "indication"    # Lvendor/qti/hardware/data/connectionaidl/IDataConnectionIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method
