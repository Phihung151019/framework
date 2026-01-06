.class public Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
.super Ljava/lang/Object;
.source "SysinputHAL_V1_2.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$HALDeathReceiver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;


# direct methods
.method public static synthetic $r8$lambda$8BT99Nj-M3bqb3dMAE2MBDaQ74U(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getKeyState$0(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BGmxS_V6fA_YVwpTRGCZ2rLhHx0(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getSpenPosition$9(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cfwb7LZ-FCZnteaUbV-ecH9Q8Oo(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getTspCommandList$4(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gb43jLF3xa09FyZ37KH0Z2I_sxg(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$runTspCmd$1(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K2ve42ihizDr8CxuU-5ojYKMnp4(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getSpenCommandList$10(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZrMpJATsyJniNjPaZmiW3S3rzQ(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$readTaas$12(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VOjmhrzkH3tgS0-0nwa86WTGszo(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;IIILjava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$streamRawdata$11(Ljava/util/ArrayList;IIILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VVkO0TgjZhOG8UC0PbUPDirhQ4k(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$runSpenCmd$8(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VugdK8fiu1NE2UnO5GsF55ZV_8I(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getTspFodPosition$7(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fusvvq14klnP2dDKSX5o9OUTLFs(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getTspScrubPosition$2(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJ5CSnuOcSkkWGj6wFVCZ4cLA80(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getTspFodInformation$6(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zY1YlQNlCYTixpagKJTUBj2QOHg(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getTspSupportFeature$3(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zyHo8WKEDCfd3LlblFaZgmPRORM(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->lambda$getTspAodActiveArea$5(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 22
    const-string v0, "SysinputHAL_V1_2"

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(V1_2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static convertDevidToInputDeviceType(I)I
    .locals 1
    .param p0, "devid"    # I

    .line 123
    sparse-switch p0, :sswitch_data_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 131
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 129
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 127
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 125
    :sswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0xb -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 116
    :pswitch_0
    const/16 v0, 0x15

    return v0

    .line 114
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 112
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 110
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .locals 5

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 35
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 36
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v2, "getService: halService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p0

    return-object v0

    .line 40
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    invoke-interface {v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    nop

    .line 46
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$HALDeathReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$HALDeathReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2-IA;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    .local v1, "deathReceiver":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$HALDeathReceiver;
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    const-wide/16 v3, 0x29

    invoke-interface {v2, v1, v3, v4}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 51
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getService: register linkToDeath"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    :cond_1
    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v4, "getService:linkToDeath"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->setServiceNullAndRecovery()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    monitor-exit p0

    return-object v0

    .line 41
    .end local v1    # "deathReceiver":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$HALDeathReceiver;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getService"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 43
    monitor-exit p0

    return-object v0

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method private synthetic lambda$getKeyState$0(ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "keycode"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 174
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method private synthetic lambda$getSpenCommandList$10(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpenCommandList: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method

.method private synthetic lambda$getSpenPosition$9(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 633
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 634
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpenPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method private synthetic lambda$getTspAodActiveArea$5(ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 442
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 443
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspAodActiveArea("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method private synthetic lambda$getTspCommandList$4(ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspCommandList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method private synthetic lambda$getTspFodInformation$6(ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 476
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 477
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspFodInformation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method private synthetic lambda$getTspFodPosition$7(ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 510
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 511
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspFodPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method private synthetic lambda$getTspScrubPosition$2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 341
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 342
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspScrubPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method private synthetic lambda$getTspSupportFeature$3(ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 371
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 372
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTspSupportFeature("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method private synthetic lambda$readTaas$12(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 746
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTaas: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    return-void
.end method

.method private synthetic lambda$runSpenCmd$8(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 572
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 573
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runSpenCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method private synthetic lambda$runTspCmd$1(ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .param p1, "devid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "ret"    # I
    .param p4, "buff"    # Ljava/lang/String;

    .line 213
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 214
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runTspCmd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method private synthetic lambda$streamRawdata$11(Ljava/util/ArrayList;IIILjava/util/ArrayList;)V
    .locals 3
    .param p1, "maxlist"    # Ljava/util/ArrayList;
    .param p2, "devid"    # I
    .param p3, "mode"    # I
    .param p4, "ret"    # I
    .param p5, "list"    # Ljava/util/ArrayList;

    .line 720
    int-to-short v0, p4

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "streamRawdata("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void
.end method


# virtual methods
.method public activate(IIZ)I
    .locals 1
    .param p1, "devid"    # I
    .param p2, "enable"    # I
    .param p3, "isEarly"    # Z

    .line 537
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->setTspEnable(IIZ)I

    move-result v0

    return v0

    .line 539
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->setSpenEnable(IZ)I

    move-result v0

    return v0

    .line 542
    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method public getDeviceList(Z)Ljava/util/ArrayList;
    .locals 11
    .param p1, "forceParse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    const-string v1, "getDeviceList"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->runTspCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, "NG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    return-object v3

    .line 145
    :cond_0
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "devices":[Ljava/lang/String;
    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 147
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 149
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v7

    .line 150
    .local v7, "devid":I
    iget-object v8, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDeviceList: InputDeviceType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-eqz v7, :cond_1

    .line 152
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v7    # "devid":I
    :cond_1
    goto :goto_1

    .line 154
    :catch_0
    move-exception v7

    .line 155
    .local v7, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    invoke-static {v8, v1, v7}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 146
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_3
    return-object v3
.end method

.method public getKeyState(I)Ljava/lang/String;
    .locals 5
    .param p1, "keycode"    # I

    .line 164
    const-string v0, ""

    .line 165
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v2

    .line 168
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v2, :cond_0

    .line 169
    return-object v0

    .line 171
    :cond_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v2, p1, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getKeyCodePressed(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;)V

    .line 177
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 183
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 184
    return-object v0

    .line 187
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    return-object v0

    .line 191
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 177
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "keycode":I
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "keycode":I
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v4, "getKeyState"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    return-object v0
.end method

.method public getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 3
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 266
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getSpenPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 297
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getTspAodActiveArea(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getTspFodPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getTspFodInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_4
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getTspScrubPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_5
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getTspCommandList(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getSpenCommandList()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_6
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getTspSupportFeature(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getSpenSupportFeature()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProperty("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v0, "NG"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSpenCommandList()Ljava/lang/String;
    .locals 4

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 662
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 663
    const-string v2, "NG"

    return-object v2

    .line 665
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getSpenCommandList(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;)V

    .line 670
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 676
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 677
    const-string v1, "NG"

    return-object v1

    .line 680
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    const-string v1, "NG"

    return-object v1

    .line 684
    :cond_2
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 685
    const-string v1, "NG"

    return-object v1

    .line 688
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 670
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 671
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getSpenCommandList"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 673
    const-string v2, "NG"

    return-object v2
.end method

.method protected getSpenPosition()Ljava/lang/String;
    .locals 4

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 628
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 629
    const-string v2, "NG"

    return-object v2

    .line 631
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getSpenPosition(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;)V

    .line 637
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 643
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 644
    const-string v1, "NG"

    return-object v1

    .line 647
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    const-string v1, "NG"

    return-object v1

    .line 651
    :cond_2
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 652
    const-string v1, "NG"

    return-object v1

    .line 655
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 637
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 638
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getSpenPosition"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 640
    const-string v2, "NG"

    return-object v2
.end method

.method protected getSpenSupportFeature()Ljava/lang/String;
    .locals 1

    .line 397
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->convertDevidToInputDeviceType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getTspSupportFeature(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTspAodActiveArea(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 437
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 438
    const-string v2, "NG"

    return-object v2

    .line 440
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspAodActiveArea(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;)V

    .line 446
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 453
    const-string v1, "NG"

    return-object v1

    .line 456
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    const-string v1, "NG"

    return-object v1

    .line 460
    :cond_2
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    const-string v1, "NG"

    return-object v1

    .line 464
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 446
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 447
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getTspAodActiveArea"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 449
    const-string v2, "NG"

    return-object v2
.end method

.method protected getTspCommandList(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 404
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 405
    const-string v2, "NG"

    return-object v2

    .line 407
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspCommandList(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;)V

    .line 412
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 418
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 419
    const-string v1, "NG"

    return-object v1

    .line 422
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    const-string v1, "NG"

    return-object v1

    .line 426
    :cond_2
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 427
    const-string v1, "NG"

    return-object v1

    .line 430
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 412
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 413
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getTspCommandList"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 415
    const-string v2, "NG"

    return-object v2
.end method

.method protected getTspFodInformation(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 471
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 472
    const-string v2, "NG"

    return-object v2

    .line 474
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspFodInformation(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;)V

    .line 480
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 486
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 487
    const-string v1, "NG"

    return-object v1

    .line 490
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    const-string v1, "NG"

    return-object v1

    .line 494
    :cond_2
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 495
    const-string v1, "NG"

    return-object v1

    .line 498
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 480
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 481
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getTspFodInformation"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 483
    const-string v2, "NG"

    return-object v2
.end method

.method protected getTspFodPosition(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 505
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 506
    const-string v2, "NG"

    return-object v2

    .line 508
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspFodPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;)V

    .line 514
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 521
    const-string v1, "NG"

    return-object v1

    .line 524
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    const-string v1, "NG"

    return-object v1

    .line 528
    :cond_2
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    const-string v1, "NG"

    return-object v1

    .line 532
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 514
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 515
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getTspFodPosition"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 517
    const-string v2, "NG"

    return-object v2
.end method

.method protected getTspScrubPosition(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 336
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 337
    const-string v2, "NG"

    return-object v2

    .line 339
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspScrubPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;)V

    .line 345
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 352
    const-string v1, "NG"

    return-object v1

    .line 355
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    const-string v1, "NG"

    return-object v1

    .line 359
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 345
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 346
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getTspScrubPosition"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 348
    const-string v2, "NG"

    return-object v2
.end method

.method protected getTspSupportFeature(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 366
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 367
    const-string v2, "NG"

    return-object v2

    .line 369
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->getTspSupportFeature(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;)V

    .line 375
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 382
    const-string v1, "NG"

    return-object v1

    .line 385
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    const-string v1, "NG"

    return-object v1

    .line 389
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "NG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 390
    const-string v1, "NG"

    return-object v1

    .line 393
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 375
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 376
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "getTspSupportFeature"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 378
    const-string v2, "NG"

    return-object v2
.end method

.method public getVersion()F
    .locals 1

    .line 104
    const v0, 0x3f99999a    # 1.2f

    return v0
.end method

.method protected declared-synchronized isSameService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)Z
    .locals 4
    .param p1, "halService"    # Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    monitor-exit p0

    return v1

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    if-ne v2, p1, :cond_1

    .line 95
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 97
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "isSameService: different"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 99
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 89
    .end local p1    # "halService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public readTaas()Ljava/lang/String;
    .locals 4

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 741
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 742
    const-string v2, "NG"

    return-object v2

    .line 744
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->readTaas(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$readTaasCallback;)V

    .line 749
    monitor-exit v1

    .line 752
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_0

    .line 749
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 750
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :catch_0
    move-exception v1

    .line 751
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "readTaas"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 754
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 755
    const-string v1, "NG"

    return-object v1

    .line 758
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 759
    const-string v1, "NG"

    return-object v1

    .line 762
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public runCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->runTspCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->runSpenCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    const-string v0, "NG"

    return-object v0
.end method

.method protected runSpenCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cmdname"    # Ljava/lang/String;

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 567
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 568
    const-string v2, "NG"

    return-object v2

    .line 570
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 571
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->runSpenCmd(Ljava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;)V

    .line 576
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 582
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 583
    const-string v1, "NG"

    return-object v1

    .line 586
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 587
    const-string v1, "NG"

    return-object v1

    .line 590
    :cond_2
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 591
    const-string v1, "NG"

    return-object v1

    .line 594
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "str":Ljava/lang/String;
    :try_start_2
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, "array":[Ljava/lang/String;
    aget-object v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v3

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    .line 598
    aget-object v1, v3, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 602
    .end local v3    # "array":[Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v4, "runSpenCmd:split"

    invoke-static {v3, v4, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 603
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "NG"

    return-object v1

    .line 576
    .end local v2    # "str":Ljava/lang/String;
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "cmdname":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 577
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "cmdname":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "runSpenCmd"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 579
    const-string v2, "NG"

    return-object v2
.end method

.method protected runSpenCmdNoRead(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmdname"    # Ljava/lang/String;

    .line 607
    const/4 v0, -0x7

    .line 609
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 610
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 611
    const/4 v2, -0x3

    return v2

    .line 613
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 615
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSpenCmdNoRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 619
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_0

    .line 615
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "cmdname":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 617
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "cmdname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "runSpenCmdNoRead"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 621
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected runTspCmd(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 208
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 209
    const-string v2, "NG"

    return-object v2

    .line 211
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :try_start_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;ILjava/util/ArrayList;)V

    invoke-interface {v1, p1, p2, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->runTspCmd(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;)V

    .line 217
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    nop

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string v1, "NG"

    return-object v1

    .line 227
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    const-string v1, "NG"

    return-object v1

    .line 231
    :cond_2
    const-string v2, "NG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    const-string v1, "NG"

    return-object v1

    .line 235
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "str":Ljava/lang/String;
    :try_start_2
    const-string v3, "factory_cmd_result_all"

    .line 238
    .local v3, "factory_cmd_result_all":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    return-object v2

    .line 241
    :cond_4
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "array":[Ljava/lang/String;
    aget-object v5, v4, v1

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    .line 243
    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 247
    .end local v3    # "factory_cmd_result_all":Ljava/lang/String;
    .end local v4    # "array":[Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v4, "runTspCmd:split"

    invoke-static {v3, v4, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "NG"

    return-object v1

    .line 217
    .end local v2    # "str":Ljava/lang/String;
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    .end local p2    # "cmdname":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 218
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    .restart local p2    # "cmdname":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "runTspCmd"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 220
    const-string v2, "NG"

    return-object v2
.end method

.method protected runTspCmdNoRead(ILjava/lang/String;)I
    .locals 5
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 315
    const/4 v0, -0x7

    .line 317
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 318
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
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
    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v2

    move v0, v2

    .line 323
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runTspCmdNoRead("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_0

    .line 323
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    .end local p2    # "cmdname":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 325
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    .restart local p2    # "cmdname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "runTspCmdNoRead"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 3
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    if-ne p2, v0, :cond_1

    .line 254
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 256
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProperty("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, -0x5

    return v0
.end method

.method protected declared-synchronized setService(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;)V
    .locals 3
    .param p1, "halService"    # Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    goto :goto_0

    .line 81
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 82
    .local v0, "tempService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 83
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 84
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v2, "setService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    .restart local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :catchall_0
    move-exception v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 77
    .end local v0    # "tempService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .end local p1    # "halService":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method protected setServiceNullAndRecovery()V
    .locals 1

    .line 72
    monitor-enter p0

    .line 73
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->halService:Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setSpenEnable(IZ)I
    .locals 5
    .param p1, "enable"    # I
    .param p2, "isBefore"    # Z

    .line 692
    const/4 v0, -0x7

    .line 694
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 695
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 696
    const/4 v2, -0x3

    return v2

    .line 698
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :try_start_1
    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->setSpenEnable(IZ)I

    move-result v2

    move v0, v2

    .line 700
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSpenEnable,"

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

    .line 704
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_0

    .line 700
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "enable":I
    .end local p2    # "isBefore":Z
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 702
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "enable":I
    .restart local p2    # "isBefore":Z
    :catch_0
    move-exception v1

    .line 703
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "setSpenEnable"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 706
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected setTspEnable(IIZ)I
    .locals 5
    .param p1, "devid"    # I
    .param p2, "enable"    # I
    .param p3, "isBefore"    # Z

    .line 546
    const/4 v0, -0x7

    .line 548
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 549
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 550
    const/4 v2, -0x3

    return v2

    .line 552
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->setTspEnable(IIZ)I

    move-result v2

    move v0, v2

    .line 554
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTspEnable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 558
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_0

    .line 554
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    .end local p2    # "enable":I
    .end local p3    # "isBefore":Z
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 556
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    .restart local p2    # "enable":I
    .restart local p3    # "isBefore":Z
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "setTspEnable"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 560
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public streamRawdata(II)I
    .locals 5
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v0, "maxlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/4 v1, -0x7

    .line 714
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v2

    .line 715
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v2, :cond_0

    .line 716
    const/4 v3, -0x3

    return v3

    .line 718
    :cond_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :try_start_1
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;II)V

    invoke-interface {v2, p1, p2, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->initTspRawData(IILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;)V

    .line 723
    monitor-exit v2

    .line 726
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_0

    .line 723
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "maxlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local v1    # "result":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "devid":I
    .end local p2    # "mode":I
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 724
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "maxlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .restart local v1    # "result":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "devid":I
    .restart local p2    # "mode":I
    :catch_0
    move-exception v2

    .line 725
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v4, "streamRawdata"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 728
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 729
    return v1

    .line 731
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->intValue()I

    move-result v1

    .line 733
    return v1
.end method

.method public writeTaas(Ljava/lang/String;)I
    .locals 5
    .param p1, "wstr"    # Ljava/lang/String;

    .line 767
    const/4 v0, -0x7

    .line 769
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->getService()Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;

    move-result-object v1

    .line 770
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 771
    const/4 v2, -0x3

    return v2

    .line 773
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;->writeTaas(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 775
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeTaas: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 779
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    goto :goto_0

    .line 775
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .end local p1    # "wstr":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 777
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
    .restart local p1    # "wstr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->TAG:Ljava/lang/String;

    const-string v3, "writeTaas"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 781
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
