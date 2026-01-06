.class public Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mNsdHotspotListener:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

.field private final mNsdManager:Landroid/net/nsd/NsdManager;

.field private mNsdServiceInfo:Landroid/net/nsd/NsdServiceInfo;

.field private mServiceInfoCallback:Landroid/net/nsd/NsdManager$ServiceInfoCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNsdHotspotListener(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdHotspotListener:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNsdServiceInfo(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Landroid/net/nsd/NsdServiceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNsdServiceInfo(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceInfoCallback(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mServiceInfoCallback:Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;Ljava/util/concurrent/Executor;Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "SemWifiApNsd: NsdResolveData ("

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ")"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mExecutor:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdHotspotListener:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 36
    .line 37
    return-void
.end method

.method private getServiceInfoCallback()Landroid/net/nsd/NsdManager$ServiceInfoCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;-><init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->stopResolveService()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public resolveService()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mServiceInfoCallback:Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->getServiceInfoCallback()Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mServiceInfoCallback:Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mServiceInfoCallback:Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/nsd/NsdManager;->registerServiceInfoCallback(Landroid/net/nsd/NsdServiceInfo;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$ServiceInfoCallback;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "resolveService : registerServiceInfoCallback"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "resolveService"

    .line 34
    .line 35
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public stopResolveService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mServiceInfoCallback:Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->unregisterServiceInfoCallback(Landroid/net/nsd/NsdManager$ServiceInfoCallback;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->mServiceInfoCallback:Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "unregisterServiceInfoCallback"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "stopResolveService"

    .line 26
    .line 27
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
