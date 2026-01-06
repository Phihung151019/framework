.class public final Lcom/android/internal/telephony/data/DataKnoxUtils;
.super Ljava/lang/Object;
.source "DataKnoxUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isDataAllowedFromKnox(IZLcom/android/internal/telephony/Phone;)Z
    .locals 6

    .line 26
    invoke-virtual {p2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyKnoxHelper()Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRestrictionPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyKnoxHelper()Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getApplicationRestrictionsManager(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_3

    .line 33
    :cond_0
    const-string v3, "com.samsung.android.app.telephonyui"

    const/4 v4, 0x0

    .line 34
    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    const/16 v3, 0x11

    if-ne p0, v3, :cond_3

    .line 36
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;->isDataAllowedFromSimSlot(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    move v2, v4

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 39
    const-string v3, "telephonyui_simcard_manager_data_preference"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 40
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 41
    :cond_2
    const-string v3, "value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 43
    invoke-static {v3, v1}, Lcom/android/internal/telephony/data/DataKnoxUtils;->isTheSameWithSlotId(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_5

    .line 50
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;->isMmsAllowedFromSimSlot(I)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    :cond_4
    return v4

    :cond_5
    :goto_3
    return v2
.end method

.method public static blacklist isDataAllowedFromKnox(Landroid/net/NetworkCapabilities;ZLcom/android/internal/telephony/Phone;)Z
    .locals 6

    .line 66
    invoke-virtual {p2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyKnoxHelper()Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRestrictionPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

    move-result-object v0

    .line 68
    invoke-virtual {p2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyKnoxHelper()Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getApplicationRestrictionsManager(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_3

    .line 73
    :cond_0
    const-string v3, "com.samsung.android.app.telephonyui"

    const/4 v4, 0x0

    .line 74
    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    const/16 v3, 0xc

    .line 75
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;->isDataAllowedFromSimSlot(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    move v2, v4

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 79
    const-string v3, "telephonyui_simcard_manager_data_preference"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 81
    :cond_2
    const-string v3, "value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 83
    invoke-static {v3, v1}, Lcom/android/internal/telephony/data/DataKnoxUtils;->isTheSameWithSlotId(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 89
    :cond_3
    :goto_2
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 90
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;->isMmsAllowedFromSimSlot(I)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    :cond_4
    return v4

    :cond_5
    :goto_3
    return v2
.end method

.method public static blacklist isDataRoamingEnabledFromKnox(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyKnoxHelper()Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRoamingPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 111
    invoke-interface {p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;->isRoamingDataEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 112
    const-string p0, "DataKnoxUtils"

    const-string v0, "isDataRoamingEnabledFromKnox : false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isTheSameWithSlotId(ILjava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
