.class Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;
.super Landroid/hardware/SensorEventCallback;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceListChecker"
.end annotation


# instance fields
.field private mBeginFrame:Z

.field private mDone:Ljava/util/concurrent/CountDownLatch;

.field private mFlushPending:Z

.field private mResults:[I

.field private mSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;)V
    .locals 2
    .param p1, "s"    # Landroid/hardware/Sensor;

    .line 1342
    invoke-direct {p0}, Landroid/hardware/SensorEventCallback;-><init>()V

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mSensor:Landroid/hardware/Sensor;

    .line 1337
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mResults:[I

    .line 1338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mFlushPending:Z

    .line 1339
    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mBeginFrame:Z

    .line 1340
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mDone:Ljava/util/concurrent/CountDownLatch;

    .line 1343
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mSensor:Landroid/hardware/Sensor;

    .line 1344
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mResults:[I

    .line 1345
    return-void
.end method


# virtual methods
.method public getResult()[I
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mResults:[I

    if-nez v0, :cond_0

    .line 1406
    const/4 v0, 0x0

    return-object v0

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mResults:[I

    return-object v0
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 1349
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mSensor:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_0

    .line 1350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mFlushPending:Z

    .line 1352
    :cond_0
    return-void
.end method

.method public onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/SensorAdditionalInfo;

    .line 1356
    iget-object v0, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mFlushPending:Z

    if-nez v0, :cond_5

    .line 1357
    iget v0, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    const/4 v1, 0x1

    const-string v2, "SemContextService"

    if-nez v0, :cond_1

    .line 1358
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mBeginFrame:Z

    if-eqz v0, :cond_0

    .line 1359
    return-void

    .line 1361
    :cond_0
    const-string v0, "Request a list: BEGIN"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mBeginFrame:Z

    goto/16 :goto_2

    .line 1363
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mBeginFrame:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    const v3, 0x10000002

    if-ne v0, v3, :cond_3

    .line 1370
    iget-object v0, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    array-length v0, v0

    .line 1371
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dataframe size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1374
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mResults:[I

    iget-object v4, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 1375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dataframe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mResults:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mResults:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 1377
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mBeginFrame:Z

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    if-ne v0, v1, :cond_4

    .line 1378
    const-string v0, "Request a list: END"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 1377
    :cond_4
    :goto_1
    nop

    .line 1382
    :cond_5
    :goto_2
    return-void
.end method

.method public request()Z
    .locals 6

    .line 1392
    const-string v0, "SemContextService"

    const/4 v1, 0x0

    .line 1394
    .local v1, "ret":Z
    :try_start_0
    const-string v2, "Request a list: START++++"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mDone:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    move v1, v2

    .line 1397
    const-string v2, "Request a list: END------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    goto :goto_0

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .line 1401
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return v1
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "flushPending"    # Z

    .line 1385
    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mFlushPending:Z

    .line 1386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mBeginFrame:Z

    .line 1387
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->mDone:Ljava/util/concurrent/CountDownLatch;

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListChecker reset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContextService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return-void
.end method
