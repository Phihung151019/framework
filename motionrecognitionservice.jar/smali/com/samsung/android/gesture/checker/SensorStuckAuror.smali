.class public abstract Lcom/samsung/android/gesture/checker/SensorStuckAuror;
.super Lcom/samsung/android/gesture/checker/SensorAuror;
.source "SensorStuckAuror.java"


# static fields
.field protected static final dumpLock:Ljava/lang/Object;


# instance fields
.field protected MAX_SAMPLE_CNT:I

.field protected NUM_AXIS:I

.field private final TAG:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected handlerThread:Landroid/os/HandlerThread;

.field protected latch:Ljava/util/concurrent/CountDownLatch;

.field protected listener:Landroid/hardware/SensorEventListener;

.field protected sensorManager:Landroid/hardware/SensorManager;

.field protected sensorType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->dumpLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/gesture/checker/SensorAuror;-><init>()V

    .line 31
    const-string v0, "SENSORBD"

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->sensorManager:Landroid/hardware/SensorManager;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->context:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public abstract getResult()Z
.end method

.method public getSensorType()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->sensorType:I

    return v0
.end method

.method public prepare(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 54
    return-void
.end method

.method protected readDump(I)Ljava/lang/String;
    .locals 6
    .param p1, "sensorType"    # I

    .line 74
    sget-object v0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->dumpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    new-instance v1, Lcom/samsung/android/gesture/checker/RegDumpReader;

    invoke-direct {v1}, Lcom/samsung/android/gesture/checker/RegDumpReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .local v1, "dumpReader":Lcom/samsung/android/gesture/checker/RegDumpReader;
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/gesture/checker/RegDumpReader;->setup()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    nop

    .line 84
    :try_start_2
    invoke-virtual {v1}, Lcom/samsung/android/gesture/checker/RegDumpReader;->readDump()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "dump":Ljava/lang/String;
    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/gesture/checker/RegDumpReader;->parseDumpRaw(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 79
    .end local v2    # "dump":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "SENSORBD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while writing REG_DUMP CMD for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v3, ""

    monitor-exit v0

    return-object v3

    .line 86
    .end local v1    # "dumpReader":Lcom/samsung/android/gesture/checker/RegDumpReader;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public abstract setup(Landroid/os/Bundle;)V
.end method

.method public stop()V
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[STUCK] Auror: stop() -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->handlerThread:Landroid/os/HandlerThread;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[STUCK] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/checker/SensorStuckAuror;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    return-void
.end method
