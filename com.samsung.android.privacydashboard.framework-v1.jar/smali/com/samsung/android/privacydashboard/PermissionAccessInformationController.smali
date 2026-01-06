.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;
.super Ljava/lang/Object;
.source "PermissionAccessInformationController.java"


# static fields
.field private static final OP_CAPTURE_SCREEN:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PermissionAccessInformationController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFlushExecutor:Ljava/util/concurrent/Executor;

.field private final mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

.field private mPermissionAccessInformations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/privacydashboard/PermissionAccessInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private final mUselessPackages:[Ljava/lang/String;

.field private final mWriterLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$2;-><init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V

    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionGroupMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 33
    .local v0, "readWriteLock":Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mFlushExecutor:Ljava/util/concurrent/Executor;

    .line 37
    new-instance v1, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    invoke-direct {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    .line 39
    return-void
.end method

.method private isOpCodeEnable(I)Z
    .locals 2
    .param p1, "op"    # I

    .line 190
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionGroupMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPackageEnable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mUselessPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x0

    return v1

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private write(Lcom/samsung/android/privacydashboard/PermissionAccessInformation;)V
    .locals 2
    .param p1, "information"    # Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    nop

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    throw v0
.end method


# virtual methods
.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "cache":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/privacydashboard/PermissionAccessInformation;>;"
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    move-object v0, v1

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    nop

    .line 98
    if-eqz v0, :cond_1

    .line 99
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformationWriter:Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;->write(Landroid/content/Context;Ljava/util/Iterator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    const/4 v0, 0x0

    .line 106
    :cond_0
    throw v1

    .line 102
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    const/4 v0, 0x0

    .line 107
    :cond_2
    return-void

    .line 94
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mWriterLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    throw v1
.end method

.method public flushAsync()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mFlushExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController$1;-><init>(Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyPackageName"    # Ljava/lang/String;
    .param p5, "proxyAttributionTag"    # Ljava/lang/String;
    .param p6, "state"    # I

    .line 63
    invoke-direct {p0, p3}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->isPackageEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->isOpCodeEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    const/16 v1, 0x12c

    move/from16 v9, p6

    if-lt v9, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 66
    .local v0, "information":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    invoke-direct {p0, v0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->write(Lcom/samsung/android/privacydashboard/PermissionAccessInformation;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->mPermissionAccessInformations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flushAsync()V

    goto :goto_1

    .line 63
    .end local v0    # "information":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    :cond_1
    move/from16 v9, p6

    .line 71
    :cond_2
    :goto_1
    return-void
.end method
