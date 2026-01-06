.class public Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAutojoinSettingsObserver"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$mupdateCarrierWifiOffload(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->updateCarrierWifiOffload()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRampartBlockedUnsecureWifiAutojoin(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->updateRampartBlockedUnsecureWifiAutojoin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LocalLog;

    .line 5
    .line 6
    const/16 v1, 0x80

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mLocalLog:Landroid/util/LocalLog;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    iput-object p4, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 22
    .line 23
    const-string p4, "phone"

    .line 24
    .line 25
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    check-cast p4, Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 32
    .line 33
    const-class p4, Landroid/telephony/SubscriptionManager;

    .line 34
    .line 35
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    check-cast p4, Landroid/telephony/SubscriptionManager;

    .line 40
    .line 41
    iput-object p4, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->updateRampartBlockedUnsecureWifiAutojoin()V

    .line 44
    .line 45
    .line 46
    const-string p4, "rampart_blocked_unsecure_wifi_autojoin"

    .line 47
    .line 48
    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    new-instance v0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$1;

    .line 53
    .line 54
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$1;-><init>(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;Landroid/os/Handler;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p2, p1, p4, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->updateCarrierWifiOffload()V

    .line 62
    .line 63
    .line 64
    const-string p4, "sem_wifi_carrier_network_offload_enabled"

    .line 65
    .line 66
    invoke-static {p4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    new-instance v0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$2;

    .line 71
    .line 72
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$2;-><init>(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;Landroid/os/Handler;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1, p4, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$3;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$3;-><init>(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    .line 85
    new-instance p2, Landroid/content/IntentFilter;

    .line 86
    .line 87
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 91
    .line 92
    const-string p3, "android.intent.action.SIM_STATE_CHANGED"

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 100
    .line 101
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private updateCarrierWifiOffload()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "sem_wifi_carrier_network_offload_enabled"

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0, v4, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_0
    const-string v0, "SEM_WIFI_CARRIER_NETWORK_OFFLOAD_ENABLED - enabled: "

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->localLog(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    move v4, v2

    .line 44
    :goto_1
    if-ge v4, v0, :cond_4

    .line 45
    .line 46
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eq v5, v3, :cond_3

    .line 51
    .line 52
    const-string v6, "updateCarrierWifiOffload - simSlot: "

    .line 53
    .line 54
    const-string v7, ", subId: "

    .line 55
    .line 56
    const-string v8, ", carrier: "

    .line 57
    .line 58
    invoke-static {v6, v7, v4, v5, v8}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-object v7, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    .line 64
    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v7, "  >>>  enabled: "

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    iget-object v7, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 84
    .line 85
    invoke-virtual {v7, v5, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isCarrierNetworkOffloadEnabled(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eq v1, v7, :cond_2

    .line 90
    .line 91
    iget-object v7, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 92
    .line 93
    invoke-virtual {v7, v5, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setCarrierNetworkOffloadEnabled(IZZ)V

    .line 94
    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v6, " - changed"

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    const-string v5, " - not changed"

    .line 115
    .line 116
    invoke-static {v6, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    :goto_2
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->localLog(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    return-void
.end method

.method private updateRampartBlockedUnsecureWifiAutojoin()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "rampart_blocked_unsecure_wifi_autojoin"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v5, "RAMPART_BLOCKED_UNSECURE_WIFI_AUTOJOIN onChanged - enabled: "

    .line 21
    .line 22
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v5, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v5, v6, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, v1, :cond_1

    .line 34
    .line 35
    move v2, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v2, v3

    .line 38
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->localLog(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x6

    .line 51
    filled-new-array {v3, v1, v0}, [I

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setAutojoinDisallowedSecurityTypes([I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "setAutojoinDisallowedSecurityTypes: "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->localLog(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 83
    .line 84
    new-array v1, v3, [I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setAutojoinDisallowedSecurityTypes([I)V

    .line 87
    .line 88
    .line 89
    const-string v0, "setAutojoinDisallowedSecurityTypes: none"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->localLog(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryAutoJoinDisallowedSecurityTypes()V

    .line 97
    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Dump of WifiAutojoinSettingsObserver"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "SEM_WIFI_CARRIER_NETWORK_OFFLOAD_ENABLED: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v3, "sem_wifi_carrier_network_offload_enabled"

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "RAMPART_BLOCKED_UNSECURE_WIFI_AUTOJOIN: "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string v3, "rampart_blocked_unsecure_wifi_autojoin"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "WifiAutojoinSettingsObserver - Log Begin ----"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mLocalLog:Landroid/util/LocalLog;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 72
    .line 73
    .line 74
    const-string p0, "WifiAutojoinSettingsObserver - Log End ----"

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method localLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "WifiAutojoinSettingsObserver"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->mLocalLog:Landroid/util/LocalLog;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
