.class public Lcom/gsma/services/rcs/capability/ICapabilityService$Default;
.super Ljava/lang/Object;
.source "ICapabilityService.java"

# interfaces
.implements Lcom/gsma/services/rcs/capability/ICapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/ICapabilityService;
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
.method public addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public addContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 0
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "listener"    # Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 1
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceRegistered()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public removeContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 0
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "listener"    # Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public requestAllContactsCapabilities()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 0
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public setUserActive(Z)V
    .locals 0
    .param p1, "userActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method
