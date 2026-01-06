.class public Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;
    }
.end annotation


# static fields
.field private static final IT_POLICY_NOT_ALLOW_OPEN_WIFIAP:I = 0x1

.field private static final IT_POLICY_NOT_ALLOW_WIFIAP:I = 0x2

.field private static TAG:Ljava/lang/String; = "SemWifiApDevicePolicyManager"


# instance fields
.field private MHSDBG:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mDPMReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiOnly:I

.field private mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleSecurityPolicyMHS(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->handleSecurityPolicyMHS()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->MHSDBG:Z

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPMReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 26
    .line 27
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->registerReceiver()V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;Landroid/os/Looper;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    .line 50
    .line 51
    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "connectivity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v1, "device_policy"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private handleSecurityPolicyMHS()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowInternetSharingDpm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "handleSecurityPolicyMHS()   allowWifiAp ("

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, ")"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0xd

    .line 38
    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private isAllowInternetSharingDpm()Z
    .locals 4

    .line 1
    const-string v0, "Failed getting userId using ActivityManagerNative"

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->checkAndSetConnectivityInstance()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :catch_0
    move-exception v2

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v2

    .line 21
    goto :goto_1

    .line 22
    :goto_0
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :goto_1
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_2
    move v0, v1

    .line 34
    :goto_3
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    .line 38
    .line 39
    .line 40
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 41
    goto :goto_4

    .line 42
    :catch_2
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "Failed getting Hotspot policy from DEVICE_POLICY_SERVICE"

    .line 45
    .line 46
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move p0, v1

    .line 50
    :goto_4
    if-nez p0, :cond_0

    .line 51
    .line 52
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "Not allow to use Hotspot (DPM) userId :"

    .line 55
    .line 56
    invoke-static {v2, v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :cond_0
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method private isAllowToUseHotspot3lm()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "tethering_blocked"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    return v0
.end method

.method private registerReceiver()V
    .locals 7

    .line 1
    new-instance v3, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPMReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x2

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public isAllowToUseHotspot()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isWifiOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "Do not accept turn on Wifi hotspot in Wifi model"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowInternetSharingDpm()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowToUseHotspot3lm()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public isOpenWifiApAllowed(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isNotAllowedOpenMobileHotspot(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    return v1
.end method

.method public isWifiOnly()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 32
    .line 33
    if-ne p0, v3, :cond_2

    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    return v2
.end method

.method public isWifiOnlySystemProperty()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    const-string v0, "ro.carrier"

    .line 9
    .line 10
    const-string v1, "Unknown"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ro.radio.noril"

    .line 21
    .line 22
    const-string v4, "no"

    .line 23
    .line 24
    invoke-static {v1, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v4, "wifi-only"

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    const-string v4, "yes"

    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 50
    .line 51
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "isWifiOnly = false"

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "deviceType: "

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ", noRIL: "

    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " isWifiOnly = true"

    .line 80
    .line 81
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 92
    .line 93
    :cond_2
    :goto_1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 94
    .line 95
    if-ne p0, v3, :cond_3

    .line 96
    .line 97
    return v3

    .line 98
    :cond_3
    return v2
.end method

.method public isWifiStateChangeAllowed(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isWifiStateChangeAllowed(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
