.class public Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/utils/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private isUpdated:Z

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private resultInteger:I

.field private resultString:Ljava/lang/String;

.field private final updated:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->updated:Ljava/util/concurrent/locks/Condition;

    .line 57
    const/16 v0, -0x14

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->resultInteger:I

    .line 58
    const-string v0, "NG"

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->resultString:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->isUpdated:Z

    return-void
.end method

.method private waitUpdate()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->isUpdated:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->updated:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :cond_0
    nop

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "SemInput:Utlities"

    const-string v2, "waitUpdate: interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 104
    :goto_2
    return-void

    .line 102
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    throw v0
.end method


# virtual methods
.method public getInteger()I
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->waitUpdate()V

    .line 63
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->resultInteger:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->waitUpdate()V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->resultString:Ljava/lang/String;

    return-object v0
.end method

.method public set(I)V
    .locals 2
    .param p1, "result"    # I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 74
    :try_start_0
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->resultInteger:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->isUpdated:Z

    .line 76
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->updated:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    nop

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    throw v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->resultString:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->isUpdated:Z

    .line 87
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->updated:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 90
    throw v0
.end method
