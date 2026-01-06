.class public Lcom/android/server/ssrm/LoadDetectMonitor;
.super Ljava/lang/Object;
.source "LoadDetectMonitor.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final LOAD_DETECT_PERIOD:J = 0xc8L

.field static final TAG:Ljava/lang/String;


# instance fields
.field public mCpuLoadState:I

.field public mGpuLoadState:I

.field mHandler:Landroid/os/Handler;

.field mNativeMonitoringRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/LoadDetectMonitor;->TAG:Ljava/lang/String;

    .line 60
    const-string v0, "devicehealth.ssrm.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mCpuLoadState:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mGpuLoadState:I

    .line 68
    new-instance v0, Lcom/android/server/ssrm/LoadDetectMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/LoadDetectMonitor$1;-><init>(Lcom/android/server/ssrm/LoadDetectMonitor;)V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mNativeMonitoringRunnable:Ljava/lang/Runnable;

    .line 64
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeLoadDetectInit()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method


# virtual methods
.method native nativeLoadDetectInit()V
.end method

.method native nativePauseLoadDetect()V
.end method

.method native nativeResumeLoadDetect()V
.end method

.method native nativeSetHeavyModeState(I)V
.end method

.method native nativeStartLoadMonitor()V
.end method

.method native nativeStopLoadMonitor()V
.end method

.method public pauseLoadDetect()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativePauseLoadDetect()V

    .line 93
    return-void
.end method

.method public reportCpuGpuLoads(IIIIIIIIIIII)V
    .locals 2
    .param p1, "totalTopCpu"    # I
    .param p2, "topCpu"    # I
    .param p3, "gpu"    # I
    .param p4, "bigAvgFreq"    # I
    .param p5, "bigMaxFreq"    # I
    .param p6, "bigMinFreq"    # I
    .param p7, "midAvgFreq"    # I
    .param p8, "midMaxFreq"    # I
    .param p9, "midMinFreq"    # I
    .param p10, "gpuAvgFreq"    # I
    .param p11, "gpuMaxFreq"    # I
    .param p12, "gpuMinFreq"    # I

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "loadFreqs":Ljava/lang/String;
    const-string v1, "LoadsFreqs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->sendEventToSdhms(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public reportLoadState(I)V
    .locals 1
    .param p1, "mLoadState"    # I

    .line 110
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    iput p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mGpuLoadState:I

    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mCpuLoadState:I

    .line 118
    :goto_1
    invoke-static {p1}, Lcom/android/server/ssrm/DynamicLoadDetector;->reportLoadState(I)V

    .line 119
    return-void
.end method

.method public reportSingleBoostState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 163
    invoke-static {p1}, Lcom/android/server/ssrm/DynamicLoadDetector;->reportSingleBoostState(I)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleBoostState"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->sendEventToSdhms(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public resumeLoadDetect()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeResumeLoadDetect()V

    .line 89
    return-void
.end method

.method sendEventToSdhms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 143
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 145
    nop

    .line 146
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 147
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setHeavyModeState(I)V
    .locals 0
    .param p1, "on"    # I

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeSetHeavyModeState(I)V

    .line 97
    return-void
.end method

.method public startLoadMonitor()V
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeResumeLoadDetect()V

    .line 78
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mNativeMonitoringRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method

.method public stopLoadMonitor()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeStopLoadMonitor()V

    .line 85
    return-void
.end method
