.class abstract Lcom/samsung/android/mcf/AbstractClient;
.super Ljava/lang/Object;
.source "AbstractClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    }
.end annotation


# static fields
.field private static final VERSION_SUPPORT_ASYNC_UWB_ENABLE:J = 0x73b41e0L

.field private static final VERSION_SUPPORT_CHECK_AOA_SUPPORT:J = 0x73b4d98L

.field private static final VERSION_SUPPORT_CHECK_RESTRICT:J = 0x7367368L

.field private static final VERSION_SUPPORT_SYNC_UWB_ENABLE:J = 0x7367368L


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;",
            "Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppId:I

.field protected final mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;",
            "Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mMcfService:Lcom/samsung/android/mcf/IMcfService;

.field private final mStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

.field private final mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;",
            "Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "service"    # Lcom/samsung/android/mcf/IMcfService;
    .param p5, "listener"    # Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Lcom/samsung/android/mcf/AbstractClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/AbstractClient$1;-><init>(Lcom/samsung/android/mcf/AbstractClient;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    .line 69
    iput-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->mClassName:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/samsung/android/mcf/AbstractClient;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 71
    iput-object p5, p0, Lcom/samsung/android/mcf/AbstractClient;->mStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    .line 72
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->mClassName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d_%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mcf/AbstractClient;)Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mcf/AbstractClient;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    return-object v0
.end method


# virtual methods
.method public checkAoASupport()I
    .locals 7

    .line 457
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->getMcfVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    .line 458
    .local v0, "mcfVersionCode":J
    const-wide/32 v2, 0x73b4d98

    cmp-long v2, v0, v2

    const-string v3, "checkAoASupport"

    if-gez v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcfVersionCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot support it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget v2, Lcom/samsung/android/mcf/common/Feature;->NOT_SUPPORTED:I

    return v2

    .line 462
    :cond_0
    const/16 v2, 0xa

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    .line 463
    .local v2, "ret":I
    iget-object v4, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return v2
.end method

.method protected checkStateClearAllUWBRangingCallback(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 328
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 330
    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "checkStateClearAllUWBRangingCallback"

    const-string v2, "CallbackMap - cleared"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    return-void
.end method

.method public checkUwbRestrict()I
    .locals 7

    .line 445
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->getMcfVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    .line 446
    .local v0, "mcfVersionCode":J
    const-wide/32 v2, 0x7367368

    cmp-long v2, v0, v2

    const-string v3, "checkUwbRestrict"

    if-gez v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcfVersionCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot support it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget v2, Lcom/samsung/android/mcf/common/Feature;->NOT_SUPPORTED:I

    return v2

    .line 450
    :cond_0
    const/16 v2, 0x9

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    .line 451
    .local v2, "ret":I
    iget-object v4, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return v2
.end method

.method public close()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "close"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/AbstractClient$StatusListener;->onClosed(Lcom/samsung/android/mcf/AbstractClient;)V

    .line 122
    return-void
.end method

.method public abstract closeInternal()V
.end method

.method public enableUwb()I
    .locals 8

    .line 415
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->getMcfVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    .line 416
    .local v0, "mcfVersionCode":J
    const-wide/32 v2, 0x7367368

    cmp-long v2, v0, v2

    const-string v3, " cannot support it"

    const-string v4, "mcfVersionCode "

    const-string v5, "enableUwb"

    if-gez v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget v2, Lcom/samsung/android/mcf/common/Feature;->NOT_SUPPORTED:I

    return v2

    .line 419
    :cond_0
    const-wide/32 v6, 0x73b41e0

    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 420
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    .line 421
    .local v2, "ret":I
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return v2

    .line 424
    .end local v2    # "ret":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget v2, Lcom/samsung/android/mcf/common/Feature;->NOT_SUPPORTED:I

    return v2
.end method

.method public enableUwbAsync(I)Z
    .locals 9
    .param p1, "command"    # I

    .line 431
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->getMcfVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    .line 432
    .local v0, "mcfVersionCode":J
    const-wide/32 v2, 0x73b41e0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const-string v4, "enableUwbAsync"

    if-gez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcfVersionCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot support it"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return v3

    .line 436
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 437
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v5, "rangingCallback"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 438
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v5

    .line 439
    .local v5, "ret":I
    iget-object v6, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method protected getAccessPermission(I)I
    .locals 3
    .param p1, "contactOption"    # I

    .line 343
    const/16 v0, -0x3e7

    .line 344
    .local v0, "option":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 346
    iget v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    add-int v0, v1, v2

    .line 348
    :cond_0
    return v0
.end method

.method protected getAccessPermission(II)I
    .locals 3
    .param p1, "generalContactOption"    # I
    .param p2, "extendContactOption"    # I

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "option":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 354
    iget v2, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    shl-int/lit8 v0, v2, 0x10

    .line 356
    :cond_0
    if-ne p2, v1, :cond_1

    .line 357
    iget v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    or-int/2addr v0, v1

    .line 359
    :cond_1
    return v0
.end method

.method protected getBleServiceId(ZZ)I
    .locals 1
    .param p1, "general"    # Z
    .param p2, "extend"    # Z

    .line 339
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v0

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getMyId()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    return v0
.end method

.method protected getRangingCallback(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    return-object v0
.end method

.method protected getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 133
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    return-object v0
.end method

.method protected hasNoPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "hasNoPermission"

    const-string v2, "null mContext"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/common/Utils;->hasNoPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected hasUWBPermission()Z
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "hasUWBPermission"

    const-string v2, "null mContext"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hasUWBPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected invalidateService()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 105
    return-void
.end method

.method public isMyId(I)Z
    .locals 1
    .param p1, "appId"    # I

    .line 79
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkEnabled(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 125
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(IILandroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "ret":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isNetworkEnabled"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return v0
.end method

.method synthetic lambda$showDebugToast$0$com-samsung-android-mcf-AbstractClient(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected abstract open()I
.end method

.method protected putScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
    .param p2, "wrapper"    # Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method protected removeScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method protected sendMessage(IILandroid/os/Bundle;)I
    .locals 7
    .param p1, "what"    # I
    .param p2, "arg2"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 367
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const-string v1, "sendMessage"

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, "Service is invalid"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v0, -0x1

    return v0

    .line 371
    :cond_0
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/common/MessageUtil;->makeMessage(IIILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, -0x1

    .line 375
    .local v2, "ret":I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    invoke-interface {v3, v0}, Lcom/samsung/android/mcf/IMcfService;->internalCommand(Landroid/os/Message;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v3

    .line 377
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method protected sendMessage(ILandroid/os/Bundle;)I
    .locals 1
    .param p1, "what"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 363
    const/16 v0, -0x3e7

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(IILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method protected setAntennaPairSelection(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z
    .locals 5
    .param p1, "command"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p3, "antennaPairSelection"    # I
    .param p4, "bluetoothAddress"    # Ljava/lang/String;

    .line 259
    const-string v0, "setAntennaPairSelection"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    if-ltz p3, :cond_4

    if-le p3, v1, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    .line 270
    .local v1, "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    if-nez v1, :cond_2

    .line 271
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - not started"

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return v2

    .line 274
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "serviceID"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v3, "rangingCallback"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 278
    const-string v3, "rangingAntennaPairSelection"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string v3, "deviceAddr"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 265
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid antennaPairSelection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return v2

    .line 260
    :cond_5
    :goto_1
    return v2
.end method

.method protected showDebugToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 91
    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/mcf/AbstractClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/AbstractClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/AbstractClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method protected startAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
    .param p3, "callback"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    .line 186
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;
    const-string v1, "startAdvertise"

    if-eqz v0, :cond_0

    .line 187
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - already started"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v1, -0x1

    return v1

    .line 190
    :cond_0
    sget-boolean v2, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getTimeout()I

    move-result v2

    const v3, 0x36ee80

    if-gt v2, v3, :cond_1

    .line 191
    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getTimeout()I

    move-result v2

    if-nez v2, :cond_2

    .line 192
    :cond_1
    const-string v2, "Advertise-Timeout is set too long, please check it again"

    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/AbstractClient;->showDebugToast(Ljava/lang/String;)V

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    invoke-direct {v1, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V

    .line 197
    .end local v0    # "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;
    .local v1, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 200
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "advertiseCallback"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    .line 203
    .local v2, "ret":I
    if-eqz v2, :cond_3

    .line 204
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_3
    return v2
.end method

.method protected startScan(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # Lcom/samsung/android/mcf/discovery/McfScanData;
    .param p3, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    .line 150
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    const-string v1, "startScan"

    if-eqz v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - already started"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, -0x1

    return v1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    invoke-direct {v1, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    .line 156
    .end local v0    # "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    .local v1, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "deviceCallback"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    .line 162
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 163
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_1
    return v2
.end method

.method protected startUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;Z)Z
    .locals 5
    .param p1, "command"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    .param p3, "config"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
    .param p4, "needOpenUwbSession"    # Z

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->hasUWBPermission()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "startUWBRanging"

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, "Need to check permission"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return v1

    .line 232
    :cond_0
    invoke-static {v2}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    .line 238
    .local v0, "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    if-eqz v0, :cond_2

    .line 239
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - already started"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return v1

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v2, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->getBleSID()I

    move-result v3

    invoke-direct {v2, p2, v3}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)V

    .line 245
    .end local v0    # "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    .local v2, "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p3}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "rangingCallback"

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 249
    const-string v3, "needOpenUwbSession"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    .line 251
    .local v3, "ret":I
    if-eqz v3, :cond_3

    .line 252
    iget-object v4, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_3
    if-nez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 233
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    .end local v3    # "ret":I
    :cond_5
    :goto_0
    return v1
.end method

.method protected stopAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .locals 4
    .param p1, "command"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    .line 213
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;
    const-string v1, "stopAdvertise"

    if-nez v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - not start"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v1, -0x1

    return v1

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "advertiseCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    return v2
.end method

.method protected stopAllAdvertise(I)V
    .locals 3
    .param p1, "command"    # I

    .line 312
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 313
    .local v0, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 314
    .local v2, "callback":Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/mcf/AbstractClient;->stopAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 315
    .end local v2    # "callback":Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
    goto :goto_0

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 317
    return-void
.end method

.method protected stopAllScan(I)V
    .locals 3
    .param p1, "command"    # I

    .line 304
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 305
    .local v0, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 306
    .local v2, "callback":Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/mcf/AbstractClient;->stopScan(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 307
    .end local v2    # "callback":Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
    goto :goto_0

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 309
    return-void
.end method

.method protected stopAllUWBRanging(I)V
    .locals 3
    .param p1, "command"    # I

    .line 320
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 321
    .local v0, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    .line 322
    .local v2, "callback":Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/mcf/AbstractClient;->stopUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z

    .line 323
    .end local v2    # "callback":Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 325
    return-void
.end method

.method protected stopScan(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .locals 4
    .param p1, "command"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 170
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    .line 171
    .local v0, "wrapper":Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    const-string v1, "stopScan"

    if-nez v0, :cond_0

    .line 172
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - not start"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v1, -0x1

    return v1

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "deviceCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 181
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2

    return v2
.end method

.method protected stopUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .locals 5
    .param p1, "command"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    .line 285
    const-string v0, "stopUWBRanging"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    .line 290
    .local v1, "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    if-nez v1, :cond_1

    .line 291
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - not started"

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return v2

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "serviceID"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string v3, "rangingCallback"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 286
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "wrapper":Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    :cond_3
    :goto_0
    return v2
.end method

.method protected toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "extra"    # Ljava/lang/String;

    .line 100
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mClassName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s [#0x%s, %s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
