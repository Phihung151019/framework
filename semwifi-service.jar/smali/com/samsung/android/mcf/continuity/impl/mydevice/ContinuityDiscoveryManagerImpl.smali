.class final Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;
.super Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;


# instance fields
.field private final mApStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mContinuitySimpleMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

.field private final mVersionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PuRjE8Vi9Oq1RKrORIgnAWTT2_g(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->sendStopDiscoveryCommand()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic $r8$lambda$TFKRyWV_DOqMN8UPthKyz6FbVso(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->lambda$startDiscovery$0(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->mContinuitySimpleMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->mApStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->mVersionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    return-void
.end method

.method private synthetic lambda$startDiscovery$0(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->sendStartDiscoveryCommand()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "fail sendStartDiscoveryCommand"

    .line 20
    .line 21
    const-string v0, "ContinuityDiscoveryManagerImpl"

    .line 22
    .line 23
    const-string v1, "startDiscovery"

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p1, p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->mApStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->mVersionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->mContinuitySimpleMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->destroy()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->mContinuitySimpleMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNearbyMyDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    const-string v1, "ContinuityDiscoveryManagerImpl"

    .line 4
    .line 5
    const-string v2, "getNearbyMyDevices"

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->getNearbyMyDevices()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final startAdvertisement()V
    .locals 3

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    const-string v1, "ContinuityDiscoveryManagerImpl"

    .line 4
    .line 5
    const-string v2, "startAdvertisement"

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->sendStartAdvertisementCommand()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z
    .locals 3

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    const-string v1, "ContinuityDiscoveryManagerImpl"

    .line 4
    .line 5
    const-string v2, "startDiscovery"

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final stopAdvertisement()V
    .locals 3

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    const-string v1, "ContinuityDiscoveryManagerImpl"

    .line 4
    .line 5
    const-string v2, "stopAdvertisement"

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->sendStopAdvertisementCommand()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final stopDiscovery()Z
    .locals 3

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    const-string v1, "ContinuityDiscoveryManagerImpl"

    .line 4
    .line 5
    const-string v2, "stopDiscovery"

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method
