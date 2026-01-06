.class public Lcom/samsung/android/gesture/CheckProximitySensor;
.super Ljava/lang/Object;
.source "CheckProximitySensor.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field static final TYPE_CHECK_PROXIMITY:I = 0x1003b


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPathHandler:Landroid/os/Handler;

.field private mAudioPathPollingHandler:Landroid/os/Handler;

.field private mCTX:Landroid/content/Context;

.field private mCheckPalmlistener:Landroid/hardware/SensorEventListener;

.field private final mRunableCheckAudioPath:Ljava/lang/Runnable;

.field private mSARmotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTerminateThread:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mThreadPolling:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioPathPollingHandler(Lcom/samsung/android/gesture/CheckProximitySensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioPathPollingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunableCheckAudioPath(Lcom/samsung/android/gesture/CheckProximitySensor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mRunableCheckAudioPath:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSARmotion(Lcom/samsung/android/gesture/CheckProximitySensor;)Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mSARmotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerminateThread(Lcom/samsung/android/gesture/CheckProximitySensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mTerminateThread:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTerminateThread(Lcom/samsung/android/gesture/CheckProximitySensor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mTerminateThread:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misActivatedSpeaker(Lcom/samsung/android/gesture/CheckProximitySensor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/CheckProximitySensor;->isActivatedSpeaker()Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mSARmotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThread:Landroid/os/HandlerThread;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThreadPolling:Landroid/os/HandlerThread;

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mTerminateThread:Z

    .line 45
    new-instance v1, Lcom/samsung/android/gesture/CheckProximitySensor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/CheckProximitySensor$1;-><init>(Lcom/samsung/android/gesture/CheckProximitySensor;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mCheckPalmlistener:Landroid/hardware/SensorEventListener;

    .line 107
    new-instance v1, Lcom/samsung/android/gesture/CheckProximitySensor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/CheckProximitySensor$2;-><init>(Lcom/samsung/android/gesture/CheckProximitySensor;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mRunableCheckAudioPath:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mCTX:Landroid/content/Context;

    .line 40
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mCTX:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 41
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mCTX:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioPathHandler:Landroid/os/Handler;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioPathPollingHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private final isActivatedSpeaker()Z
    .locals 7

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "isActive":Z
    const/4 v1, -0x1

    .line 82
    .local v1, "uid":I
    iget-object v2, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 84
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    .line 86
    .local v5, "usage":I
    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 87
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x1

    .line 91
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    .line 93
    nop

    .line 95
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v5    # "usage":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speaker : isActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionRecognitionService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v0, :cond_3

    .line 97
    iget-object v3, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    .line 98
    .local v3, "devices":I
    iget-object v5, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->getAppDevice(I)I

    move-result v5

    .line 99
    .local v5, "appDevice":I
    and-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 100
    const/4 v0, 0x0

    .line 103
    .end local v3    # "devices":I
    .end local v5    # "appDevice":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EARPROXIMIIY]speaker : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method


# virtual methods
.method public startPalmSensorCheck(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V
    .locals 5
    .param p1, "sarmotion"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1003b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 145
    .local v0, "checkproximity":Landroid/hardware/Sensor;
    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_0

    .line 146
    const-string v2, "not support check_proximity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 149
    :cond_0
    const-string v2, "start Check PalmProximity sensor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mSARmotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 151
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThreadPolling:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 152
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "motionrecognition_pollingpath"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThreadPolling:Landroid/os/HandlerThread;

    .line 153
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThreadPolling:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioPathPollingHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 155
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThreadPolling:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioPathPollingHandler:Landroid/os/Handler;

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_3

    .line 158
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "motionrecognition_audiopath"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThread:Landroid/os/HandlerThread;

    .line 159
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioPathHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 161
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioPathHandler:Landroid/os/Handler;

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mCheckPalmlistener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/gesture/CheckProximitySensor;->mAudioPathHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 165
    :cond_3
    return-void
.end method
