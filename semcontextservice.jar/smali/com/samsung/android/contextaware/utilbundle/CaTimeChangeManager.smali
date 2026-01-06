.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
.super Ljava/lang/Object;
.source "CaTimeChangeManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final LOG_CONTEXT_NULL:I = 0x1011

.field private static final LOG_INTENT_NULL:I = 0x1012

.field private static final TIME_CHANGED:I = 0x1013

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;


# instance fields
.field private mAutoCheck:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoCheck(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoCheck(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyObservers(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->notifyObservers()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 116
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkTimeChange()V
    .locals 3

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
    .locals 2

    .line 61
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    .line 65
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

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

    .line 95
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 96
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    .line 98
    .local v1, "observer":Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v1}, Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;->onTimeChanged()V

    .line 101
    .end local v1    # "observer":Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    :cond_0
    goto :goto_0

    .line 102
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->checkTimeChange()V

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "settings not found"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 80
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method

.method public terminateManager()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    :cond_0
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method
