.class Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
.super Ljava/lang/Object;
.source "SemInputMotionNoSupport.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "devid"    # I
    .param p3, "commandOperator"    # Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "SemInputMotionController"

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public deliveryInformation(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 41
    return-void
.end method

.method public deliveryRawdata([I)V
    .locals 0
    .param p1, "rawdata"    # [I

    .line 43
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 35
    return-void
.end method

.method public disableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p2, "client"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->disableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public disableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p2, "client"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    const-string v1, "disableMotion: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v0, "Not Supported"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 88
    return-void
.end method

.method public enableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p2, "client"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->enableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public enableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p2, "client"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    const-string v1, "enableMotion: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getBootingDump()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "MotionNoSupport"

    return-object v0
.end method

.method public getMotionClients(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMotionControl(Ljava/lang/String;)I
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    const-string v1, "getMotionControl: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, -0x3

    return v0
.end method

.method public isEnableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;)I
    .locals 2
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    const-string v1, "isEnableMotion: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isSupport()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .line 39
    return-void
.end method

.method public prepare(I)V
    .locals 2
    .param p1, "feature"    # I

    .line 32
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    const-string v1, "prepare: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public restart()V
    .locals 0

    .line 37
    return-void
.end method

.method public setExternalEventRegister(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;)V
    .locals 0
    .param p1, "iregister"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;

    .line 22
    return-void
.end method

.method public setMotionControl(Ljava/lang/String;I)I
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I

    .line 69
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->TAG:Ljava/lang/String;

    const-string v1, "setMotionControl: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, -0x3

    return v0
.end method

.method public setRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V
    .locals 0
    .param p1, "service"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 21
    return-void
.end method
