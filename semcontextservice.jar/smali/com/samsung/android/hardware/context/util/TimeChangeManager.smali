.class public Lcom/samsung/android/hardware/context/util/TimeChangeManager;
.super Ljava/lang/Object;
.source "TimeChangeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeChangeManager"

.field private static volatile sInstance:Lcom/samsung/android/hardware/context/util/TimeChangeManager;


# instance fields
.field private mAutoCheck:Z

.field private mContext:Landroid/content/Context;

.field private final mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoCheck(Lcom/samsung/android/hardware/context/util/TimeChangeManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mAutoCheck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/context/util/TimeChangeManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoCheck(Lcom/samsung/android/hardware/context/util/TimeChangeManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mAutoCheck:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyObservers(Lcom/samsung/android/hardware/context/util/TimeChangeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->notifyObservers()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->sInstance:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    new-instance v0, Lcom/samsung/android/hardware/context/util/TimeChangeManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/context/util/TimeChangeManager$1;-><init>(Lcom/samsung/android/hardware/context/util/TimeChangeManager;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkTimeChange()V
    .locals 4

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 158
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/hardware/context/util/TimeChangeManager;
    .locals 2

    .line 88
    const-class v0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->sInstance:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    invoke-direct {v1}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;-><init>()V

    sput-object v1, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->sInstance:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    .line 92
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-object v0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->sInstance:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    return-object v0

    .line 92
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

    .line 145
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;

    .line 146
    .local v1, "observer":Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;
    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v1}, Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;->onTimeChanged()V

    .line 149
    .end local v1    # "observer":Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mContext:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->checkTimeChange()V

    .line 106
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
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mAutoCheck:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    return-void
.end method

.method public terminateManager()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    :cond_0
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/hardware/context/util/ITimeChangeObserver;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    return-void
.end method
