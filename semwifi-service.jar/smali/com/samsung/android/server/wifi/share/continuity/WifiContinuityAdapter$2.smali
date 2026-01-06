.class Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->startDiscovery(Ljava/util/List;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

.field final synthetic val$discoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$message:[B

.field final synthetic val$simpleMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

.field final synthetic val$targetDevices:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$I6aCyl0G7z8IyU4PeN-VTUtGIHc(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->lambda$onDiscovered$1(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$dj5YOP2tRe4zyfO_JMXP-PE6KPs(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->lambda$onDiscovered$0(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;Ljava/util/Set;Landroid/os/Handler;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$discoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$targetDevices:Ljava/util/Set;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$handler:Landroid/os/Handler;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$simpleMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$message:[B

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static synthetic lambda$onDiscovered$0(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "delayed send message to "

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "SemWifi.Continuity"

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 17
    .line 18
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->sendMessage(Ljava/lang/String;[B)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static synthetic lambda$onDiscovered$1(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "send message to "

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "SemWifi.Continuity"

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 17
    .line 18
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;->sendMessage(Ljava/lang/String;[B)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractDevice;->getDeviceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    const-string p2, "onDiscovered event:"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "SemWifi.Continuity"

    .line 12
    .line 13
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$discoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p2, v0, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractDiscoveryManager;->getBtMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$targetDevices:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$targetDevices:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$handler:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$simpleMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$message:[B

    .line 51
    .line 52
    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    move v1, p1

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[BI)V

    .line 57
    .line 58
    .line 59
    const-wide/16 p0, 0x1f4

    .line 60
    .line 61
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    move v1, p1

    .line 66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$handler:Landroid/os/Handler;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$simpleMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;->val$message:[B

    .line 71
    .line 72
    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[BI)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method
