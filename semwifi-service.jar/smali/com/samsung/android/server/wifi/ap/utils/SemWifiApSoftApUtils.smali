.class public Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mOldSoftApConfigIsPmfEnabled:Z

.field private static mOldSoftApConfigIsPowerSavingEnabled:Z

.field private static mOldSoftApConfigIsWifi6SupportedEnabled:Z

.field private static mOldSoftApConfigIsWifiSharingEnabled:Z

.field private static mOldSoftApConfigTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "eng"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->DBG:Z

    .line 23
    .line 24
    const-string v0, "SemWifiApSoftApUtils"

    .line 25
    .line 26
    sput-object v0, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const/16 v0, 0x4b0

    .line 29
    .line 30
    sput v0, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigTimeOut:I

    .line 31
    .line 32
    sput-boolean v1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsWifiSharingEnabled:Z

    .line 33
    .line 34
    sput-boolean v1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsPowerSavingEnabled:Z

    .line 35
    .line 36
    sput-boolean v1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsPmfEnabled:Z

    .line 37
    .line 38
    sput-boolean v1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsWifi6SupportedEnabled:Z

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static prepareHotspotLabLog(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const-string v1, "CallingPackage = "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 8
    const-string p4, ",, Reason = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 9
    const-string p0, ",, More Info = Old and New Configuration is null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_2
    if-nez p2, :cond_3

    .line 10
    const-string p0, ",, More Info = New Configuration is null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_3
    if-nez p1, :cond_4

    .line 11
    const-string p0, ",, More Info = Old Configuration is null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p4

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " [OLD CONFIG NOT AVAILABLE]"

    if-eqz v1, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    const-string p3, ",, Ssid = [OLD and NEW ERROR]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    const-string p3, ",, Ssid = [NEW ERROR]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ",, Ssid = "

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_8
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p4

    .line 24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 25
    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 26
    const-string p3, ",, PassPhrase = [PassphraseAdded]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 27
    :cond_a
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 28
    const-string p3, ",, PassPhrase = [PassphraseRemoved]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 29
    :cond_b
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 30
    const-string p3, ",, PassPhrase = [PassphraseChanged]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_c
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p3

    .line 32
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p4

    if-eq p3, p4, :cond_d

    .line 33
    const-string p3, ",, SecurityType = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    :cond_d
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    .line 35
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    .line 36
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 37
    const-string p3, ",, Band = [OLD and NEW ERROR]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 38
    :cond_e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 39
    const-string p3, ",, Band = [NEW ERROR]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 40
    :cond_f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ",, Band = "

    if-eqz v1, :cond_10

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 42
    :cond_10
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_11
    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    move-result p3

    .line 45
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    move-result p4

    if-eq p3, p4, :cond_12

    .line 46
    const-string p3, ",, MacType = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_12
    const/4 p3, 0x1

    .line 47
    new-array p4, p3, [Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, p4, v3

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 48
    new-array v1, p3, [Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 50
    const-string p4, ",, Channel = [OLD and NEW ERROR]"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 51
    :cond_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 52
    const-string p4, ",, Channel = [NEW ERROR]"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 53
    :cond_14
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ",, Channel = "

    if-eqz v4, :cond_15

    .line 54
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 55
    :cond_15
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_16

    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_16
    :goto_3
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p1

    .line 58
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p2

    if-eq p1, p2, :cond_17

    .line 59
    const-string p1, ",, IsHidden = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    :cond_17
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsWifi6SupportedEnabled:Z

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "wifi_ap_11ax_mode_checked"

    invoke-static {p2, p4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p3, :cond_18

    move p2, p3

    goto :goto_4

    :cond_18
    move p2, v3

    .line 62
    :goto_4
    sput-boolean p2, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsWifi6SupportedEnabled:Z

    if-eq p1, p2, :cond_19

    .line 63
    const-string p1, ",, IsWifi6SupportedEnabled = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    :cond_19
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsPmfEnabled:Z

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "wifi_ap_pmf_checked"

    invoke-static {p2, p4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p3, :cond_1a

    move p2, p3

    goto :goto_5

    :cond_1a
    move p2, v3

    .line 66
    :goto_5
    sput-boolean p2, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsPmfEnabled:Z

    if-eq p1, p2, :cond_1b

    .line 67
    const-string p1, ",, IsPmfEnabled = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    :cond_1b
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsPowerSavingEnabled:Z

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "wifi_ap_powersave_mode_checked"

    invoke-static {p2, p4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p3, :cond_1c

    move p2, p3

    goto :goto_6

    :cond_1c
    move p2, v3

    .line 70
    :goto_6
    sput-boolean p2, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsPowerSavingEnabled:Z

    if-eq p1, p2, :cond_1d

    .line 71
    const-string p1, ",, IsPowerSavingEnabled = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    :cond_1d
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsWifiSharingEnabled:Z

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "wifi_ap_wifi_sharing"

    invoke-static {p2, p4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p3, :cond_1e

    goto :goto_7

    :cond_1e
    move p3, v3

    .line 74
    :goto_7
    sput-boolean p3, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigIsWifiSharingEnabled:Z

    if-eq p1, p3, :cond_1f

    .line 75
    const-string p1, ",, IsWifiSharingEnabled = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    :cond_1f
    sget p1, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigTimeOut:I

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_timeout_setting"

    const/16 p3, 0x4b0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 78
    sput p0, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->mOldSoftApConfigTimeOut:I

    if-eq p1, p0, :cond_20

    .line 79
    const-string p1, ",, TimeOut = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    :cond_20
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prepareHotspotLabLog(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/utils/SemWifiApSoftApUtils;->prepareHotspotLabLog(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
