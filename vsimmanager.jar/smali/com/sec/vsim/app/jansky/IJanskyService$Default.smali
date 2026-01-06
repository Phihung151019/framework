.class public Lcom/sec/vsim/app/jansky/IJanskyService$Default;
.super Ljava/lang/Object;
.source "IJanskyService.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/IJanskyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/IJanskyService;
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
.method public activateLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public activateSIMDevice()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public activateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public addLine(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public addServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public deactivateLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public deactivateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public downloadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .locals 0
    .param p1, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public getDeviceState()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationAndTc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "lineNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTRN(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/ITRNReceivedListener;)V
    .locals 0
    .param p1, "fromMsisdn"    # Ljava/lang/String;
    .param p3, "trnReceivedListener"    # Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/ITRNReceivedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    .local p2, "toMsisdn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public isUserLogedin()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public logout()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public openLoginPage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public registerForPushNotification(Lcom/sec/vsim/app/jansky/IPushNotificationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/vsim/app/jansky/IPushNotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public removeLine(Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public removeServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public requestAkaAuthentication()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public requestWsgAkaAuthRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public retriveAvailableMSISDNs()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public updateDeviceConfiguration()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public updateLineName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .locals 0
    .param p1, "lineNumber"    # Ljava/lang/String;
    .param p2, "lineName"    # Ljava/lang/String;
    .param p3, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public uploadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .locals 0
    .param p1, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public uploadUpdatedContact(Ljava/lang/String;Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .locals 0
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method
