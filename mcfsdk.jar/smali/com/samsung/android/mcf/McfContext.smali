.class Lcom/samsung/android/mcf/McfContext;
.super Ljava/lang/Object;
.source "McfContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/McfContext$EventListener;
    }
.end annotation


# static fields
.field public static final EVENT_CONNECTED_SERVICE:I = 0x1

.field public static final EVENT_DISCONNECTED_SERVICE:I = 0x2

.field public static final EVENT_REMOTE_EXCEPTION:I = 0x3

.field private static final MSG_SERVICE_CONNECTED:I = 0x1

.field private static final MSG_SERVICE_CONNECTED_TO:I = 0x4

.field private static final MSG_SERVICE_DISCONNECTED:I = 0x2

.field private static final MSG_SERVICE_REMOTE_EXCEPTION:I = 0x3

.field private static final MSG_SERVICE_SHUTDOWN:I = 0x5

.field static final TAG:Ljava/lang/String; = "McfContext"

.field private static volatile sInstance:Lcom/samsung/android/mcf/McfContext;


# instance fields
.field private final mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/mcf/McfBleAdapterImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/mcf/McfCasterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

.field private final mContext:Landroid/content/Context;

.field final mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/mcf/McfContext$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field mMcfService:Lcom/samsung/android/mcf/IMcfService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field final mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/mcf/McfSubscriberImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Lcom/samsung/android/mcf/McfContext$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfContext$1;-><init>(Lcom/samsung/android/mcf/McfContext;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    .line 306
    new-instance v0, Lcom/samsung/android/mcf/McfContext$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mcf/McfContext$2;-><init>(Lcom/samsung/android/mcf/McfContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    .line 356
    new-instance v0, Lcom/samsung/android/mcf/McfContext$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfContext$3;-><init>(Lcom/samsung/android/mcf/McfContext;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 373
    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 375
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 376
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 377
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 378
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mcf/McfContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mcf/McfContext;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfContext;->shutDown()V

    return-void
.end method

.method private getBleAdapterFromSet(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapterImpl;
    .locals 3
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    .line 274
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 275
    .local v1, "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->isMine(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    return-object v1

    .line 278
    .end local v1    # "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCasterFromSet(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCasterImpl;
    .locals 3
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/CasterCallback;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 284
    .local v1, "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/mcf/McfCasterImpl;->isMine(ILcom/samsung/android/mcf/CasterCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    return-object v1

    .line 287
    .end local v1    # "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/mcf/McfContext;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/samsung/android/mcf/McfContext;->sInstance:Lcom/samsung/android/mcf/McfContext;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/samsung/android/mcf/McfContext;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/samsung/android/mcf/McfContext;->sInstance:Lcom/samsung/android/mcf/McfContext;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/samsung/android/mcf/McfContext;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/McfContext;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/mcf/McfContext;->sInstance:Lcom/samsung/android/mcf/McfContext;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/mcf/McfContext;->sInstance:Lcom/samsung/android/mcf/McfContext;

    return-object v0
.end method

.method private getSubscriberFromSet(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriberImpl;
    .locals 3
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/SubscribeCallback;

    .line 292
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 293
    .local v1, "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->isMine(ILcom/samsung/android/mcf/SubscribeCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    return-object v1

    .line 296
    .end local v1    # "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    :cond_0
    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private shutDown()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 258
    .local v1, "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    invoke-virtual {v1}, Lcom/samsung/android/mcf/McfCasterImpl;->closeInternal()V

    .line 259
    .end local v1    # "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 263
    .local v1, "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    invoke-virtual {v1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->closeInternal()V

    .line 264
    .end local v1    # "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    goto :goto_1

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 268
    .local v1, "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    invoke-virtual {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->closeInternal()V

    .line 269
    .end local v1    # "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    goto :goto_2

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 271
    return-void
.end method


# virtual methods
.method public bindService(Lcom/samsung/android/mcf/McfContext$EventListener;)Z
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/mcf/McfContext$EventListener;

    .line 155
    const/4 v0, 0x0

    const-string v1, "bindService "

    const-string v2, "McfContext"

    if-nez p1, :cond_0

    .line 156
    const-string v3, " listener is empty"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return v0

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 161
    const-string v0, " already has binder"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return v4

    .line 167
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.mcfserver.MCF"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.mcfserver"

    const-string v7, "com.samsung.android.mcfserver.McfService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Caller"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/mcf/McfContext;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v3, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    const-string v0, "-"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return v4

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 179
    const-string v4, " failed"

    invoke-static {v2, v1, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return v0
.end method

.method public closeBleAdapter(I)V
    .locals 4
    .param p1, "appid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v0, "removedBleAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/McfBleAdapterImpl;>;"
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 73
    .local v2, "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->isMyId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->closeInternal()V

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v2    # "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 80
    .restart local v2    # "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    iget-object v3, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 81
    .end local v2    # "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    goto :goto_1

    .line 82
    :cond_2
    return-void
.end method

.method public closeCaster(I)V
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v0, "removedCasters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/McfCasterImpl;>;"
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 109
    .local v2, "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/McfCasterImpl;->isMyId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfCasterImpl;->closeInternal()V

    .line 111
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 116
    .restart local v2    # "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    iget-object v3, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 117
    .end local v2    # "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    goto :goto_1

    .line 118
    :cond_2
    return-void
.end method

.method public closeSubscriber(I)V
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, "removedSubscribers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/McfSubscriberImpl;>;"
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 143
    .local v2, "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->isMyId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->closeInternal()V

    .line 145
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    :cond_0
    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 150
    .restart local v2    # "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    iget-object v3, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 151
    .end local v2    # "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    goto :goto_1

    .line 152
    :cond_2
    return-void
.end method

.method public getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;
    .locals 11
    .param p1, "appid"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/ble/BleAdapterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getBleAdapter "

    const-string v3, "McfContext"

    if-nez v0, :cond_0

    .line 50
    const-string v0, "Invalid service!"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v1

    .line 54
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getBleAdapterFromSet(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapterImpl;

    move-result-object v0

    .line 55
    .local v0, "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    const-string v4, "return instance created "

    if-eqz v0, :cond_1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0

    .line 60
    :cond_1
    new-instance v5, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v6, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    iget-object v10, p0, Lcom/samsung/android/mcf/McfContext;->mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move v7, p1

    move-object v8, p2

    .end local p1    # "appid":I
    .end local p2    # "callback":Lcom/samsung/android/mcf/ble/BleAdapterCallback;
    .local v7, "appid":I
    .local v8, "callback":Lcom/samsung/android/mcf/ble/BleAdapterCallback;
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/mcf/McfBleAdapterImpl;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/ble/BleAdapterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 61
    .end local v0    # "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    .local v5, "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    invoke-virtual {v5}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->open()I

    move-result p1

    .line 62
    .local p1, "ret":I
    if-eqz p1, :cond_2

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v1

    .line 66
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v5
.end method

.method public getCaster(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;
    .locals 10
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/CasterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getCaster "

    const-string v3, "McfContext"

    if-nez v0, :cond_0

    .line 87
    const-string v0, "Invalid service!"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v1

    .line 91
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getCasterFromSet(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCasterImpl;

    move-result-object v0

    .line 92
    .local v0, "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    if-eqz v0, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return instance created "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0

    .line 97
    :cond_1
    new-instance v4, Lcom/samsung/android/mcf/McfCasterImpl;

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move v6, p1

    move-object v7, p2

    .end local p1    # "appId":I
    .end local p2    # "callback":Lcom/samsung/android/mcf/CasterCallback;
    .local v6, "appId":I
    .local v7, "callback":Lcom/samsung/android/mcf/CasterCallback;
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mcf/McfCasterImpl;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/CasterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 98
    .end local v0    # "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    .local v4, "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    invoke-virtual {v4}, Lcom/samsung/android/mcf/McfCasterImpl;->open()I

    move-result p1

    .line 99
    .local p1, "ret":I
    if-eqz p1, :cond_2

    .line 100
    return-object v1

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v4
.end method

.method public getMcfService()Lcom/samsung/android/mcf/IMcfService;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    return-object v0
.end method

.method public getSubscriber(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;
    .locals 10
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/SubscribeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getSubscriber "

    const-string v3, "McfContext"

    if-nez v0, :cond_0

    .line 122
    const-string v0, "Invalid service!"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-object v1

    .line 126
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getSubscriberFromSet(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriberImpl;

    move-result-object v0

    .line 127
    .local v0, "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    if-eqz v0, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return instance created "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-object v0

    .line 132
    :cond_1
    new-instance v4, Lcom/samsung/android/mcf/McfSubscriberImpl;

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move v6, p1

    move-object v7, p2

    .end local p1    # "appId":I
    .end local p2    # "callback":Lcom/samsung/android/mcf/SubscribeCallback;
    .local v6, "appId":I
    .local v7, "callback":Lcom/samsung/android/mcf/SubscribeCallback;
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mcf/McfSubscriberImpl;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/SubscribeCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 133
    .end local v0    # "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    .local v4, "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    invoke-virtual {v4}, Lcom/samsung/android/mcf/McfSubscriberImpl;->open()I

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    return-object v1

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 137
    return-object v4
.end method

.method hasNoPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/common/Utils;->hasNoPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method releaseInstance()V
    .locals 3

    .line 210
    const-string v0, "releaseInstance"

    const-string v1, "-"

    const-string v2, "McfContext"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 212
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 214
    .local v2, "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfCasterImpl;->invalidateService()V

    .line 215
    .end local v2    # "caster":Lcom/samsung/android/mcf/McfCasterImpl;
    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 218
    .local v2, "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->invalidateService()V

    .line 219
    .end local v2    # "subscriber":Lcom/samsung/android/mcf/McfSubscriberImpl;
    goto :goto_1

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 222
    .local v2, "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->invalidateService()V

    .line 223
    .end local v2    # "bleAdapter":Lcom/samsung/android/mcf/McfBleAdapterImpl;
    goto :goto_2

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 225
    sput-object v0, Lcom/samsung/android/mcf/McfContext;->sInstance:Lcom/samsung/android/mcf/McfContext;

    .line 226
    return-void
.end method

.method unbind()V
    .locals 4

    .line 197
    const-string v0, "McfContext"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mcf/McfContext;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 198
    const-string v1, "unbind"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "unbind "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public unbindService(Lcom/samsung/android/mcf/McfContext$EventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/mcf/McfContext$EventListener;

    .line 184
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "unbindService "

    const-string v1, "not empty"

    const-string v2, "McfContext"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfContext;->unbind()V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfContext;->releaseInstance()V

    .line 193
    return-void
.end method
