.class public interface abstract Lcom/android/internal/telephony/SemTelephonyKnoxHelper;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelper.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyKnoxStatics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;,
        Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;,
        Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;,
        Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;
    }
.end annotation


# direct methods
.method public static blacklist sendPhoneReadyInternalIntent(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addImsPhoneConnection(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist addNumberOfCalls(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getApplicationRestrictionsManager(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRestrictionPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRoamingPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist isApplicationRestrictedForCall(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist logCallDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist logCallEventInHandlePollCalls(Lcom/android/internal/telephony/GsmCdmaConnection;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist removeImsPhoneConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist resetGsmCdmaConnection(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendCallStateChangedIntent(Landroid/content/Context;Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/Call$State;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist updateGsmCdmaConnection(ILcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 0

    .line 0
    return-void
.end method
