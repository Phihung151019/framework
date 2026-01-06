.class public Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;
    }
.end annotation


# static fields
.field public static final CMD_QUIT_STATE_MACHINE:I = 0x65

.field public static final CMD_START_STATE_MACHINE:I = 0x64

.field private static final RETRY_CHECK_TIMEOUT:I = 0x2710

.field private static final RETRY_PACKET_THRESHOULD:I = 0x14

.field private static final SOFT_AP_POWER_SAVE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemWifiApPowerSaveImpl"


# instance fields
.field private SOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

.field private SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

.field private dual_softap_interface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAlreadyInitialized:Z

.field private mContext:Landroid/content/Context;

.field private mIsEnabledSoftAp:Z

.field private mIsLcdOn:Z

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxClient:I

.field private mPowerSaveChecked:I

.field private mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

.field private mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mStartTimeOfHotspot:J

.field private mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mUSBPluggedIn:Z

.field private final mWifiApPowerSaveImplContentObserver:Landroid/database/ContentObserver;

.field private mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$J933CWK8DDQ0tv5oO7y9A487NJ4(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->lambda$initializedSemWifiApPowerSaveImpl$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$_qwirFWtQu9xmsMm8yBNab-wO3Y(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->lambda$initializedSemWifiApPowerSaveImpl$1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetSOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->SOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetSOFT_AP_SEND_MESSAGE_TIMEOUT_TAG(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdual_softap_interface(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->dual_softap_interface:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabledSoftAp(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsEnabledSoftAp:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLcdOn(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxClient(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerSaveChecked(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTimeOfHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStartTimeOfHotspot:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachineMap(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUSBPluggedIn(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mUSBPluggedIn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabledSoftAp(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsEnabledSoftAp:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPowerSaveChecked(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTimeOfHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStartTimeOfHotspot:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApState:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckMaxClient(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->checkMaxClient()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minitiatePowerSaveMode(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->initiatePowerSaveMode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    const-string v1, "SemWifiApPowerSaveImpl Soft AP Send Message Timeout"

    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "SemWifiApPowerSaveImpl Soft AP Packet check Send Message Timeout"

    .line 19
    .line 20
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->SOFT_AP_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStartTimeOfHotspot:J

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsEnabledSoftAp:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->isAlreadyInitialized:Z

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->dual_softap_interface:Ljava/util/Set;

    .line 38
    .line 39
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;

    .line 40
    .line 41
    new-instance v1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Landroid/os/Handler;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApPowerSaveImplContentObserver:Landroid/database/ContentObserver;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    return-void
.end method

.method private checkMaxClient()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmTempClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "checkMaxClient totalNoOfClients: "

    .line 41
    .line 42
    const-string v2, "mMaxClient: "

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "SemWifiApPowerSaveImpl"

    .line 58
    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    .line 63
    .line 64
    if-ne v1, v0, :cond_2

    .line 65
    .line 66
    const/16 v0, 0x8

    .line 67
    .line 68
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method private cmdToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/16 p0, 0x64

    .line 2
    .line 3
    if-eq p1, p0, :cond_1

    .line 4
    .line 5
    const/16 p0, 0x65

    .line 6
    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    const-string p0, "POWER_STATE_MACHINE_STATE_COMMANDS"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "CMD_QUIT_STATE_MACHINE"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const-string p0, "CMD_START_STATE_MACHINE"

    .line 16
    .line 17
    return-object p0
.end method

.method private initiatePowerSaveMode()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->dual_softap_interface:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isInterfaceUp(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->startStateMachine(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->stopStateMachine(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method private isPlugged(Landroid/content/Context;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "plugged"

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    if-eq p1, v2, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "iisPlugged:"

    .line 34
    .line 35
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v2, "SemWifiApPowerSaveImpl"

    .line 46
    .line 47
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v0
.end method

.method private synthetic lambda$initializedSemWifiApPowerSaveImpl$0(Z)V
    .locals 1

    .line 1
    const-string v0, "SemWifiApPowerSaveImpl"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "Lcd ON"

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 15
    .line 16
    const/4 p1, 0x5

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p1, "Lcd OFF"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 31
    .line 32
    const/4 p1, 0x6

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private synthetic lambda$initializedSemWifiApPowerSaveImpl$1(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "SemWifiApPowerSaveImpl"

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string p1, "plugged"

    .line 7
    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mUSBPluggedIn:Z

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p1, "Unplugged"

    .line 22
    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mUSBPluggedIn:Z

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private sendMessage(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsEnabledSoftAp:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "sendMessage cmd: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->cmdToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SemWifiApPowerSaveImpl"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const/16 v1, 0x64

    .line 66
    .line 67
    if-eq p1, v1, :cond_3

    .line 68
    .line 69
    const/16 v1, 0x65

    .line 70
    .line 71
    if-eq p1, v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->quitNow()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fgetmStateMachineStarted(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_1

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmStateScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmPacketScheduled(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmElnaEnable(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;Z)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$fputmStateMachineStarted(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 15
    .line 16
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "\n"

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/16 v1, 0x64

    .line 63
    .line 64
    if-le p1, v1, :cond_0

    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p1
.end method

.method public getAlreadyInitialized()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->isAlreadyInitialized:Z

    .line 2
    .line 3
    return p0
.end method

.method public getDumpLogs()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "====== SemWifiApPowerSaveImpl dump =======  \nmUSBpuggedin:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mUSBPluggedIn:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, "\nmWifiApState:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApState:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    const-string v1, "\nmPowerSaveChecked:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string v1, "\n"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public initializedSemWifiApPowerSaveImpl()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportThisSoftApFeature(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "SemWifiApPowerSaveImpl"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p0, "SEC product feature and chip does not support power save mode feature"

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-string v2, "wifi"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 35
    .line 36
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 45
    .line 46
    new-instance v3, Landroid/os/HandlerExecutor;

    .line 47
    .line 48
    new-instance v4, Landroid/os/Handler;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApCallback;

    .line 61
    .line 62
    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v3, "wifi_ap_powersave_mode_checked"

    .line 72
    .line 73
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApPowerSaveImplContentObserver:Landroid/database/ContentObserver;

    .line 78
    .line 79
    invoke-virtual {v0, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 91
    .line 92
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 101
    .line 102
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 111
    .line 112
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 133
    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const/16 v2, 0xa

    .line 141
    .line 142
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 147
    .line 148
    const/4 v4, 0x1

    .line 149
    if-ne v0, v2, :cond_1

    .line 150
    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    .line 159
    .line 160
    iput v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 161
    .line 162
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->isAlreadyInitialized:Z

    .line 163
    .line 164
    const-string p0, "initializing SoftAp Power save has been completed"

    .line 165
    .line 166
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public startStateMachine(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApMaxClientFromFramework()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "startStateMachine with "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mMaxClient:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " Max clientsIface"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "SemWifiApPowerSaveImpl"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 53
    .line 54
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mPowerSaveChecked:I

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    const-string v0, "PowerSaveMode is not enabled for Iface : "

    .line 59
    .line 60
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->isPlugged(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mUSBPluggedIn:Z

    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    const-string v1, "power"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/os/PowerManager;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mIsLcdOn:Z

    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    .line 106
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    .line 107
    .line 108
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const/16 p1, 0x64

    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 117
    .line 118
    .line 119
    :cond_2
    return-void
.end method

.method public stopAllStateMachine()V
    .locals 2

    .line 1
    const-string v0, "SemWifiApPowerSaveImpl"

    .line 2
    .line 3
    const-string v1, "stopAllStateMachine"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x65

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->sendMessage(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public stopStateMachine(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;->-$$Nest$mgetPsTimeFuntion(Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "iface interface is down , quit state machine Interface : "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "SemWifiApPowerSaveImpl"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->quitNow()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;->mStateMachineMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p0, "stopStateMachine end"

    .line 42
    .line 43
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
