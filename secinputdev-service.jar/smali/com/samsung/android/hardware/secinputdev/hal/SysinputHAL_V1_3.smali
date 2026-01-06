.class public Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
.super Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
.source "SysinputHAL_V1_3.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$HALDeathReceiver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

.field private halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

.field private hidlCallback:Landroid/os/HwBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    const-string v0, "SysinputHAL_V1_3"

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 332
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$1;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->hidlCallback:Landroid/os/HwBinder;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 332
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$1;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->hidlCallback:Landroid/os/HwBinder;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(V1_3)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static convertDevidToInputDeviceType(I)I
    .locals 1
    .param p0, "devid"    # I

    .line 140
    sparse-switch p0, :sswitch_data_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 150
    :sswitch_0
    const/16 v0, 0x28

    return v0

    .line 148
    :sswitch_1
    const/16 v0, 0x1e

    return v0

    .line 146
    :sswitch_2
    const/16 v0, 0x14

    return v0

    .line 144
    :sswitch_3
    const/4 v0, 0x2

    return v0

    .line 142
    :sswitch_4
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0xb -> :sswitch_2
        0x15 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .line 123
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 133
    :sswitch_0
    const/16 v0, 0x1f

    return v0

    .line 131
    :sswitch_1
    const/16 v0, 0x15

    return v0

    .line 129
    :sswitch_2
    const/16 v0, 0xb

    return v0

    .line 127
    :sswitch_3
    const/4 v0, 0x2

    return v0

    .line 125
    :sswitch_4
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x14 -> :sswitch_2
        0x1e -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .locals 5

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    invoke-super {p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->isSameService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 42
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->setService(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;)V

    .line 43
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v2, "getService: halService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit p0

    return-object v0

    .line 47
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    invoke-interface {v3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    nop

    .line 53
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$HALDeathReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$HALDeathReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3-IA;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .local v1, "deathReceiver":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$HALDeathReceiver;
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    const-wide/16 v3, 0x2a

    invoke-interface {v2, v1, v3, v4}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 58
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v3, "getService: register linkToDeath"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    :cond_2
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v4, "getService:linkToDeath"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->setServiceNullAndRecovery()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 63
    monitor-exit p0

    return-object v0

    .line 67
    .end local v1    # "deathReceiver":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$HALDeathReceiver;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 48
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v3, "getService"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 50
    monitor-exit p0

    return-object v0

    .line 39
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method


# virtual methods
.method public activate(IIZ)I
    .locals 1
    .param p1, "devid"    # I
    .param p2, "enable"    # I
    .param p3, "isEarly"    # Z

    .line 304
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->setTspEnable(IIZ)I

    move-result v0

    return v0

    .line 306
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->setSpenEnable(IZ)I

    move-result v0

    return v0

    .line 308
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->setKeyboardEnable(IZ)I

    move-result v0

    return v0

    .line 311
    :cond_2
    const/4 v0, -0x2

    return v0
.end method

.method public getDeviceList(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "forceParse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v1

    .line 166
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 169
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->getDeviceList(Z)Ljava/util/ArrayList;

    move-result-object v2

    move-object v0, v2

    .line 171
    monitor-exit v1

    .line 174
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_0

    .line 171
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .end local p1    # "forceParse":Z
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .restart local p1    # "forceParse":Z
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v3, "getDeviceList"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "convertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 179
    .local v3, "type":Ljava/lang/Integer;
    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v4

    .line 180
    .local v4, "devid":I
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceList: InputDeviceType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " support "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v4, :cond_1

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v3    # "type":Ljava/lang/Integer;
    .end local v4    # "devid":I
    :cond_1
    goto :goto_1

    .line 186
    :cond_2
    return-object v1
.end method

.method public getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 6
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 223
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->convertDevidToInputDeviceType(I)I

    move-result v0

    .line 224
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 225
    const-string v1, "NG"

    return-object v1

    .line 228
    :cond_0
    const-string v1, "NG"

    .line 230
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v2

    .line 231
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v2, :cond_1

    .line 232
    const-string v3, "NG"

    return-object v3

    .line 234
    :cond_1
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->toInt()I

    move-result v3

    invoke-interface {v2, v0, v3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->getProperty(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 236
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_2

    .line 239
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProperty("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProperty("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 245
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :goto_0
    goto :goto_1

    .line 236
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "type":I
    .end local v1    # "result":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .end local p1    # "devid":I
    .end local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 243
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "type":I
    .restart local v1    # "result":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .restart local p1    # "devid":I
    .restart local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v4, "getProperty"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public getVersion()F
    .locals 1

    .line 158
    const v0, 0x3fa66666    # 1.3f

    return v0
.end method

.method public injectRawdata(I[II)I
    .locals 7
    .param p1, "devid"    # I
    .param p2, "list"    # [I
    .param p3, "size"    # I

    .line 276
    const-string v0, "injectRawdata"

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v1

    .line 277
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 278
    const/4 v0, -0x3

    return v0

    .line 280
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 282
    aget v4, p2, v3

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    .end local v3    # "ii":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-interface {v1, p1, v2, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->sendRawdataTsp(ILjava/util/ArrayList;I)I

    move-result v3

    .line 287
    .local v3, "ret":I
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "injectRawdata("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local v3    # "ret":I
    goto :goto_1

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized isSameService(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;)Z
    .locals 5
    .param p1, "halService"    # Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->isSameService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 106
    .local v0, "superResult":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    monitor-exit p0

    return v1

    .line 110
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_1

    .line 111
    monitor-exit p0

    return v1

    .line 113
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-ne v3, p1, :cond_2

    .line 115
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 117
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v4, "isSameService: different"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    .line 119
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 104
    .end local v0    # "superResult":Z
    .end local p1    # "halService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public registerCallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;)I
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 252
    if-nez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v1, "registerCallback: binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, -0x2

    return v0

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 257
    const/4 v0, -0x7

    .line 259
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v1

    .line 260
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v1, :cond_1

    .line 261
    const/4 v2, -0x3

    return v2

    .line 263
    :cond_1
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->hidlCallback:Landroid/os/HwBinder;

    invoke-static {v2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->registerCallback(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;)I

    move-result v2

    move v0, v2

    .line 265
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallback: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_0

    .line 265
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .end local p1    # "callback":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 267
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .restart local p1    # "callback":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v3, "registerCallback"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 270
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected setKeyboardEnable(IZ)I
    .locals 5
    .param p1, "enable"    # I
    .param p2, "isBefore"    # Z

    .line 315
    const/4 v0, -0x7

    .line 317
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v1

    .line 318
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 319
    const/4 v2, -0x3

    return v2

    .line 321
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :try_start_1
    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->setKeyboardEnable(IZ)I

    move-result v2

    move v0, v2

    .line 323
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKeyboardEnable,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_0

    .line 323
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .end local p1    # "enable":I
    .end local p2    # "isBefore":Z
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 325
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .restart local p1    # "enable":I
    .restart local p2    # "isBefore":Z
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v3, "setKeyboardEnable"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 6
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;

    .line 191
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->convertDevidToInputDeviceType(I)I

    move-result v0

    .line 192
    .local v0, "type":I
    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 193
    return v1

    .line 196
    :cond_0
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    if-ne p2, v2, :cond_3

    .line 197
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v1

    return v1

    .line 199
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {p0, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 202
    :cond_2
    return v1

    .line 205
    :cond_3
    const/4 v1, -0x7

    .line 207
    .local v1, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    move-result-object v2

    .line 208
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    if-nez v2, :cond_4

    .line 209
    const/4 v3, -0x3

    return v3

    .line 211
    :cond_4
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->toInt()I

    move-result v3

    invoke-interface {v2, v0, v3, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;->setProperty(IILjava/lang/String;)I

    move-result v3

    move v1, v3

    .line 213
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProperty("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    nop

    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    goto :goto_0

    .line 213
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "type":I
    .end local v1    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .end local p1    # "devid":I
    .end local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .end local p3    # "mode":Ljava/lang/String;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 215
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local v0    # "type":I
    .restart local v1    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .restart local p1    # "devid":I
    .restart local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .restart local p3    # "mode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v4, "setProperty"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method protected declared-synchronized setService(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;)V
    .locals 3
    .param p1, "halService"    # Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    monitor-enter p0

    .line 71
    if-nez p1, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v1, "setService: halService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    monitor-exit p0

    return-void

    .line 75
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->setService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    if-nez v0, :cond_1

    .line 77
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 80
    .local v0, "tempService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 81
    :try_start_2
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 82
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->TAG:Ljava/lang/String;

    const-string v2, "setService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .end local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    .restart local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    :catchall_0
    move-exception v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 70
    .end local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    .end local p1    # "halService":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method protected setServiceNullAndRecovery()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->setServiceNullAndRecovery()V

    .line 98
    monitor-enter p0

    .line 99
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->halService:Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerCallbackForHalRecovery(I)V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public streamRawdata(II)I
    .locals 1
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->getService()Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;

    .line 299
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->streamRawdata(II)I

    move-result v0

    return v0
.end method
