.class public Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiD2dSaLoggingHandler"


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private mStaFreq:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method public static synthetic $r8$lambda$9Tz9_IxQYQhDJizr0foerWt-qao(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->lambda$sendEvent$0(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmStaFreq(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mStaFreq:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$1;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 14
    .line 15
    const-string p3, "connectivity"

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 24
    .line 25
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 p3, 0x1

    .line 31
    invoke-virtual {p1, p3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private synthetic lambda$sendEvent$0(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "P2P"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "sta_freq"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mStaFreq:I

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 21
    .line 22
    invoke-static {p0, p3, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingP2P;->sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v0, "NAN"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mStaFreq:I

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 44
    .line 45
    invoke-static {p0, p3, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingNAN;->sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, " : "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "WifiD2dSaLoggingHandler"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiD2dSaLoggingHandler;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
