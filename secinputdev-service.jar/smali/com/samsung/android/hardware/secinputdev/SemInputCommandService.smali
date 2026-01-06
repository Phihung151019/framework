.class public Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;
.super Ljava/lang/Object;
.source "SemInputCommandService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputCommandService"


# instance fields
.field private final allDeviceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

.field private final lastCommand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supportDeviceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;)V
    .locals 4
    .param p1, "hal"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->lastCommand:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TSP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TSP_SUB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SPEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEYBOARD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDeviceList()V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

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

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 43
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method private addToEnabledDumpsys(Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "retVal"    # I

    .line 331
    const-string v0, ")"

    const-string v1, "): "

    sparse-switch p2, :sswitch_data_0

    .line 352
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FORCE_ON ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 350
    goto :goto_0

    .line 346
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FORCE_OFF("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 347
    goto :goto_0

    .line 344
    :sswitch_2
    goto :goto_0

    .line 338
    :sswitch_3
    if-nez p3, :cond_0

    .line 339
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :sswitch_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OFF("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 355
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkAndRegisterSupportDevice(I)I
    .locals 6
    .param p1, "devid"    # I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "deviceName":Ljava/lang/String;
    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndRegisterSupportDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getCommandList(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "cmdlist":Ljava/lang/String;
    const-string v3, "NG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    return v1

    .line 83
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportFeature(I)I

    move-result v1

    .line 85
    .local v1, "feature":I
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->create(Ljava/lang/String;IILjava/lang/String;)Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/4 v3, 0x0

    return v3
.end method

.method private getSupportFeature(I)I
    .locals 5
    .param p1, "devid"    # I

    .line 130
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FEATURE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 132
    .local v1, "ret":I
    const-string v2, "NG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    return v1

    .line 136
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportFeature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemInputCommandService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private isFeatureEnabled(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enableBit"    # I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 161
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getSupportFeature()I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 162
    .local v2, "enabled":Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getSupportFeature()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " [0x%X|0x%X]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemInputCommandService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz v2, :cond_1

    .line 164
    return v2

    .line 166
    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .end local v2    # "enabled":Z
    :cond_1
    goto :goto_0

    .line 167
    :cond_2
    return v2
.end method

.method private registerSupportDevice(I)Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .locals 6
    .param p1, "devid"    # I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    const/4 v1, 0x0

    return-object v1

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getCommandList(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "cmdlist":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportFeature(I)I

    move-result v2

    .line 97
    .local v2, "feature":I
    invoke-static {v0, p1, v2, v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->create(Ljava/lang/String;IILjava/lang/String;)Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    move-result-object v3

    .line 99
    .local v3, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object v3
.end method

.method private restoreCommands(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;)V
    .locals 9
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->lastCommand:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "params":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 107
    .local v4, "needRestore":Z
    array-length v5, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    .line 108
    .local v7, "param":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 109
    const/4 v4, 0x1

    .line 107
    .end local v7    # "param":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 113
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    if-ne v5, v6, :cond_2

    .line 114
    const/4 v4, 0x1

    .line 117
    :cond_2
    if-eqz v4, :cond_3

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreCommands("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SemInputCommandService"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, v3, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    .line 121
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;>;"
    .end local v2    # "params":[Ljava/lang/String;
    .end local v4    # "needRestore":Z
    :cond_3
    goto :goto_0

    .line 122
    :cond_4
    return-void
.end method

.method private setProperty(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .param p2, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p3, "mode"    # Ljava/lang/String;

    .line 290
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    invoke-virtual {p1, p2, p3, v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public activate(IIZLjava/lang/String;Z)I
    .locals 9
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "useThread"    # Z

    .line 228
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 229
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    if-nez v0, :cond_0

    .line 230
    const/4 v1, -0x2

    return v1

    .line 233
    :cond_0
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    .line 234
    .local v1, "result":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    invoke-virtual {v0, p2, p3, v1, p5}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->activate(IZLcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;Z)I

    move-result v2

    .line 235
    .local v2, "ret":I
    if-nez p5, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 236
    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->getInteger()I

    move-result v2

    move v8, v2

    goto :goto_0

    .line 238
    :cond_1
    move v8, v2

    .end local v2    # "ret":I
    .local v8, "ret":I
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getFormatName()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    .end local p2    # "mode":I
    .end local p3    # "state":Z
    .end local p4    # "caller":Ljava/lang/String;
    .local v5, "mode":I
    .local v6, "state":Z
    .local v7, "caller":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->addToEnabledDumpsys(Ljava/lang/String;IZLjava/lang/String;I)V

    .line 240
    return v8
.end method

.method public activate(IIZZ)I
    .locals 6
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .param p4, "useThread"    # Z

    .line 244
    const-string v4, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .end local p1    # "devid":I
    .end local p2    # "mode":I
    .end local p3    # "state":Z
    .end local p4    # "useThread":Z
    .local v1, "devid":I
    .local v2, "mode":I
    .local v3, "state":Z
    .local v5, "useThread":Z
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->activate(IIZLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 358
    const-string v0, "dumping SemInputCommandService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    const-string v0, "- last command value"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->lastCommand:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 362
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;>;"
    goto :goto_0

    .line 365
    :cond_0
    const-string v0, "- support device list"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

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

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 367
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getSupportCommands()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getExecutorInformation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    goto :goto_1

    .line 371
    :cond_1
    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- enabled data: max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getMaxQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->enabledDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 376
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    .end local v1    # "data":Ljava/lang/String;
    goto :goto_0

    .line 378
    :cond_0
    const-string v0, "  end SemInputCommandService enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public getCommandList(I)Ljava/lang/String;
    .locals 3
    .param p1, "devid"    # I

    .line 125
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD_LIST:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "result":Ljava/lang/String;
    const-string v1, "\n"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getKeyPressStateAll()Ljava/lang/String;
    .locals 14

    .line 182
    const-string v0, "getKeyPressStateAll ++"

    const-string v1, "SemInputCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v0

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 185
    .local v0, "volumedown":Ljava/lang/String;
    :goto_0
    const/16 v4, 0x73

    invoke-virtual {p0, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 186
    .local v4, "volumeup":Ljava/lang/String;
    :goto_1
    const/16 v5, 0x74

    invoke-virtual {p0, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v3

    .line 187
    .local v5, "power":Ljava/lang/String;
    :goto_2
    const/16 v6, 0xfc

    invoke-virtual {p0, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v3

    .line 188
    .local v6, "hot":Ljava/lang/String;
    :goto_3
    const/16 v7, 0x2a0

    invoke-virtual {p0, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object v7, v3

    .line 189
    .local v7, "emergency":Ljava/lang/String;
    :goto_4
    const/16 v8, 0xf8

    invoke-virtual {p0, v8}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object v8, v3

    .line 190
    .local v8, "micmute":Ljava/lang/String;
    :goto_5
    const/16 v9, 0xfe

    invoke-virtual {p0, v9}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object v9, v3

    .line 191
    .local v9, "recent":Ljava/lang/String;
    :goto_6
    const/16 v10, 0xac

    invoke-virtual {p0, v10}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object v10, v3

    .line 192
    .local v10, "home":Ljava/lang/String;
    :goto_7
    const/16 v11, 0x9e

    invoke-virtual {p0, v11}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move-object v2, v3

    .line 194
    .local v2, "back":Ljava/lang/String;
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, "strbuilder":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "114:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "115:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "116:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "252:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "672:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "248:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "254:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "172:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "158:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getKeyPressStateAll: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 2
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 302
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 303
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    if-nez v0, :cond_0

    .line 304
    const-string v1, "NA"

    return-object v1

    .line 306
    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSupportDevice(I)I
    .locals 5
    .param p1, "devid"    # I

    .line 171
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 172
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    const-string v1, "SemInputCommandService"

    if-eqz v0, :cond_0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportDevice: supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    return v1

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, "deviceName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportDevice: not supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, -0x1

    return v1
.end method

.method public getSupportDeviceList()V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getDeviceList(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getVersion()F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const-string v2, "SemInputCommandService"

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 50
    const-string v1, "getSupportDeviceList: hal might be OLD version. Check all possible devices"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->allDeviceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 52
    .local v2, "devid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->checkAndRegisterSupportDevice(I)I

    .line 53
    .end local v2    # "devid":Ljava/lang/Integer;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 56
    .local v3, "devid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSupportDeviceList: exists "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->registerSupportDevice(I)Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    move-result-object v4

    .line 62
    .local v4, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    if-nez v4, :cond_3

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSupportDeviceList: not supportDevice "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    goto :goto_1

    .line 66
    :cond_3
    invoke-direct {p0, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->restoreCommands(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;)V

    .line 67
    .end local v3    # "devid":Ljava/lang/Integer;
    .end local v4    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    goto :goto_1

    .line 69
    :cond_4
    :goto_2
    return-void
.end method

.method public getTspSupportFeature(I)I
    .locals 5
    .param p1, "devid"    # I

    .line 319
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 320
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    const-string v1, "getTspSupportFeature("

    const-string v2, "SemInputCommandService"

    if-nez v0, :cond_0

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): device is not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v1, 0x0

    return v1

    .line 325
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getSupportFeature()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->getSupportFeature()I

    move-result v1

    return v1
.end method

.method public isKeyPressedByKeycode(I)Z
    .locals 6
    .param p1, "keycode"    # I

    .line 211
    const-string v0, "isKeyPressedByKeycode: "

    const-string v1, "SemInputCommandService"

    const/4 v2, 0x0

    .line 214
    .local v2, "keystate":I
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v4, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getKeyState(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    nop

    .line 221
    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    .line 222
    return v0

    .line 224
    :cond_0
    return v3

    .line 216
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v3
.end method

.method public isSupportAot()Z
    .locals 2

    .line 156
    const-string v0, "isSupportAot"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isFeatureEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSupportInputMonitorEnabled()Z
    .locals 2

    .line 152
    const-string v0, "isSupportInputMonitorEnabled"

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isFeatureEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSupportProxLpScanEnabled()Z
    .locals 2

    .line 148
    const-string v0, "isSupportProxLpScanEnabled"

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isFeatureEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSupportSysinputEnabled()Z
    .locals 2

    .line 144
    const-string v0, "isSupportSysinputEnabled"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isFeatureEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public runCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "devid"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 311
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    if-nez v0, :cond_0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runCommand: not supported device("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputCommandService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "NA"

    return-object v1

    .line 315
    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p3, "mode"    # Ljava/lang/String;

    .line 278
    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->needUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->lastCommand:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 283
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    if-nez v0, :cond_1

    .line 284
    const/4 v1, -0x2

    return v1

    .line 286
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->supportDeviceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    .line 295
    .local v0, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    if-nez v0, :cond_0

    .line 296
    const/4 v1, -0x2

    return v1

    .line 298
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p2, "mode"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "retExtra":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    .line 266
    .local v1, "retDefault":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPropertyAllTouch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retExtra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    .line 269
    return v1

    .line 271
    :cond_0
    if-nez v1, :cond_1

    if-gez v0, :cond_1

    .line 272
    return v0

    .line 274
    :cond_1
    return v1
.end method

.method public setPropertyAllTouchAndSpen(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p2, "mode"    # Ljava/lang/String;

    .line 248
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, "retSpen":I
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "retTouch":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPropertyAllTouchAndSpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retTouch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retSpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    .line 254
    return v1

    .line 256
    :cond_0
    if-nez v1, :cond_1

    if-gez v0, :cond_1

    .line 257
    return v0

    .line 259
    :cond_1
    return v1
.end method
