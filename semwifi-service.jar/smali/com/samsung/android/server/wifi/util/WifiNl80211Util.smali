.class public Lcom/samsung/android/server/wifi/util/WifiNl80211Util;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DEFAULT_MAX_PNO_SSIDS_PER_SCAN:I = 0x10

.field public static final DEFAULT_RSSI:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "SemWifi.CondUtil"


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private mIsInitialized:Z

.field private final mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "wifinl80211"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 13
    .line 14
    return-void
.end method

.method private isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method


# virtual methods
.method public disableRandomMac()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->disableRandomMac(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "SemWifi.CondUtil"

    .line 16
    .line 17
    const-string v0, "not initialized interface"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public getMaxPnoSsidsPerScan()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "SemWifi.CondUtil"

    .line 9
    .line 10
    const-string v0, "not initialized interface"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    const/16 p0, 0x10

    .line 16
    .line 17
    return p0
.end method

.method public getRssi()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, -0xc8

    .line 6
    .line 7
    const-string v2, "SemWifi.CondUtil"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "not initialized interface"

    .line 12
    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    const-string p0, "signal poll result is null, return default rssi"

    .line 28
    .line 29
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "current rssi "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    .line 41
    .line 42
    const-string v3, " dbm"

    .line 43
    .line 44
    invoke-static {v3, v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    .line 52
    .line 53
    return p0
.end method

.method public setupWifiCond(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->semSetupInterface(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p0, "success"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "failed"

    .line 17
    .line 18
    :goto_0
    const-string p1, "setup interface "

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifi.CondUtil"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public tearDown()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method
