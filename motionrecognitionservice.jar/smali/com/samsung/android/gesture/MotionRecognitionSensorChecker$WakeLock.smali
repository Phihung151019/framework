.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLock"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPm:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mPm:Landroid/os/PowerManager;

    .line 2330
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2334
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mPm:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 2335
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mContext:Landroid/content/Context;

    .line 2336
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mPm:Landroid/os/PowerManager;

    .line 2337
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mPm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SENSORBD"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2339
    :cond_0
    return-void
.end method


# virtual methods
.method acquire()V
    .locals 2

    .line 2349
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2351
    const-string v0, "SENSORBD"

    const-string v1, "Acquire wakelock!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_0
    return-void
.end method

.method acquire(J)V
    .locals 2
    .param p1, "timeout"    # J

    .line 2342
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2344
    const-string v0, "SENSORBD"

    const-string v1, "Acquire wakelock using timer!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_0
    return-void
.end method

.method release()V
    .locals 2

    .line 2356
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2359
    const-string v0, "SENSORBD"

    const-string v1, "Release wakelock!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_0
    return-void
.end method
