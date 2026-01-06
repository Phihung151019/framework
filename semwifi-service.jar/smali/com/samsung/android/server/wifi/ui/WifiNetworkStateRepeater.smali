.class public Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifi.BrRepeater"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTargetPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$xaS3_4QTFhosKypQkLNhgxqt5RE(Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->lambda$onReceive$0(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->mTargetPackages:Ljava/util/Set;

    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    const-string p0, "SemWifi.BrRepeater"

    .line 19
    .line 20
    const-string p1, "failed to repeat network action"

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->mTargetPackages:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->mTargetPackages:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    const-string v0, "com.samsung.android.fast"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->addPackage(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ui/WifiNetworkStateRepeater;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    return-void
.end method
