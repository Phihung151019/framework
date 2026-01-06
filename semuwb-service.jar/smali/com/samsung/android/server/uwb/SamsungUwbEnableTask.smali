.class public Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;
.super Landroid/os/Handler;
.source "SamsungUwbEnableTask.java"


# static fields
.field private static final TASK_INITIALIZE:I = 0x0

.field private static final TASK_UWB_ON:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mIsFactoryBinary:Z

.field private final mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

.field private final mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "factoryManager"    # Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;
    .param p3, "uwbScpmManager"    # Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    .line 26
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    const-string v0, "SamsungUwbEnableTask"

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->TAG:Ljava/lang/String;

    .line 23
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->mIsFactoryBinary:Z

    .line 27
    iput-object p2, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    .line 28
    iput-object p3, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 60
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->sendMessage(Landroid/os/Message;)Z

    .line 62
    return-void
.end method

.method private registerFoldStateListener()V
    .locals 4

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->mIsFactoryBinary:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "SamsungUwbEnableTask"

    const-string v1, "Not calibrate in Factory Binary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->isExistCalibrationFileForFolded()Z

    move-result v0

    .line 86
    .local v0, "isFoldable":Z
    if-nez v0, :cond_1

    .line 87
    return-void

    .line 90
    :cond_1
    new-instance v1, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask$1;-><init>(Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;)V

    .line 105
    .local v1, "foldStateListener":Lcom/samsung/android/view/SemWindowManager$FoldStateListener;
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 106
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFileForFolded()Z

    .line 109
    :cond_2
    return-void
.end method

.method private writeRegulation()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->getWriteResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->writeSCPMPolicyWithoutLength()V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public applyCalibration()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->mIsFactoryBinary:Z

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "SamsungUwbEnableTask"

    const-string v1, "applyCalibration() - Skip calibration in Factory Binary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->applyCalibration()V

    .line 71
    return-void
.end method

.method public execute()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 54
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->sendMessage(Landroid/os/Message;)Z

    .line 56
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    .line 36
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 47
    const-string v1, "SamsungUwbEnableTask"

    const-string v2, "EnableDisableTask : Undefined Task"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->applyCalibration()V

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->writeRegulation()V

    .line 44
    goto :goto_0

    .line 38
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->registerFoldStateListener()V

    .line 39
    nop

    .line 50
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
