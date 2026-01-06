.class public Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;
.super Lcom/android/server/ssrm/common/AbstractEG;
.source "ForegroundAppChangedEG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/AbstractEG<",
        "Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;",
        "Lcom/android/server/ssrm/common/callback/foreground/AForegroundAppChangedER;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private mForegroundPids:Landroid/util/SparseIntArray;

.field private final mLock:Ljava/lang/Object;

.field private mProcessObserver:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmForegroundPids(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mForegroundPids:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mIsInForegound(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->IsInForegound(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/android/server/ssrm/common/AbstractEG;-><init>()V

    .line 18
    new-instance v0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;-><init>(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)V

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mProcessObserver:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mForegroundPids:Landroid/util/SparseIntArray;

    return-void
.end method

.method private IsInForegound(I)Z
    .locals 3
    .param p1, "pid"    # I

    .line 25
    iget-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mForegroundPids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 27
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    const/4 v0, 0x0

    return v0

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public deregister(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 84
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mProcessObserver:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getGeneratorIdentifier()Ljava/lang/String;
    .locals 1

    .line 92
    const-class v0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 74
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mProcessObserver:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
