.class public Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mDesiredAvailableWifiInterfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDesiredConnectedWifiInterface:I

.field private final mIsWifiInterfaceConnected:Z

.field private final mRequiredWifiInterface:I

.field private final mTopology:I

.field private final mType:I

.field private final mWifiApSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x2

    .line 6
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/DLog;->isDebug()Z

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget v4, Lcom/samsung/android/mcf/continuity/sem/SemWrapper;->BUILD_VERSION_PLATFORM_INT:I

    .line 20
    .line 21
    const v5, 0x24a54

    .line 22
    .line 23
    .line 24
    if-le v4, v5, :cond_1

    .line 25
    .line 26
    filled-new-array {v1, v0, v3, v2}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const v5, 0x224d4

    .line 32
    .line 33
    .line 34
    if-le v4, v5, :cond_2

    .line 35
    .line 36
    filled-new-array {v1, v0, v2}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const v0, 0x1fdc4

    .line 42
    .line 43
    .line 44
    if-le v4, v0, :cond_3

    .line 45
    .line 46
    filled-new-array {v2}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [I

    .line 53
    .line 54
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/Utils;->getFlag(Ljava/util/stream/Stream;)I

    .line 63
    .line 64
    .line 65
    const/16 v0, 0x8

    .line 66
    .line 67
    filled-new-array {v1, v3, v2, v0}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/Utils;->getFlag(Ljava/util/stream/Stream;)I

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :array_0
    .array-data 4
        0x1
        0x10
        0x2
        0x4
        0x20
        0x40
    .end array-data
.end method

.method protected constructor <init>(IILjava/util/List;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mTopology:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mDesiredAvailableWifiInterfaceList:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mDesiredConnectedWifiInterface:I

    .line 11
    .line 12
    iput p5, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mRequiredWifiInterface:I

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mIsWifiInterfaceConnected:Z

    .line 15
    .line 16
    iput-object p7, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mWifiApSsid:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected getDesiredAvailableWifiInterface()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mDesiredAvailableWifiInterfaceList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/Utils;->getFlag(Ljava/util/stream/Stream;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method protected getDesiredConnectedWifiInterface()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mDesiredConnectedWifiInterface:I

    .line 2
    .line 3
    return p0
.end method

.method public final getRequiredWifiInterface()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mRequiredWifiInterface:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTopology()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mTopology:I

    .line 2
    .line 3
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getWifiApSsid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mWifiApSsid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isWifiInterfaceConnected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mIsWifiInterfaceConnected:Z

    .line 2
    .line 3
    return p0
.end method
