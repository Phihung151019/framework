.class public final Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private volatile mDiscoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;

.field private volatile mSimpleMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;


# direct methods
.method static access$000(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;)V
    .locals 2

    .line 1
    const-string v0, "handleDiscoveryDiscovered"

    .line 2
    .line 3
    const-string v1, "ContinuityCallbackManager"

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p0, "null parameters"

    .line 8
    .line 9
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->mDiscoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    const-string p0, "null discoveryListener"

    .line 18
    .line 19
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;->onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static access$100(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;Ljava/lang/String;[BB)V
    .locals 4

    .line 1
    const-string v0, "handleMessageReceived"

    .line 2
    .line 3
    const-string v1, "ContinuityCallbackManager"

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v2, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-nez p3, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->mSimpleMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    .line 32
    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    const-string p0, "null simpleMessageListener"

    .line 36
    .line 37
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;->onReceived(Ljava/lang/String;[B)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    const-string p0, "null sessionMessageListener"

    .line 46
    .line 47
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    :goto_0
    const-string p0, "null parameters"

    .line 52
    .line 53
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->mDiscoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->mSimpleMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    .line 5
    .line 6
    return-void
.end method

.method public final setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->mDiscoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager$DiscoveryListener;

    .line 2
    .line 3
    return-void
.end method

.method final setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->mSimpleMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    .line 2
    .line 3
    return-void
.end method
