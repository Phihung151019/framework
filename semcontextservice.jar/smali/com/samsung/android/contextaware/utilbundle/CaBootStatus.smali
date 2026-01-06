.class public Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
.super Ljava/lang/Object;
.source "CaBootStatus.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final BOOT_COMPLETED:I = 0x1003

.field private static final LOG_CONTEXT_NULL:I = 0x1001

.field private static final LOG_INTENT_NULL:I = 0x1002

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;


# instance fields
.field private mBootComplete:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBootComplete(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mBootComplete:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyObservers(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->notifyObservers()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mBootComplete:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkBootComplete()V
    .locals 4

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 116
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
    .locals 2

    .line 61
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    .line 65
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    return-object v0

    .line 65
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyObservers()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;

    .line 100
    .local v1, "observer":Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;
    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v1}, Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;->bootCompleted()V

    .line 103
    .end local v1    # "observer":Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;
    :cond_0
    goto :goto_0

    .line 104
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->checkBootComplete()V

    .line 73
    return-void
.end method

.method public isBootComplete()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mBootComplete:Z

    return v0
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public terminateManager()V
    .locals 0

    .line 167
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-void
.end method
