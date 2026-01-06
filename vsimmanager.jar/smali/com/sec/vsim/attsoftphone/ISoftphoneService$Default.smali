.class public Lcom/sec/vsim/attsoftphone/ISoftphoneService$Default;
.super Ljava/lang/Object;
.source "ISoftphoneService.java"

# interfaces
.implements Lcom/sec/vsim/attsoftphone/ISoftphoneService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/ISoftphoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteAddress(IJ)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "addressId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "authorizationCode"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "tGuardAppId"    # Ljava/lang/String;
    .param p5, "environment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public getCallForwardingInfo(I)V
    .locals 0
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public getCallWaitingInfo(I)V
    .locals 0
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public getClientId(Ljava/lang/String;)I
    .locals 1
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceList(I)Ljava/util/List;
    .locals 1
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTermsConditions(I)V
    .locals 0
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public logOut(I)V
    .locals 0
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public provisionAccount(I)V
    .locals 0
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public tryDeregister(I)V
    .locals 0
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public tryRegister(I)V
    .locals 0
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "addressId"    # I
    .param p3, "confirmed"    # Z
    .param p4, "listener"    # Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method
