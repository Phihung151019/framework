.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;
.super Ljava/lang/Object;
.source "SemInputDeviceMotionHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputMotionHelper"


# instance fields
.field private final bootingDump:Ljava/lang/StringBuilder;

.field private final checkTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private commandOperator:Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

.field private externalEventRegister:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;

.field private final mainHandler:Landroid/os/Handler;

.field private final motionControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;",
            "Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;",
            ">;"
        }
    .end annotation
.end field

.field private final rawdataServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;",
            "Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;)V
    .locals 3
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "externalRegister"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;
    .param p3, "commandOperator"    # Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->checkTables:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->bootingDump:Ljava/lang/StringBuilder;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->externalEventRegister:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->commandOperator:Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->mainHandler:Landroid/os/Handler;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->externalEventRegister:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->commandOperator:Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->checkTables:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->DEFAULT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->checkTables:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->EXTRA_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTables size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->checkTables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputMotionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method static synthetic lambda$pause$0(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V
    .locals 0
    .param p0, "rawdataService"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pauseService()V

    return-void
.end method

.method static synthetic lambda$restart$1(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V
    .locals 0
    .param p0, "rawdataService"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->restartService()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 210
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const-string v1, "dumping SemInputMotionHelper"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 213
    .local v2, "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->dump(Ljava/io/PrintWriter;)V

    .line 214
    .end local v2    # "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 217
    .local v1, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->dump(Ljava/io/PrintWriter;)V

    .line 218
    .end local v1    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    goto :goto_1

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->bootingDump:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 225
    .local v1, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 227
    .end local v1    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method public enableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;ZLjava/lang/String;)I
    .locals 4
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 128
    .local v2, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->enableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->disableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)Z

    move-result v0

    .line 133
    .end local v2    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    :goto_1
    goto :goto_0

    .line 134
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, -0x3

    .line 135
    .local v1, "retval":I
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMotion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputMotionHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v1
.end method

.method public forcePause()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 177
    .local v1, "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pauseService()V

    .line 178
    .end local v1    # "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public getMotionControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SemInputMotionHelper"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 165
    .local v1, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->getMotionControl(Ljava/lang/String;)I

    move-result v3

    .line 166
    .local v3, "value":I
    const/4 v4, -0x3

    if-eq v3, v4, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMotionControl: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", client="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", ret="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v3

    .line 170
    .end local v1    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    .end local v3    # "value":I
    :cond_0
    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "getMotionControl: maybe not supported or not yet enabled"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, -0x1

    return v0
.end method

.method public isEnableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)I
    .locals 4
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p2, "client"    # Ljava/lang/String;

    .line 140
    const/4 v0, -0x1

    .line 141
    .local v0, "retval":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 142
    .local v2, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    if-gez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :cond_0
    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->isEnableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;)I

    move-result v3

    or-int/2addr v0, v3

    .line 146
    .end local v2    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    goto :goto_0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableMotion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMotionHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v0
.end method

.method public onShutdown()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 205
    .local v1, "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->destroy()V

    .line 206
    .end local v1    # "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public pause(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Z)V
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "useHandler"    # Z

    .line 182
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 183
    .local v0, "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    if-eqz v0, :cond_1

    .line 184
    if-eqz p2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pauseService()V

    .line 190
    :cond_1
    :goto_0
    return-void
.end method

.method public registerListener(Landroid/os/IBinder;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p3, "client"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "result":Z
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$MotionType:[I

    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "SemInputMotionHelper"

    packed-switch v1, :pswitch_data_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener: not defined type #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    return v1

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 90
    .local v3, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    invoke-virtual {v3, p2, p3, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->enableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 91
    .end local v3    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    goto :goto_0

    .line 92
    :cond_0
    if-nez v0, :cond_1

    .line 93
    const-string v1, "registerListener(APD): maybe not supported or not yet enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    return v0

    .line 82
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 83
    .local v3, "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    invoke-virtual {v3, p1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->registerCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 84
    .end local v3    # "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    goto :goto_1

    .line 85
    :cond_2
    if-nez v0, :cond_3

    .line 86
    const-string v1, "registerListener(CALLBACK): maybe not supported or not yet enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerRawdataService(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;I)V
    .locals 8
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sysinputHAL"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    .param p4, "feature"    # I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->checkTables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 46
    .local v0, "isChecked":Z
    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    .line 48
    .local v1, "devid":I
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    invoke-direct {v2, p2, p3, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;I)V

    .line 49
    .local v2, "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isSupport()Z

    move-result v3

    const-string v4, "\n"

    const-string v5, "SemInputMotionHelper"

    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->checkTables:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerRawdataService: RawdataService not support for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerRawdataService not support: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    return-void

    .line 55
    :cond_0
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->setRawdataService(ILcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V

    .line 56
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->commandOperator:Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

    invoke-direct {v3, p2, v1, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;)V

    .line 59
    .local v3, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->externalEventRegister:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;

    invoke-virtual {v3, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->setExternalEventRegister(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;)V

    .line 60
    invoke-virtual {v3, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->setRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V

    .line 61
    invoke-virtual {v3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->prepare(I)V

    .line 62
    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->isSupport()Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->checkTables:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerRawdataService: MotionController not support for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "motionController not support: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->getBootingDump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void

    .line 69
    :cond_1
    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->setMotionController(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;)V

    .line 71
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->checkTables:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerRawdataService: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " done"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v1    # "devid":I
    .end local v2    # "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .end local v3    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    :cond_2
    return-void
.end method

.method public restart(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Z)V
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "useHandler"    # Z

    .line 193
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 194
    .local v0, "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    if-eqz v0, :cond_1

    .line 195
    if-eqz p2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->restartService()V

    .line 201
    :cond_1
    :goto_0
    return-void
.end method

.method public setMotionControl(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 152
    const/4 v0, -0x1

    .line 153
    .local v0, "retval":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 154
    .local v2, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->setMotionControl(Ljava/lang/String;I)I

    move-result v3

    .line 155
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 156
    move v0, v3

    .line 158
    .end local v2    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    .end local v3    # "result":I
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMotionHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v0
.end method

.method public unregisterListener(Landroid/os/IBinder;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .param p3, "client"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "result":Z
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$MotionType:[I

    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "SemInputMotionHelper"

    packed-switch v1, :pswitch_data_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListener: not defined type #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    return v1

    .line 113
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->motionControllers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 114
    .local v3, "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    invoke-virtual {v3, p2, p3, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->disableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 115
    .end local v3    # "motionController":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    goto :goto_0

    .line 116
    :cond_0
    if-nez v0, :cond_1

    .line 117
    const-string v1, "unregisterListener(APD): maybe not supported or not yet enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    return v0

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->rawdataServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 107
    .local v3, "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    invoke-virtual {v3, p1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 108
    .end local v3    # "rawdataService":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    goto :goto_1

    .line 109
    :cond_2
    if-nez v0, :cond_3

    .line 110
    const-string v1, "unregisterListener(CALLBACK): maybe not supported or not yet enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
