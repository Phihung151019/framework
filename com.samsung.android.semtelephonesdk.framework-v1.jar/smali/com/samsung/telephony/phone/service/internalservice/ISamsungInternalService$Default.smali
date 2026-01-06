.class public Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Default;
.super Ljava/lang/Object;
.source "ISamsungInternalService.java"

# interfaces
.implements Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
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

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public getActiveFgCallState()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllowedNetworkTypes(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPersoSubStateAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPin2RetryCount(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2retryCount(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getOcsglAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getRevision()I
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

.method public invokeOemRilRequestRaw(I[BLcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "bytes"    # [B
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public isCspPlmnEnabled(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isFdnAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isIccFdnEnabled(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public isIccPin2Blocked(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkPolicyRestrictBackground()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isOCSGLAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public notifyVoicemailNumberChanged(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public queryAvailableCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public queryAvailableNetwork(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public queryCallBarring(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public queryCallForwardingOption(IZILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public queryCallWaiting(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public queryCdmaRoamingPreference(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public queryEnhancedVoicePrivacy(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public queryIcBarring(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public queryOutGoingCallerIdDisplay(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    return-void
.end method

.method public queryPreferredNetworkList(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public queryPreferredNetworkType(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public selectCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public setAllowedNetworkTypes(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public setCallBarring(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "enabled"    # Z
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .param p7, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public setCallWaiting(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public setCdmaRoamingPreference(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "roamingType"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    return-void
.end method

.method public setCdmaSubscription(IILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "cdmaSubscriptionType"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public setCsgManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "list"    # Ljava/util/List;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    return-void
.end method

.method public setDataRoamingEnabled(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public setEnhancedVoicePrivacy(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public setIcBarring(I[Landroid/os/Bundle;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "options"    # [Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public setIccEpsLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public setIccFplmn(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # [B
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public setIccLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    return-void
.end method

.method public setIccPsLoci(I[B)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "loci"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    return-void
.end method

.method public setInternalPdnEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method public setNetworkManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "list"    # Ljava/util/List;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public setOutGoingCallerIdDisplay(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "value"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public setPreferredNetworkList(ILjava/util/List;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "list"    # Ljava/util/List;
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public setPreferredNetworkType(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public setRadioPower(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public supplyIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    return-void
.end method

.method public supplyIccPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method
