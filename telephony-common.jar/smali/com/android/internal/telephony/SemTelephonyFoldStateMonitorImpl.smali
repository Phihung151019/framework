.class public Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;
.super Ljava/lang/Object;
.source "SemTelephonyFoldStateMonitorImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;,
        Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;,
        Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemTelephonyFoldStateMonitorImpl"


# instance fields
.field private blacklist mAngleSensorStateListener:Landroid/hardware/SensorEventListener;

.field private blacklist mAngleStateSensor:Landroid/hardware/Sensor;

.field private blacklist mFlipSensor:Landroid/hardware/Sensor;

.field private blacklist mFlipSensorListener:Landroid/hardware/SensorEventListener;

.field private blacklist mFoldClosed:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsChecking:Z

.field private blacklist mIsFlipRegistered:Z

.field private blacklist mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFoldClosed(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFoldClosed:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFoldClosed(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFoldClosed:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFlipSensor:Landroid/hardware/Sensor;

    .line 22
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mAngleStateSensor:Landroid/hardware/Sensor;

    .line 23
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFlipSensorListener:Landroid/hardware/SensorEventListener;

    .line 24
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mAngleSensorStateListener:Landroid/hardware/SensorEventListener;

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsFlipRegistered:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsChecking:Z

    .line 28
    iput v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFoldClosed:I

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 172
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist init(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 3

    .line 32
    const-string v0, "SemTelephonyFoldStateMonitor init"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->log(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->isFoldableTypeFlip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const v2, 0x100af

    .line 38
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFlipSensor:Landroid/hardware/Sensor;

    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x100a4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mAngleStateSensor:Landroid/hardware/Sensor;

    .line 41
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;-><init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFlipSensorListener:Landroid/hardware/SensorEventListener;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;-><init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mAngleSensorStateListener:Landroid/hardware/SensorEventListener;

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    .line 47
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$SemOnLidStateChangedListener;-><init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl-IA;)V

    invoke-virtual {p1, v0, p2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    .line 49
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFoldClosed:I

    .line 50
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {p1, v1, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemTelephonyFoldStateMonitor init is fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist isFoldableTypeFlip()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist registerCheckAngleSensorStateListener()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mAngleStateSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsChecking:Z

    if-nez v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mAngleSensorStateListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsChecking:Z

    :cond_1
    return-void

    .line 113
    :cond_2
    :goto_0
    const-string v0, "Can\'t register to check angle sensor state"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerFlipForSarStateListener()V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFlipSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFoldClosed:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 141
    const-string v0, "Fold is already closed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->log(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsFlipRegistered:Z

    if-nez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFlipSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsFlipRegistered:Z

    :cond_2
    return-void

    .line 136
    :cond_3
    :goto_0
    const-string v0, "Can\'t register for flip state"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unregisterCheckAngleSensorStateListener()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mAngleStateSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsChecking:Z

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mAngleSensorStateListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsChecking:Z

    :cond_1
    return-void

    .line 124
    :cond_2
    :goto_0
    const-string v0, "Can\'t unregister to check angle sensor state"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unregisterFlipForSarStateListener()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFlipSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsFlipRegistered:Z

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mFlipSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->mIsFlipRegistered:Z

    :cond_1
    return-void

    .line 152
    :cond_2
    :goto_0
    const-string v0, "Can\'t unregister for flip state"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->log(Ljava/lang/String;)V

    return-void
.end method
