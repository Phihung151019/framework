.class public Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;,
        Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;,
        Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;
    }
.end annotation


# static fields
.field private static final ACTION_LOGIN_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field private static final ACTION_LOGOUT_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field private static final AUTOHOTSPOT_MCF_BR_CLASS:Ljava/lang/String; = "com.samsung.android.mcf.autohotspot.SemAutohotspotMcfBR"

.field private static final AUTOHOTSPOT_MCF_PKG:Ljava/lang/String; = "com.samsung.android.mcf.autohotspot"

.field static final MCF_SERVICE_PERMISSION:Ljava/lang/String; = "com.samsung.android.mcfds.permission.START_SERVICE"

.field static final MCF_SERVICE_STARTED:Ljava/lang/String; = "com.samsung.android.mcfds.SERVICE_STARTED"

.field static final MCF_SERVICE_STOPPED:Ljava/lang/String; = "com.samsung.android.mcfds.SERVICE_STOPPED"

.field private static final SAMSUNG_ACCOUNT_SIGIN_RECEIVER_PERMISSION:Ljava/lang/String; = "com.osp.app.signin.BROADCAST_PERMISSION"

.field private static SAfilter:Landroid/content/IntentFilter; = null

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFIAP_WARNING_STOP_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

.field private static mIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private iSemAutohotspotMcfBinded:Z

.field private iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private myHandler:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;

.field retryCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mConnection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmyHandler(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->myHandler:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputiSemAutohotspotMcfBinded(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfBinded:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputiSemAutohotspotMcfService(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 2
    .line 3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->SAfilter:Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->SAfilter:Landroid/content/IntentFilter;

    .line 14
    .line 15
    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mIntentFilter:Landroid/content/IntentFilter;

    .line 26
    .line 27
    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mIntentFilter:Landroid/content/IntentFilter;

    .line 33
    .line 34
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mIntentFilter:Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mIntentFilter:Landroid/content/IntentFilter;

    .line 47
    .line 48
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mIntentFilter:Landroid/content/IntentFilter;

    .line 54
    .line 55
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SemAutohotspotServiceBind"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x32

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->retryCount:I

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mConnection:Landroid/content/ServiceConnection;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance p1, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->myHandler:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;

    .line 31
    .line 32
    return-void
.end method

.method private registerMcfBroadcast()V
    .locals 6

    .line 1
    new-instance v2, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.samsung.android.mcfds.SERVICE_STARTED"

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "com.samsung.android.mcfds.SERVICE_STOPPED"

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v1, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$2;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$2;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x2

    .line 25
    const-string v3, "com.samsung.android.mcfds.permission.START_SERVICE"

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private registerReceivers()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    invoke-direct {v1, p0, v6}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;I)V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->SAfilter:Landroid/content/IntentFilter;

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const-string v3, "com.osp.app.signin.BROADCAST_PERMISSION"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v1, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;

    .line 21
    .line 22
    invoke-direct {v1, p0, v6}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$IntentBR;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;I)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mIntentFilter:Landroid/content/IntentFilter;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface/range {p0 .. p7}, Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    move-object p0, v0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method public genericCommand(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;->genericCommand(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public getMcfConnectedStatus(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;->getMcfConnectedStatus(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public getMcfScanDetail()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v0, p0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;->getMcfScanDetail()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v3, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .line 36
    .line 37
    :try_start_1
    const-string v0, "mMHSdeviceType"

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const-string v0, "mDevice"

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v0, "mBattery"

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const-string v0, "mNetworkType"

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    const-string v0, "mNetworkSignalStrength"

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    const-string v0, "mWifiMac"

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    const-string v0, "mUserName"

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    const-string v0, "mSSID"

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    const-string v0, "mhidden"

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    const-string v0, "mSecurity"

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    const-string v0, "mTimeStamp"

    .line 98
    .line 99
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v15

    .line 103
    const-string v0, "mBLERssi"

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v17

    .line 109
    const-string v0, "version"

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v18

    .line 115
    const-string v0, "isDataSaverEnabled"

    .line 116
    .line 117
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v19

    .line 121
    const-string v0, "isWifiProfileShareEnabled"

    .line 122
    .line 123
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v20

    .line 127
    const-string v0, "isMobileDataLimitReached"

    .line 128
    .line 129
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v21

    .line 133
    const-string v0, "isNotValidNetwork"

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const-string v4, "mProtocol"

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v22

    .line 145
    new-instance v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 146
    .line 147
    invoke-direct/range {v4 .. v22}, Lcom/samsung/android/wifi/SemWifiApBleScanResult;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIZZZI)V

    .line 148
    .line 149
    .line 150
    iput-boolean v0, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isNotValidNetwork:Z

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :catch_1
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    :cond_0
    return-object v1
.end method

.method public handleBootCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "handleBootCompleted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->myHandler:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->registerReceivers()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->registerMcfBroadcast()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public launchWifiApWarningForMcfMHS(IIZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "launchWifiApWarningForMcfMHS"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v3, 0x1

    .line 25
    const-string v4, "com.android.settings"

    .line 26
    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v5, "sending WIFIAP_WARNING_STOP_DIALOG "

    .line 37
    .line 38
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string v3, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    const-wide/16 v2, 0xc8

    .line 55
    .line 56
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v2

    .line 63
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 67
    .line 68
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 72
    .line 73
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const/high16 v3, 0x10000000

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    const-string v3, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-string v3, "wifiap_warning_dialog_type"

    .line 87
    .line 88
    const/4 v4, 0x5

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    const-string v3, "wifiap_band"

    .line 93
    .line 94
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    const-string p1, "wifiap_security"

    .line 98
    .line 99
    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const-string p1, "wifiap_set_security"

    .line 103
    .line 104
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method public startMcfClientMHSDiscovery(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;->startMcfClientMHSDiscovery(Z)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public startMcfMHSAdvertisement(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->iSemAutohotspotMcfService:Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;->startMcfMHSAdvertisement(Z)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method
