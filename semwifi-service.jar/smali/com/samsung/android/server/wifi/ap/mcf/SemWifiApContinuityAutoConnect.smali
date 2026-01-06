.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect$McfAutoConnectHandler;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field private static final MSG_START_AUTO_CONNECT_DISCOVERY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MHSMcf:AutoConnect"


# instance fields
.field private mBleWorkHandler:Landroid/os/Handler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->getHandler()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->registerBR()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->mBleWorkHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    .line 6
    .line 7
    const-string v1, "SemWifiApContinuityAutoConnect"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect$McfAutoConnectHandler;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect$McfAutoConnectHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->mBleWorkHandler:Landroid/os/Handler;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->mBleWorkHandler:Landroid/os/Handler;

    .line 31
    .line 32
    return-object p0
.end method

.method private registerBR()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect$1;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAutoConnect;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x2

    .line 24
    invoke-virtual {v1, v2, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    return-void
.end method
