.class Lcom/android/ims/ImsManager$LazyExecutor;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyExecutor"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsManager$LazyExecutor;-><init>()V

    return-void
.end method

.method private declared-synchronized blacklist startExecutorIfNeeded()V
    .locals 1

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager$LazyExecutor;->mExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 253
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsManager$LazyExecutor;->mExecutor:Ljava/util/concurrent/Executor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 251
    .end local p0    # "this":Lcom/android/ims/ImsManager$LazyExecutor;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 247
    invoke-direct {p0}, Lcom/android/ims/ImsManager$LazyExecutor;->startExecutorIfNeeded()V

    .line 248
    iget-object v0, p0, Lcom/android/ims/ImsManager$LazyExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method
