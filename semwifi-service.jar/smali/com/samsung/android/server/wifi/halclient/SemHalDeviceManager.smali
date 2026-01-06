.class public Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListenerProxy;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListenerProxy;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListener;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$HdmIfaceTypeForCreation;
    }
.end annotation


# static fields
.field public static final CHIP_CAPABILITY_ANY:J = 0x0L

.field private static final CHIP_CAPABILITY_UNINITIALIZED:J = -0x1L

.field public static final CONCURRENCY_TYPE_TO_CREATE_TYPE_MAP:Landroid/util/SparseIntArray;

.field private static final CREATE_TYPES_BY_PRIORITY:[I

.field public static final HAL_IFACE_MAP:Landroid/util/SparseIntArray;

.field public static final HDM_CREATE_IFACE_AP:I = 0x1

.field public static final HDM_CREATE_IFACE_AP_BRIDGE:I = 0x2

.field public static final HDM_CREATE_IFACE_NAN:I = 0x4

.field public static final HDM_CREATE_IFACE_P2P:I = 0x3

.field public static final HDM_CREATE_IFACE_STA:I = 0x0

.field private static final IFACE_TYPES_BY_PRIORITY:[I

.field private static final START_HAL_RETRY_INTERVAL_MS:I = 0x14

.field public static final START_HAL_RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemHalDeviceManager"

.field private static final VDBG:Z = true


# instance fields
.field private mCachedStaticChipInfos:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

.field private mDbg:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private final mInterfaceInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubsystemRestartListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiEventCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

.field private mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

.field private mWifiStaticChipInfo:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mEventHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubsystemRestartListener(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSubsystemRestartListener:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetCREATE_TYPES_BY_PRIORITY()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->CREATE_TYPES_BY_PRIORITY:[I

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetIFACE_TYPES_BY_PRIORITY()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->HAL_IFACE_MAP:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->CONCURRENCY_TYPE_TO_CREATE_TYPE_MAP:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x3

    .line 19
    filled-new-array {v0, v1, v2, v3}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sput-object v4, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    filled-new-array {v0, v2, v1, v3, v4}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->CREATE_TYPES_BY_PRIORITY:[I

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiStaticChipInfo:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;

    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;I)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiEventCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSubsystemRestartListener:Ljava/util/Set;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mCachedStaticChipInfos:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getWifiHalMockable()Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mEventHandler:Landroid/os/Handler;

    .line 56
    .line 57
    return-void
.end method

.method private varargs checkIsInterfaceIncluded([[I[Ljava/lang/Integer;)Z
    .locals 8

    .line 1
    array-length p0, p1

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_3

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    array-length v3, p2

    .line 9
    move v4, v0

    .line 10
    move v5, v4

    .line 11
    :goto_1
    const/4 v6, 0x1

    .line 12
    if-ge v4, v3, :cond_1

    .line 13
    .line 14
    aget-object v7, p2, v4

    .line 15
    .line 16
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    aget v7, v2, v7

    .line 21
    .line 22
    if-lt v7, v6, :cond_0

    .line 23
    .line 24
    add-int/lit8 v5, v5, 0x1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    array-length v2, p2

    .line 30
    if-ne v5, v2, :cond_2

    .line 31
    .line 32
    return v6

    .line 33
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return v0
.end method

.method private createIface(Ljava/lang/String;IJLcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemHalDeviceManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "createIface: createIfaceType="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", requiredChipCapabilities="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p3, ", requestorWs="

    .line 26
    .line 27
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p3, 0x0

    .line 41
    if-eqz p5, :cond_1

    .line 42
    .line 43
    if-nez p6, :cond_1

    .line 44
    .line 45
    const-string p0, "SemHalDeviceManager"

    .line 46
    .line 47
    const-string p1, "createIface: createIfaceType="

    .line 48
    .line 49
    const-string p4, "with NonNull destroyedListener but Null handler"

    .line 50
    .line 51
    invoke-static {p1, p2, p4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object p3

    .line 59
    :cond_1
    iget-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter p4

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getAllChipInfo()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-nez p0, :cond_2

    .line 67
    .line 68
    const-string p0, "SemHalDeviceManager"

    .line 69
    .line 70
    const-string p1, "createIface: no chip info found"

    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    monitor-exit p4

    .line 76
    return-object p3

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    array-length p5, p0

    .line 80
    if-lez p5, :cond_6

    .line 81
    .line 82
    const/4 p5, 0x0

    .line 83
    aget-object p6, p0, p5

    .line 84
    .line 85
    iget-object p6, p6, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 86
    .line 87
    aget-object p6, p6, p2

    .line 88
    .line 89
    if-eqz p6, :cond_6

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result p6

    .line 97
    if-nez p6, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    aget-object p0, p0, p5

    .line 101
    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 103
    .line 104
    aget-object p0, p0, p2

    .line 105
    .line 106
    array-length p2, p0

    .line 107
    :goto_0
    if-ge p5, p2, :cond_6

    .line 108
    .line 109
    aget-object p6, p0, p5

    .line 110
    .line 111
    iget-object p7, p6, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p7

    .line 117
    if-eqz p7, :cond_4

    .line 118
    .line 119
    iget-object p0, p6, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;

    .line 120
    .line 121
    monitor-exit p4

    .line 122
    return-object p0

    .line 123
    :cond_4
    add-int/lit8 p5, p5, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    :goto_1
    aget-object p0, p0, p5

    .line 127
    .line 128
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 129
    .line 130
    aget-object p0, p0, p2

    .line 131
    .line 132
    array-length p1, p0

    .line 133
    if-lez p1, :cond_6

    .line 134
    .line 135
    aget-object p0, p0, p5

    .line 136
    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;

    .line 138
    .line 139
    monitor-exit p4

    .line 140
    return-object p0

    .line 141
    :cond_6
    monitor-exit p4

    .line 142
    return-object p3

    .line 143
    :goto_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p0
.end method

.method private dispatchAllDestroyedListeners()V
    .locals 6

    .line 1
    const-string v0, "SemHalDeviceManager"

    .line 2
    .line 3
    const-string v1, "dispatchAllDestroyedListeners"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;

    .line 37
    .line 38
    iget-object v4, v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListenerProxy;

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :cond_0
    iget-object v3, v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 71
    .line 72
    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    const/4 v1, 0x0

    .line 79
    move v2, v1

    .line 80
    :goto_2
    if-ge v2, p0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    check-cast v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListenerProxy;

    .line 89
    .line 90
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->trigger(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    return-void

    .line 95
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0
.end method

.method private expandCreateTypeCombo(Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;)[[I
    .locals 12

    .line 1
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x1

    .line 8
    move v1, v0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 21
    .line 22
    :goto_0
    iget v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 23
    .line 24
    if-ge v3, v4, :cond_0

    .line 25
    .line 26
    iget-object v4, v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    mul-int/2addr v1, v4

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->CREATE_TYPES_BY_PRIORITY:[I

    .line 37
    .line 38
    array-length p0, p0

    .line 39
    const/4 v2, 0x2

    .line 40
    new-array v2, v2, [I

    .line 41
    .line 42
    aput p0, v2, v0

    .line 43
    .line 44
    aput v1, v2, v3

    .line 45
    .line 46
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, [[I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    move v2, v1

    .line 61
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 72
    .line 73
    move v5, v3

    .line 74
    :goto_1
    iget v6, v4, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 75
    .line 76
    if-ge v5, v6, :cond_2

    .line 77
    .line 78
    iget-object v6, v4, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    div-int/2addr v2, v6

    .line 85
    move v6, v3

    .line 86
    :goto_2
    if-ge v6, v1, :cond_3

    .line 87
    .line 88
    aget-object v7, p0, v6

    .line 89
    .line 90
    sget-object v8, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->CONCURRENCY_TYPE_TO_CREATE_TYPE_MAP:Landroid/util/SparseIntArray;

    .line 91
    .line 92
    iget-object v9, v4, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/List;

    .line 93
    .line 94
    div-int v10, v6, v2

    .line 95
    .line 96
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    rem-int/2addr v10, v11

    .line 101
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    aget v9, v7, v8

    .line 116
    .line 117
    add-int/2addr v9, v0

    .line 118
    aput v9, v7, v8

    .line 119
    .line 120
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    return-object p0
.end method

.method private getAllChipInfo()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "getChipIds="

    .line 4
    .line 5
    const-string v2, "SemHalDeviceManager"

    .line 6
    .line 7
    const-string v3, "getAllChipInfo"

    .line 8
    .line 9
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isWifiStarted()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string v0, "SemHalDeviceManager"

    .line 23
    .line 24
    const-string v1, "isWifiStarted=false, return null"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v2

    .line 30
    return-object v4

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChipIds()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    monitor-exit v2

    .line 43
    return-object v4

    .line 44
    :cond_1
    const-string v5, "SemHalDeviceManager"

    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    const-string v0, "SemHalDeviceManager"

    .line 76
    .line 77
    const-string v1, "Should have at least 1 chip!"

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    monitor-exit v2

    .line 83
    return-object v4

    .line 84
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getStaticChipInfos()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    array-length v6, v5

    .line 94
    const/4 v8, 0x0

    .line 95
    :goto_0
    if-ge v8, v6, :cond_3

    .line 96
    .line 97
    aget-object v9, v5, v8

    .line 98
    .line 99
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->getChipId()I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    invoke-virtual {v1, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v8, v8, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    new-array v5, v5, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const/4 v6, 0x0

    .line 120
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_13

    .line 125
    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Ljava/lang/Integer;

    .line 131
    .line 132
    iget-object v9, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    invoke-virtual {v9, v10}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    if-nez v9, :cond_4

    .line 143
    .line 144
    monitor-exit v2

    .line 145
    return-object v4

    .line 146
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    check-cast v10, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 155
    .line 156
    if-nez v10, :cond_5

    .line 157
    .line 158
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getAvailableModes()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    if-nez v11, :cond_6

    .line 163
    .line 164
    monitor-exit v2

    .line 165
    return-object v4

    .line 166
    :cond_5
    move-object v11, v4

    .line 167
    :cond_6
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getMode()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->getStatusCode()I

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    if-eqz v13, :cond_7

    .line 176
    .line 177
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->getStatusCode()I

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    const/4 v14, 0x5

    .line 182
    if-eq v13, v14, :cond_7

    .line 183
    .line 184
    monitor-exit v2

    .line 185
    return-object v4

    .line 186
    :cond_7
    invoke-virtual {v0, v9}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getChipCapabilities(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v13

    .line 190
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getStaIfaceNames()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    if-nez v15, :cond_8

    .line 195
    .line 196
    monitor-exit v2

    .line 197
    return-object v4

    .line 198
    :cond_8
    move-object/from16 v16, v4

    .line 199
    .line 200
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 205
    .line 206
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    const/16 v17, 0x0

    .line 211
    .line 212
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v18

    .line 216
    if-eqz v18, :cond_a

    .line 217
    .line 218
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v18

    .line 222
    move-object/from16 v7, v18

    .line 223
    .line 224
    check-cast v7, Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v9, v7}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-nez v0, :cond_9

    .line 231
    .line 232
    monitor-exit v2

    .line 233
    return-object v16

    .line 234
    :cond_9
    move-object/from16 v18, v1

    .line 235
    .line 236
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 237
    .line 238
    move-object/from16 v20, v3

    .line 239
    .line 240
    const/4 v3, 0x0

    .line 241
    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;-><init>(I)V

    .line 242
    .line 243
    .line 244
    iput-object v7, v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 245
    .line 246
    iput-object v0, v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;

    .line 247
    .line 248
    add-int/lit8 v0, v17, 0x1

    .line 249
    .line 250
    aput-object v1, v4, v17

    .line 251
    .line 252
    move/from16 v17, v0

    .line 253
    .line 254
    move-object/from16 v1, v18

    .line 255
    .line 256
    move-object/from16 v3, v20

    .line 257
    .line 258
    move-object/from16 v0, p0

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_a
    move-object/from16 v18, v1

    .line 262
    .line 263
    move-object/from16 v20, v3

    .line 264
    .line 265
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getP2pIfaceNames()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-nez v0, :cond_b

    .line 270
    .line 271
    monitor-exit v2

    .line 272
    return-object v16

    .line 273
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    new-array v1, v1, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 278
    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const/4 v3, 0x0

    .line 284
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    if-eqz v7, :cond_d

    .line 289
    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    check-cast v7, Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v9, v7}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getP2pIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 297
    .line 298
    .line 299
    move-result-object v15

    .line 300
    if-nez v15, :cond_c

    .line 301
    .line 302
    monitor-exit v2

    .line 303
    return-object v16

    .line 304
    :cond_c
    move-object/from16 v17, v0

    .line 305
    .line 306
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 307
    .line 308
    move-object/from16 v21, v1

    .line 309
    .line 310
    const/4 v1, 0x0

    .line 311
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;-><init>(I)V

    .line 312
    .line 313
    .line 314
    iput-object v7, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 315
    .line 316
    iput-object v15, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;

    .line 317
    .line 318
    add-int/lit8 v1, v3, 0x1

    .line 319
    .line 320
    aput-object v0, v21, v3

    .line 321
    .line 322
    move v3, v1

    .line 323
    move-object/from16 v0, v17

    .line 324
    .line 325
    move-object/from16 v1, v21

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_d
    move-object/from16 v21, v1

    .line 329
    .line 330
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getNanIfaceNames()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-nez v0, :cond_e

    .line 335
    .line 336
    monitor-exit v2

    .line 337
    return-object v16

    .line 338
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    new-array v1, v1, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const/4 v3, 0x0

    .line 349
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    if-eqz v7, :cond_10

    .line 354
    .line 355
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    check-cast v7, Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v9, v7}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getNanIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 362
    .line 363
    .line 364
    move-result-object v15

    .line 365
    if-nez v15, :cond_f

    .line 366
    .line 367
    monitor-exit v2

    .line 368
    return-object v16

    .line 369
    :cond_f
    move-object/from16 v17, v0

    .line 370
    .line 371
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 372
    .line 373
    move-object/from16 v22, v1

    .line 374
    .line 375
    const/4 v1, 0x0

    .line 376
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;-><init>(I)V

    .line 377
    .line 378
    .line 379
    iput-object v7, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 380
    .line 381
    iput-object v15, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;

    .line 382
    .line 383
    add-int/lit8 v1, v3, 0x1

    .line 384
    .line 385
    aput-object v0, v22, v3

    .line 386
    .line 387
    move v3, v1

    .line 388
    move-object/from16 v0, v17

    .line 389
    .line 390
    move-object/from16 v1, v22

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_10
    move-object/from16 v22, v1

    .line 394
    .line 395
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    .line 396
    .line 397
    const/4 v1, 0x0

    .line 398
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;-><init>(I)V

    .line 399
    .line 400
    .line 401
    add-int/lit8 v3, v6, 0x1

    .line 402
    .line 403
    aput-object v0, v5, v6

    .line 404
    .line 405
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chipId:I

    .line 410
    .line 411
    if-eqz v10, :cond_11

    .line 412
    .line 413
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->getAvailableModes()Ljava/util/ArrayList;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iput-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 423
    .line 424
    .line 425
    iput-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    .line 426
    .line 427
    :goto_5
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->getStatusCode()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-nez v1, :cond_12

    .line 432
    .line 433
    const/4 v1, 0x1

    .line 434
    goto :goto_6

    .line 435
    :cond_12
    const/4 v1, 0x0

    .line 436
    :goto_6
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    .line 437
    .line 438
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->getValue()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    check-cast v1, Ljava/lang/Integer;

    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    iput v1, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeId:I

    .line 449
    .line 450
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chipCapabilities:J

    .line 451
    .line 452
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 453
    .line 454
    const/16 v19, 0x0

    .line 455
    .line 456
    aput-object v4, v0, v19

    .line 457
    .line 458
    const/4 v1, 0x3

    .line 459
    aput-object v21, v0, v1

    .line 460
    .line 461
    const/4 v1, 0x4

    .line 462
    aput-object v22, v0, v1

    .line 463
    .line 464
    move-object/from16 v0, p0

    .line 465
    .line 466
    move v6, v3

    .line 467
    move-object/from16 v4, v16

    .line 468
    .line 469
    move-object/from16 v1, v18

    .line 470
    .line 471
    move-object/from16 v3, v20

    .line 472
    .line 473
    goto/16 :goto_1

    .line 474
    .line 475
    :cond_13
    monitor-exit v2

    .line 476
    return-object v5

    .line 477
    :goto_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    throw v0
.end method

.method private getInterfaceCacheEntry(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;
    .locals 4

    .line 1
    const-string v0, "getInterfaceCacheEntry: no entry for iface(name)="

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getName(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getType(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v2, "SemHalDeviceManager"

    .line 12
    .line 13
    const-string v3, "getInterfaceCacheEntry: iface(name)="

    .line 14
    .line 15
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;

    .line 40
    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    const-string p0, "SemHalDeviceManager"

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    monitor-exit v2

    .line 62
    return-object p0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    monitor-exit v2

    .line 66
    return-object p0

    .line 67
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method private getStaticChipInfos()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mCachedStaticChipInfos:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->loadStaticChipInfoFromStore()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mCachedStaticChipInfos:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mCachedStaticChipInfos:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 12
    .line 13
    return-object p0
.end method

.method protected static getType(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    instance-of p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    return p0

    .line 19
    :cond_2
    const/4 p0, -0x1

    .line 20
    return p0
.end method

.method private initializeInternal()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->initialize()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private isWifiStarted()Z
    .locals 2

    .line 1
    const-string v0, "SemHalDeviceManager"

    .line 2
    .line 3
    const-string v1, "isWifiStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->isStarted()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method private loadStaticChipInfoFromStore()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiStaticChipInfo:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiStaticChipInfo:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    new-array v1, p0, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ge v0, p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;->jsonToStaticChipInfo(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    aput-object p0, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-object v1

    .line 48
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Failed to load static chip info from store: "

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v0, "SemHalDeviceManager"

    .line 63
    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-object v1
.end method

.method private managerStatusListenerDispatch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->trigger(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method private registerWifiHalEventCallback()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiEventCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->registerEventCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private startWifi()Z
    .locals 7

    .line 1
    const-string v0, "SemHalDeviceManager"

    .line 2
    .line 3
    const-string v1, "startWifi"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initializeInternal()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    const/4 v3, 0x3

    .line 17
    if-gt v2, v3, :cond_4

    .line 18
    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->start()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-string v4, "SemHalDeviceManager"

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v6, "status="

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->managerStatusListenerDispatch()V

    .line 50
    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    const-string v1, "SemHalDeviceManager"

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "start IWifi succeeded after trying "

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " times"

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getAllChipInfo()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-nez p0, :cond_1

    .line 89
    .line 90
    const-string p0, "SemHalDeviceManager"

    .line 91
    .line 92
    const-string v1, "Started wifi but could not get current chip info."

    .line 93
    .line 94
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_1
    monitor-exit v0

    .line 98
    const/4 p0, 0x1

    .line 99
    return p0

    .line 100
    :cond_2
    const/4 v4, 0x5

    .line 101
    if-ne v3, v4, :cond_3

    .line 102
    .line 103
    const-string v3, "SemHalDeviceManager"

    .line 104
    .line 105
    const-string v4, "Cannot start wifi because unavailable. Retrying..."

    .line 106
    .line 107
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    const-wide/16 v3, 0x14

    .line 111
    .line 112
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    :try_start_2
    const-string p0, "SemHalDeviceManager"

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v4, "Cannot start IWifi. Status: "

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    monitor-exit v0

    .line 141
    return v1

    .line 142
    :cond_4
    const-string p0, "SemHalDeviceManager"

    .line 143
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v4, "Cannot start IWifi after trying "

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, " times"

    .line 158
    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    monitor-exit v0

    .line 170
    return v1

    .line 171
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    throw p0
.end method

.method private validateInterfaceCacheAndRetrieveRequestorWs([Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "SemHalDeviceManager"

    .line 6
    .line 7
    const-string v3, "validateInterfaceCache"

    .line 8
    .line 9
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_9

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;

    .line 36
    .line 37
    array-length v5, v1

    .line 38
    const/4 v6, 0x0

    .line 39
    move v7, v6

    .line 40
    :goto_0
    if-ge v7, v5, :cond_2

    .line 41
    .line 42
    aget-object v8, v1, v7

    .line 43
    .line 44
    iget v9, v8, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chipId:I

    .line 45
    .line 46
    iget v10, v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;->chipId:I

    .line 47
    .line 48
    if-ne v9, v10, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_2
    const/4 v8, 0x0

    .line 58
    :goto_1
    if-nez v8, :cond_3

    .line 59
    .line 60
    const-string v0, "SemHalDeviceManager"

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "validateInterfaceCache: no chip found for "

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    monitor-exit v2

    .line 83
    return v6

    .line 84
    :cond_3
    sget-object v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->CREATE_TYPES_BY_PRIORITY:[I

    .line 85
    .line 86
    array-length v7, v5

    .line 87
    move v9, v6

    .line 88
    move v10, v9

    .line 89
    :goto_2
    if-ge v9, v7, :cond_8

    .line 90
    .line 91
    aget v11, v5, v9

    .line 92
    .line 93
    sget-object v12, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->HAL_IFACE_MAP:Landroid/util/SparseIntArray;

    .line 94
    .line 95
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    iget v13, v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;->type:I

    .line 100
    .line 101
    if-eq v12, v13, :cond_5

    .line 102
    .line 103
    :cond_4
    const/16 p0, 0x1

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    iget-object v12, v8, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 107
    .line 108
    aget-object v11, v12, v11

    .line 109
    .line 110
    if-nez v11, :cond_6

    .line 111
    .line 112
    const-string v0, "SemHalDeviceManager"

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v4, "validateInterfaceCache: invalid type on entry "

    .line 120
    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    monitor-exit v2

    .line 135
    return v6

    .line 136
    :cond_6
    array-length v12, v11

    .line 137
    move v13, v6

    .line 138
    :goto_3
    if-ge v13, v12, :cond_4

    .line 139
    .line 140
    aget-object v14, v11, v13

    .line 141
    .line 142
    iget-object v15, v14, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 143
    .line 144
    const/16 p0, 0x1

    .line 145
    .line 146
    iget-object v4, v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_7

    .line 153
    .line 154
    iget-object v4, v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceCacheEntry;->requestorWsHelper:Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;

    .line 155
    .line 156
    iput-object v4, v14, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->requestorWsHelper:Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;

    .line 157
    .line 158
    move/from16 v10, p0

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_8
    if-nez v10, :cond_0

    .line 168
    .line 169
    const-string v0, "SemHalDeviceManager"

    .line 170
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v4, "validateInterfaceCache: no interface found for "

    .line 177
    .line 178
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    monitor-exit v2

    .line 192
    return v6

    .line 193
    :cond_9
    const/16 p0, 0x1

    .line 194
    .line 195
    monitor-exit v2

    .line 196
    return p0

    .line 197
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public varargs checkInterfaceConcurrency([Ljava/lang/Integer;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getStaticChipInfos()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v4

    .line 16
    :goto_0
    if-ge v5, v3, :cond_0

    .line 17
    .line 18
    aget-object v6, v2, v5

    .line 19
    .line 20
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->getChipId()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChipIds()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return v4

    .line 43
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_8

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/Integer;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-nez v5, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 81
    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getAvailableModes()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->getAvailableModes()Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :goto_2
    if-nez v3, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;

    .line 111
    .line 112
    iget-object v5, v5, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;->availableCombinations:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_6

    .line 123
    .line 124
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;

    .line 129
    .line 130
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->expandCreateTypeCombo(Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;)[[I

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-direct {p0, v6, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->checkIsInterfaceIncluded([[I[Ljava/lang/Integer;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_7

    .line 139
    .line 140
    const-string p0, "SemHalDeviceManager"

    .line 141
    .line 142
    const-string p1, "Combination is matched"

    .line 143
    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const/4 p0, 0x1

    .line 148
    monitor-exit v0

    .line 149
    return p0

    .line 150
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const-string p0, "SemHalDeviceManager"

    .line 152
    .line 153
    const-string p1, "Combination is NOT matched"

    .line 154
    .line 155
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    return v4

    .line 159
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    throw p0
.end method

.method public createNanIface(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 8

    .line 1
    const/4 v2, 0x4

    .line 2
    const-wide/16 v3, 0x0

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v5, p2

    .line 7
    move-object v6, p3

    .line 8
    move-object v7, p4

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createIface(Ljava/lang/String;IJLcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 14
    .line 15
    return-object p0
.end method

.method public createP2pIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 8

    .line 1
    const/4 v2, 0x3

    .line 2
    const-wide/16 v3, 0x0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v5, p1

    .line 7
    move-object v6, p2

    .line 8
    move-object v7, p3

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createIface(Ljava/lang/String;IJLcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 14
    .line 15
    return-object p0
.end method

.method public createStaIface(Ljava/lang/String;JLcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createIface(Ljava/lang/String;IJLcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    return-object p0
.end method

.method public createStaIface(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 7

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createStaIface(Ljava/lang/String;JLcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Landroid/os/WorkSource;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    move-result-object p0

    return-object p0
.end method

.method public enableDebugErrorAlerts(Z)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->enableDebugErrorAlerts(Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public enableStaChannelForPeerNetwork(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->enableStaChannelForPeerNetwork(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public enableVerboseLogging(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    .line 3
    .line 4
    return-void
.end method

.method public flushRingBufferToFile()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->flushRingBufferToFile()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public forceDumpToDebugRingBuffer(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public getAvailableModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getAvailableModes()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getChipCapabilities(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getCapabilitiesBeforeIfacesExist()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->getStatusCode()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->getStatusCode()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const/16 p1, 0xa

    .line 32
    .line 33
    if-eq p0, p1, :cond_2

    .line 34
    .line 35
    const-wide/16 p0, -0x1

    .line 36
    .line 37
    return-wide p0

    .line 38
    :cond_2
    return-wide v0
.end method

.method public getChipIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChipIds()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChipsetVendorName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public getDebugHostWakeReasonStats()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getDebugHostWakeReasonStats()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public getDebugRingBuffersStatus()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getDebugRingBuffersStatus()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public getFeatureSet()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getFeatureSet()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getId()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getInterfaceVersion()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getMode()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    return v0
.end method

.method public getName(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "<null>"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal$WifiInterface;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public getStaIfaceNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getStaIfaceNames()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public getSupportedRadioCombinations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getSupportedRadioCombinations()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getTwtParameters()Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public getUsableChannels(III)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getUsableChannels(III)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public getVendorConnFileInfo(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "SemHalDeviceManager"

    .line 11
    .line 12
    const-string p1, "getVendorConnFileInfo: called but mSehWifi is null MRC"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->readFile(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public getVendorProperty(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "SemHalDeviceManager"

    .line 11
    .line 12
    const-string p1, "getVendorProperty: called but mSehWifi is null"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getProperty(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public getWifiChipCapabilities()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->getWifiChipCapabilities()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method protected getWifiHalMockable()Lcom/samsung/android/server/wifi/halclient/SemWifiHal;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public initialize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initializeInternal()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->registerWifiHalEventCallback()Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isReady()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->isInitializationComplete()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isStarted()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isWifiStarted()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public isSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->isSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public registerEventCallbackForIWifi()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiEventCallback:Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->registerEventCallback(Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public registerStatusListener(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    .line 5
    .line 6
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;

    .line 7
    .line 8
    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "SemHalDeviceManager"

    .line 18
    .line 19
    const-string p1, "registerStatusListener: duplicate registration ignored"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public removeVendorConnFile(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "SemHalDeviceManager"

    .line 11
    .line 12
    const-string p1, "removeVendorConnFile: called but mSehWifi is null"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->removeFile(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public removeVendorLogFiles()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "SemHalDeviceManager"

    .line 11
    .line 12
    const-string v1, "removeVendorLogFiles: called but mSehWifi is null"

    .line 13
    .line 14
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->removeLogFiles()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public requestChipDebugInfo()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->requestChipDebugInfo()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public requestDriverDebugDump()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->requestDriverDebugDump()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public requestFirmwareDebugDump()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->requestFirmwareDebugDump()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public resetTxPowerScenario()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->resetTxPowerScenario()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public selectTxPowerScenario(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->selectTxPowerScenario(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public setAfcChannelAllowance()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->setAfcChannelAllowance()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public setCountryCode([B)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->setCountryCode([B)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public setLatencyMode(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->setLatencyMode(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public setMloMode(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->setMloMode(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public setMultiStaPrimaryConnection(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->setMultiStaPrimaryConnection(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public setMultiStaUseCase(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->setMultiStaUseCase(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public setVendorProperty(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "SemHalDeviceManager"

    .line 11
    .line 12
    const-string p1, "setVendorProperty: called but mSehWifi is null"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->setProperty(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    monitor-exit v0

    .line 33
    return p0

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public start()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->startWifi()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public startLoggingToDebugRingBuffer(Ljava/lang/String;III)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public stopLoggingToDebugRingBuffer()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->stopLoggingToDebugRingBuffer()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public updateVendorConnFile(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "SemHalDeviceManager"

    .line 11
    .line 12
    const-string p1, "updateVendorConnFile: called but mSehWifi is null"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->updateFile(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public writeVendorConnFile(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "SemHalDeviceManager"

    .line 11
    .line 12
    const-string p1, "writeVendorConnFile: called but mSehWifi is null"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifiHal:Lcom/samsung/android/server/wifi/halclient/SemWifiHal;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiHal;->writeFile(ILjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
