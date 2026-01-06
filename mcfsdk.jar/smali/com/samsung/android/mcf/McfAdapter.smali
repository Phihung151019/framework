.class public Lcom/samsung/android/mcf/McfAdapter;
.super Ljava/lang/Object;
.source "McfAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    }
.end annotation


# static fields
.field public static final HANDOVER_RESPONSE_ACCEPT:I = 0x1

.field public static final HANDOVER_RESPONSE_REJECT:I = 0x0

.field public static final INTERNAL_CMD_BLE_START_ADVERTISE:I = 0x190

.field public static final INTERNAL_CMD_BLE_START_SCAN:I = 0x192

.field public static final INTERNAL_CMD_BLE_STOP_ADVERTISE:I = 0x191

.field public static final INTERNAL_CMD_BLE_STOP_SCAN:I = 0x193

.field public static final INTERNAL_CMD_ID_CHECK_AOA_SUPPORT:I = 0xa

.field public static final INTERNAL_CMD_ID_CHECK_UWB_RESTRICT:I = 0x9

.field public static final INTERNAL_CMD_ID_CST_CLOSE_MSG_SERVER:I = 0xda

.field public static final INTERNAL_CMD_ID_CST_CONFIRM_UWB_RANGING:I = 0xd7

.field public static final INTERNAL_CMD_ID_CST_ENABLE_UWB_ASYNC:I = 0xdc

.field public static final INTERNAL_CMD_ID_CST_OPEN_MSG_SERVER:I = 0xd9

.field public static final INTERNAL_CMD_ID_CST_REGISTER_PILOT_SCAN:I = 0xcb

.field public static final INTERNAL_CMD_ID_CST_SEND_HANDOVER_RESPONSE:I = 0xcd

.field public static final INTERNAL_CMD_ID_CST_SEND_HANDOVER_RESPONSE_WITHOUT_CONTENTS:I = 0xd0

.field public static final INTERNAL_CMD_ID_CST_SEND_MSG_RESPONSE:I = 0xdb

.field public static final INTERNAL_CMD_ID_CST_SET_ACCESS_PERMISSION:I = 0xcf

.field public static final INTERNAL_CMD_ID_CST_SET_ANTENNA_PAIR_SELECTION:I = 0xd8

.field public static final INTERNAL_CMD_ID_CST_SET_THRESHOLD:I = 0xd1

.field public static final INTERNAL_CMD_ID_CST_START_ADVERTISE:I = 0xc8

.field public static final INTERNAL_CMD_ID_CST_START_SCAN:I = 0xd3

.field public static final INTERNAL_CMD_ID_CST_START_UWB_RANGING:I = 0xd5

.field public static final INTERNAL_CMD_ID_CST_STOP_ADVERTISE:I = 0xc9

.field public static final INTERNAL_CMD_ID_CST_STOP_HANDOVER:I = 0xce

.field public static final INTERNAL_CMD_ID_CST_STOP_SCAN:I = 0xd4

.field public static final INTERNAL_CMD_ID_CST_STOP_UWB_RANGING:I = 0xd6

.field public static final INTERNAL_CMD_ID_CST_UNREGISTER_PILOT_SCAN:I = 0xcc

.field public static final INTERNAL_CMD_ID_CST_UPDATE_PILOT_SCAN_CONTENTS:I = 0xd2

.field public static final INTERNAL_CMD_ID_ENABLE_UWB:I = 0x8

.field public static final INTERNAL_CMD_ID_IS_NETWORK_ENABLED:I = 0x5

.field public static final INTERNAL_CMD_ID_LAST:I = 0x1f4

.field public static final INTERNAL_CMD_ID_REGISTER_BLEADAPTER_CALLBACK:I = 0x6

.field public static final INTERNAL_CMD_ID_REGISTER_CASTER_CALLBACK:I = 0x1

.field public static final INTERNAL_CMD_ID_REGISTER_SUBSCRIBE_CALLBACK:I = 0x3

.field public static final INTERNAL_CMD_ID_SUB_CLOSE_MSG_CLIENT:I = 0x7e

.field public static final INTERNAL_CMD_ID_SUB_ENABLE_UWB_ASYNC:I = 0x80

.field public static final INTERNAL_CMD_ID_SUB_FLUSH_BACKGROUND_DISCOVERY:I = 0x6e

.field public static final INTERNAL_CMD_ID_SUB_GET_MSG_RSSI:I = 0x7f

.field public static final INTERNAL_CMD_ID_SUB_KEEP_DISCOVERED_DEVICE:I = 0x70

.field public static final INTERNAL_CMD_ID_SUB_OPEN_MSG_CLIENT:I = 0x7d

.field public static final INTERNAL_CMD_ID_SUB_RANGING_UWB_PARAM:I = 0x7b

.field public static final INTERNAL_CMD_ID_SUB_SEND_MSG:I = 0x7c

.field public static final INTERNAL_CMD_ID_SUB_SET_ANTENNA_PAIR_SELECTION:I = 0x7a

.field public static final INTERNAL_CMD_ID_SUB_START_ADVERTISE:I = 0x6c

.field public static final INTERNAL_CMD_ID_SUB_START_BACKGROUND_DISCOVERY:I = 0x64

.field public static final INTERNAL_CMD_ID_SUB_START_DISCOVERY:I = 0x66

.field public static final INTERNAL_CMD_ID_SUB_START_HANDOVER:I = 0x6a

.field public static final INTERNAL_CMD_ID_SUB_START_PILOT_ADVERTISE:I = 0x6c

.field public static final INTERNAL_CMD_ID_SUB_START_UWB_RANGING:I = 0x78

.field public static final INTERNAL_CMD_ID_SUB_STOP_ADVERTISE:I = 0x6d

.field public static final INTERNAL_CMD_ID_SUB_STOP_BACKGROUND_DISCOVERY:I = 0x65

.field public static final INTERNAL_CMD_ID_SUB_STOP_DISCOVERY:I = 0x67

.field public static final INTERNAL_CMD_ID_SUB_STOP_DISCOVERY_WITH_FLUSH:I = 0x68

.field public static final INTERNAL_CMD_ID_SUB_STOP_HANDOVER:I = 0x6b

.field public static final INTERNAL_CMD_ID_SUB_STOP_PILOT_ADVERTISE:I = 0x6d

.field public static final INTERNAL_CMD_ID_SUB_STOP_UWB_RANGING:I = 0x79

.field public static final INTERNAL_CMD_ID_SUB_SWITCH_HANDOVER:I = 0x6f

.field public static final INTERNAL_CMD_ID_UNREGISTER_BLEADAPTER_CALLBACK:I = 0x7

.field public static final INTERNAL_CMD_ID_UNREGISTER_CASTER_CALLBACK:I = 0x2

.field public static final INTERNAL_CMD_ID_UNREGISTER_SUBSCRIBE_CALLBACK:I = 0x4

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "McfAdapter"


# instance fields
.field private final mContext:Lcom/samsung/android/mcf/McfContext;

.field private final mEventListener:Lcom/samsung/android/mcf/McfContext$EventListener;

.field private final mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

.field private final mMcfBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMcfCasters:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMcfSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/mcf/McfContext;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "context"    # Lcom/samsung/android/mcf/McfContext;
    .param p2, "listener"    # Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Lcom/samsung/android/mcf/McfAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfAdapter$1;-><init>(Lcom/samsung/android/mcf/McfAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mEventListener:Lcom/samsung/android/mcf/McfContext$EventListener;

    .line 393
    const-string v0, "McfAdapter"

    const-string v1, "-"

    invoke-static {v0, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iput-object p1, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    .line 395
    iput-object p2, p0, Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 396
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 397
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 398
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 399
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mcf/McfAdapter;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    return-object v0
.end method

.method private bindService()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfAdapter;->mEventListener:Lcom/samsung/android/mcf/McfContext$EventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/McfContext;->bindService(Lcom/samsung/android/mcf/McfContext$EventListener;)Z

    move-result v0

    return v0
.end method

.method public static bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 85
    invoke-static {}, Lcom/samsung/android/mcf/common/Feature;->isMcfFeatureEnabled()Z

    move-result v0

    const-string v1, "bindService "

    const/4 v2, 0x0

    const-string v3, "McfAdapter"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/mcf/common/Feature;->isBluetoothSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->getMcfVersionCode(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/32 v6, 0x5f767e0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 92
    const-string v0, " **FAIL ** need new MCF server..."

    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v2

    .line 96
    :cond_1
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_2

    .line 97
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const-string v0, "bindService"

    const-string v1, "You must request Manifest.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return v2

    .line 103
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/DLog;->setAppName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/McfContext;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mcf/McfContext;

    move-result-object v0

    .line 105
    .local v0, "mcfContext":Lcom/samsung/android/mcf/McfContext;
    new-instance v1, Lcom/samsung/android/mcf/McfAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/samsung/android/mcf/McfAdapter;-><init>(Lcom/samsung/android/mcf/McfContext;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;Landroid/os/UserHandle;)V

    .line 106
    .local v1, "sAdapter":Lcom/samsung/android/mcf/McfAdapter;
    invoke-direct {v1}, Lcom/samsung/android/mcf/McfAdapter;->bindService()Z

    move-result v2

    return v2

    .line 86
    .end local v0    # "mcfContext":Lcom/samsung/android/mcf/McfContext;
    .end local v1    # "sAdapter":Lcom/samsung/android/mcf/McfAdapter;
    :cond_3
    :goto_0
    const-string v0, "this model does not support MCF. can\'t bind service"

    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v2
.end method

.method public static getSDKVersionCode()I
    .locals 1

    .line 339
    const v0, 0x13f192

    return v0
.end method

.method public static getServiceVersionCode(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 350
    const-string v0, "McfAdapter"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 352
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-wide/16 v2, -0x1

    .line 353
    .local v2, "versionCode":J
    :try_start_0
    const-string v4, "com.samsung.android.mcfserver"

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 354
    .local v4, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 355
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    .line 356
    .end local v2    # "versionCode":J
    .local v5, "versionCode":J
    const-string v2, "getServiceVersionCode "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    return-wide v5

    .line 361
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "versionCode":J
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getServiceVersionCode"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static hasUWB(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->hasUWB(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/samsung/android/mcf/common/Feature;->isMcfFeatureEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public closeBleAdapter(I)V
    .locals 3
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(#0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapter"

    const-string v2, "closeBleAdapter"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/McfContext;->closeBleAdapter(I)V

    .line 201
    return-void
.end method

.method public closeCaster(I)V
    .locals 3
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(#0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapter"

    const-string v2, "closeCaster"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/McfContext;->closeCaster(I)V

    .line 330
    return-void
.end method

.method public closeSubscriber(I)V
    .locals 3
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(#0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapter"

    const-string v2, "closeSubscriber"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/McfContext;->closeSubscriber(I)V

    .line 266
    return-void
.end method

.method public getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;
    .locals 6
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/ble/BleAdapterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    const-string v1, "(#0x"

    const-string v2, "getBleAdapter"

    const-string v3, "McfAdapter"

    if-nez p2, :cond_0

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") :invalid callback"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v0

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    move-result-object v4

    .line 180
    .local v4, "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapter;
    if-nez v4, :cond_1

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") is failed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBleAdapter "

    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 186
    return-object v4
.end method

.method public getCaster(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;
    .locals 6
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/CasterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    const/4 v1, 0x0

    const-string v2, "getCaster"

    const-string v3, "McfAdapter"

    if-nez v0, :cond_0

    .line 283
    const-string v0, "null mContext"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-object v1

    .line 287
    :cond_0
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v0

    const/16 v4, 0x1e

    if-gt v0, v4, :cond_2

    .line 289
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    .line 290
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    :cond_1
    const-string v0, "Need READ_CONTACTS and ACCESS_FINE_LOCATION permission"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-object v1

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    const-string v4, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    .line 297
    const-string v4, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    .line 298
    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 305
    :cond_3
    const-string v0, "(#0x"

    if-nez p2, :cond_4

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") invalid callback"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-object v1

    .line 309
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getCaster(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;

    move-result-object v4

    .line 310
    .local v4, "caster":Lcom/samsung/android/mcf/McfCaster;
    if-nez v4, :cond_5

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") is failed"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-object v1

    .line 314
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCaster "

    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 316
    return-object v4

    .line 299
    .end local v4    # "caster":Lcom/samsung/android/mcf/McfCaster;
    :cond_6
    :goto_0
    const-string v0, "Need BLUETOOTH_ADVERTISE, BLUETOOTH_SCAN, and BLUETOOTH_CONNECT permission"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-object v1
.end method

.method getService()Lcom/samsung/android/mcf/IMcfService;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfContext;->getMcfService()Lcom/samsung/android/mcf/IMcfService;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriber(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;
    .locals 6
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/SubscribeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    const/4 v1, 0x0

    const-string v2, "getSubscriber"

    const-string v3, "McfAdapter"

    if-nez v0, :cond_0

    .line 219
    const-string v0, "null mContext"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-object v1

    .line 223
    :cond_0
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v0

    const/16 v4, 0x1e

    if-gt v0, v4, :cond_2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    .line 226
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    :cond_1
    const-string v0, "Need READ_CONTACTS and ACCESS_FINE_LOCATION permission"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-object v1

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    const-string v4, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    .line 233
    const-string v4, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    .line 234
    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/McfContext;->hasNoPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 241
    :cond_3
    const-string v0, "(#0x"

    if-nez p2, :cond_4

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") : invalid callback"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object v1

    .line 245
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getSubscriber(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;

    move-result-object v4

    .line 246
    .local v4, "subscriber":Lcom/samsung/android/mcf/McfSubscriber;
    if-nez v4, :cond_5

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") : failed"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v1

    .line 250
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSubscriber "

    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 252
    return-object v4

    .line 235
    .end local v4    # "subscriber":Lcom/samsung/android/mcf/McfSubscriber;
    :cond_6
    :goto_0
    const-string v0, "Need BLUETOOTH_ADVERTISE, BLUETOOTH_SCAN, and BLUETOOTH_CONNECT permission"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object v1
.end method

.method public unbindService()Z
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "-"

    const-string v3, "McfAdapter"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 118
    .local v1, "bleAdapter":Ljava/lang/Integer;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/mcf/McfContext;->closeBleAdapter(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_1

    .line 119
    :catch_0
    move-exception v4

    .line 120
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v1    # "bleAdapter":Ljava/lang/Integer;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 127
    .local v1, "subscriber":Ljava/lang/Integer;
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/mcf/McfContext;->closeSubscriber(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    goto :goto_3

    .line 128
    :catch_1
    move-exception v4

    .line 129
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v1    # "subscriber":Ljava/lang/Integer;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_2

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 136
    .local v1, "caster":Ljava/lang/Integer;
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/mcf/McfContext;->closeCaster(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    goto :goto_5

    .line 137
    :catch_2
    move-exception v4

    .line 138
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v1    # "caster":Ljava/lang/Integer;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_5
    goto :goto_4

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfAdapter;->mEventListener:Lcom/samsung/android/mcf/McfContext$EventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/McfContext;->unbindService(Lcom/samsung/android/mcf/McfContext$EventListener;)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method
