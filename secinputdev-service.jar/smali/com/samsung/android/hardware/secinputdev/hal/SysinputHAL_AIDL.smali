.class public Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
.super Ljava/lang/Object;
.source "SysinputHAL_AIDL.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;,
        Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$ResultSeparator;
    }
.end annotation


# static fields
.field private static final SEPARATOR_AT_SIGN:Ljava/lang/String; = "@"

.field private static final SERVICE_NAME:Ljava/lang/String; = "vendor.samsung.hardware.sysinput.ISehSysInputDev/default"

.field private static final TAG:Ljava/lang/String; = "SysinputHAL_AIDL"

.field private static final TIMEOUT_SECONDS:J = 0x3cL


# instance fields
.field private aidlCallback:Landroid/os/IBinder;

.field private callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

.field private final deviceConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/locks/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

.field private halVersion:I

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final resultMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutData:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

.field private final timeoutKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetStringForLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getStringForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->resultMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutData:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutKeys:Ljava/util/HashSet;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halVersion:I

    .line 48
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 583
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$1;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->aidlCallback:Landroid/os/IBinder;

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static convertDevidToInputDeviceType(I)I
    .locals 1
    .param p0, "devid"    # I

    .line 134
    sparse-switch p0, :sswitch_data_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 146
    :sswitch_0
    const/16 v0, 0x32

    return v0

    .line 144
    :sswitch_1
    const/16 v0, 0x28

    return v0

    .line 142
    :sswitch_2
    const/16 v0, 0x1e

    return v0

    .line 140
    :sswitch_3
    const/16 v0, 0x14

    return v0

    .line 138
    :sswitch_4
    const/4 v0, 0x2

    return v0

    .line 136
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0xb -> :sswitch_3
        0x15 -> :sswitch_2
        0x1f -> :sswitch_1
        0x29 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 129
    const/4 v0, 0x0

    return v0

    .line 127
    :sswitch_0
    const/16 v0, 0x29

    return v0

    .line 125
    :sswitch_1
    const/16 v0, 0x1f

    return v0

    .line 123
    :sswitch_2
    const/16 v0, 0x15

    return v0

    .line 121
    :sswitch_3
    const/16 v0, 0xb

    return v0

    .line 119
    :sswitch_4
    const/4 v0, 0x2

    return v0

    .line 117
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x14 -> :sswitch_3
        0x1e -> :sswitch_2
        0x28 -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method private getInformation(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "devid"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 458
    const-string v0, "NG"

    const-string v1, "SysinputHAL_AIDL"

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 460
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->resultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Condition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3c

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 462
    .local v2, "isDone":Z
    if-nez v2, :cond_0

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInformation: timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutKeys:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutData:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-virtual {v3, p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    nop

    .line 473
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 466
    return-object v0

    .line 473
    .end local v2    # "isDone":Z
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 474
    nop

    .line 475
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->resultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 476
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInformation: result is NULL, need to wait more: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getInformationOnce(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->resultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    return-object v0

    .line 473
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInformation:await:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    nop

    .line 473
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 471
    return-object v0

    .line 473
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 474
    throw v0
.end method

.method private getInformationOnce(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "devid"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 485
    const-string v0, "NG"

    const-string v1, "SysinputHAL_AIDL"

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 487
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->resultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Condition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3c

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 489
    .local v2, "isDone":Z
    if-nez v2, :cond_0

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInformationOnce: timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutKeys:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutData:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-virtual {v3, p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 493
    nop

    .line 500
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 493
    return-object v0

    .line 500
    .end local v2    # "isDone":Z
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 501
    nop

    .line 502
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->resultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 503
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 504
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 506
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInformationOnce: result NULL again: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutKeys:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutData:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-virtual {v3, p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    nop

    .line 514
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 509
    return-object v0

    .line 514
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v3

    .line 511
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInformationOnce:again:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    nop

    .line 514
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 512
    return-object v0

    .line 514
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 515
    throw v0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->resultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-object v2

    .line 500
    .end local v2    # "result":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 496
    :catch_1
    move-exception v2

    .line 497
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInformationOnce:await:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 498
    nop

    .line 500
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 498
    return-object v0

    .line 500
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 501
    throw v0
.end method

.method private declared-synchronized getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .locals 5

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 64
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "vendor.samsung.hardware.sysinput.ISehSysInputDev/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    .line 65
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    if-nez v1, :cond_0

    .line 66
    const-string v1, "SysinputHAL_AIDL"

    const-string v2, "getService: halService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-object v0

    .line 69
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    :cond_0
    :try_start_2
    const-string v1, "SysinputHAL_AIDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    invoke-interface {v3}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    nop

    .line 74
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getVersion()F

    .line 76
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL-IA;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .local v1, "deathReceiver":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    invoke-interface {v2}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 80
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "getService:linkToDeath"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    :cond_1
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->setServiceNullAndRecovery()V

    .line 84
    const-string v3, "SysinputHAL_AIDL"

    const-string v4, "getService:linkToDeath"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    monitor-exit p0

    return-object v0

    .line 70
    .end local v1    # "deathReceiver":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "getService"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    monitor-exit p0

    return-object v0

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method private static getStringForLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 522
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 525
    :cond_0
    return-object p0
.end method


# virtual methods
.method public activate(IIZ)I
    .locals 6
    .param p1, "devid"    # I
    .param p2, "enable"    # I
    .param p3, "isBefore"    # Z

    .line 346
    const/4 v0, -0x7

    .line 348
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    .line 349
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 350
    const/4 v2, -0x3

    return v2

    .line 353
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ENABLED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 354
    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    const-string v3, ",0"

    goto :goto_0

    :cond_1
    const-string v3, ",1"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "key":Ljava/lang/String;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertDevidToInputDeviceType(I)I

    move-result v3

    invoke-interface {v1, v3, p2, p3}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->activate(IIZ)I

    move-result v3

    move v0, v3

    .line 357
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    const/4 v3, 0x1

    if-ne v3, v0, :cond_3

    .line 359
    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getInformation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "result":Ljava/lang/String;
    const-string v4, "NG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    const/16 v0, -0x9

    goto :goto_1

    .line 363
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 366
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v3, "SysinputHAL_AIDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "),"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_4

    const-string v5, ",0"

    goto :goto_2

    :cond_4
    const-string v5, ",1"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 369
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_3

    .line 357
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "devid":I
    .end local p2    # "enable":I
    .end local p3    # "isBefore":Z
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 367
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "devid":I
    .restart local p2    # "enable":I
    .restart local p3    # "isBefore":Z
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "activate"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return v0
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- AIDL timeout data: max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutData:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getMaxQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutData:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

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

    .line 452
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

    .line 453
    .end local v1    # "data":Ljava/lang/String;
    goto :goto_0

    .line 454
    :cond_0
    const-string v0, "  end SysinputHAL_AIDL event"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public getDeviceList(Z)Ljava/util/ArrayList;
    .locals 10
    .param p1, "forceParse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "convertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    .line 170
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 171
    return-object v0

    .line 173
    :cond_0
    const/4 v2, 0x0

    .line 174
    .local v2, "array":[I
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->getDeviceList(Z)[I

    move-result-object v3

    move-object v2, v3

    .line 176
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    if-eqz v2, :cond_2

    .line 178
    :try_start_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 179
    .local v5, "type":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v6

    .line 180
    .local v6, "devid":I
    const-string v7, "SysinputHAL_AIDL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceList: InputDeviceType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v6, :cond_1

    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    .end local v5    # "type":I
    .end local v6    # "devid":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "array":[I
    :cond_2
    goto :goto_1

    .line 176
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v2    # "array":[I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "convertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "forceParse":Z
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 186
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "array":[I
    .restart local v0    # "convertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "forceParse":Z
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "getDeviceList"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getKeyState(I)Ljava/lang/String;
    .locals 5
    .param p1, "keycode"    # I

    .line 278
    new-instance v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;

    invoke-direct {v0}, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;-><init>()V

    .line 279
    .local v0, "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    const/4 v1, -0x7

    iput v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->retval:I

    .line 280
    const-string v1, ""

    iput-object v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    .line 283
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 284
    iget-object v2, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    return-object v2

    .line 286
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :try_start_1
    invoke-interface {v1, p1, v0}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->getKeyState(ILvendor/samsung/hardware/sysinput/SehIntStringParcel;)V

    .line 288
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    iget-object v2, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    .line 290
    const-string v2, "SysinputHAL_AIDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->retval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    goto :goto_0

    .line 288
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "keycode":I
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 291
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v0    # "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "keycode":I
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "getKeyState"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 295
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    return-object v1
.end method

.method public getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 7
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 226
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertDevidToInputDeviceType(I)I

    move-result v0

    .line 227
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 228
    const-string v1, "NG"

    return-object v1

    .line 231
    :cond_0
    const-string v1, "NG"

    .line 233
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v2

    .line 234
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v2, :cond_1

    .line 235
    const-string v3, "NG"

    return-object v3

    .line 237
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "key":Ljava/lang/String;
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->toInt()I

    move-result v4

    invoke-interface {v2, v0, v4}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->getProperty(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 240
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    const-string v4, "WAIT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getInformation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 245
    const-string v4, "SysinputHAL_AIDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProperty("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getStringForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 248
    nop

    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 240
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "type":I
    .end local v1    # "result":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "devid":I
    .end local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 246
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v3    # "key":Ljava/lang/String;
    .restart local v0    # "type":I
    .restart local v1    # "result":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "devid":I
    .restart local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SysinputHAL_AIDL"

    const-string v4, "getProperty"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public getVersion()F
    .locals 3

    .line 154
    const-string v0, "SysinputHAL_AIDL"

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halVersion:I

    if-nez v1, :cond_0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    invoke-interface {v1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->getInterfaceVersion()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halVersion:I

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersion: interface=2, hal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "getVersion"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halVersion:I

    int-to-float v0, v0

    return v0
.end method

.method public injectRawdata(I[II)I
    .locals 5
    .param p1, "devid"    # I
    .param p2, "list"    # [I
    .param p3, "size"    # I

    .line 328
    const-string v0, "injectRawdata("

    const-string v1, "SysinputHAL_AIDL"

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v2

    .line 329
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v2, :cond_0

    .line 330
    const/4 v0, -0x3

    return v0

    .line 333
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertDevidToInputDeviceType(I)I

    move-result v3

    invoke-interface {v2, v3, p2, p3}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->injectRawdata(I[II)I

    move-result v3

    .line 335
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") ret="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    nop

    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v3    # "ret":I
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "injectRawdata"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReportInformation(ILjava/lang/String;)V
    .locals 5
    .param p1, "devid"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 530
    const-string v0, "SysinputHAL_AIDL"

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$ResultSeparator;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$ResultSeparator;-><init>(ILjava/lang/String;)V

    .line 531
    .local v1, "separator":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$ResultSeparator;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 533
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutKeys:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$ResultSeparator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReportInformation: already timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->timeoutKeys:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$ResultSeparator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 536
    return-void

    .line 538
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->resultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$ResultSeparator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$ResultSeparator;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "onReportInformation"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 544
    throw v0
.end method

.method public readTaas()Ljava/lang/String;
    .locals 6

    .line 395
    new-instance v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;

    invoke-direct {v0}, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;-><init>()V

    .line 396
    .local v0, "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    const/4 v1, -0x7

    iput v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->retval:I

    .line 397
    const-string v1, "NG"

    iput-object v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    .line 400
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 401
    const-string v2, "NG"

    return-object v2

    .line 404
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->TAAS:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "key":Ljava/lang/String;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :try_start_1
    invoke-interface {v1, v0}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->readTaas(Lvendor/samsung/hardware/sysinput/SehIntStringParcel;)V

    .line 407
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :try_start_2
    const-string v3, "WAIT"

    iget-object v4, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    const/16 v3, 0x29

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getInformation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    .line 411
    :cond_1
    iget-object v3, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    .line 412
    const-string v3, "SysinputHAL_AIDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readTaas: ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->retval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 415
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 407
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 413
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v0    # "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "readTaas"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 417
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    return-object v1
.end method

.method public registerCallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;)I
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 255
    if-nez p1, :cond_0

    .line 256
    const-string v0, "SysinputHAL_AIDL"

    const-string v1, "registerCallback: binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, -0x2

    return v0

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->callback:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 260
    const/4 v0, -0x7

    .line 262
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    .line 263
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v1, :cond_1

    .line 264
    const/4 v2, -0x3

    return v2

    .line 266
    :cond_1
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->aidlCallback:Landroid/os/IBinder;

    invoke-static {v2}, Lvendor/samsung/hardware/sysinput/ISehSysInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->registerCallback(Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;)I

    move-result v2

    move v0, v2

    .line 268
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    const-string v2, "SysinputHAL_AIDL"

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

    .line 272
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    goto :goto_0

    .line 268
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "callback":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 270
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "callback":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "registerCallback"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public runCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 300
    new-instance v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;

    invoke-direct {v0}, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;-><init>()V

    .line 301
    .local v0, "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    const/4 v1, -0x7

    iput v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->retval:I

    .line 302
    const-string v1, "NG"

    iput-object v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    .line 304
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    .line 305
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 306
    const-string v2, "NG"

    return-object v2

    .line 309
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@cmd@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "key":Ljava/lang/String;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertDevidToInputDeviceType(I)I

    move-result v3

    invoke-interface {v1, v3, p2, v0}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->runCommand(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/SehIntStringParcel;)V

    .line 312
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :try_start_2
    iget v3, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->retval:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    .line 314
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getInformation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    .line 316
    :cond_1
    iget-object v3, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    .line 317
    const-string v3, "SysinputHAL_AIDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runCommand("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getStringForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->retval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    nop

    .line 322
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "key":Ljava/lang/String;
    iget-object v1, v0, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;->outbuf:Ljava/lang/String;

    return-object v1

    .line 312
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "devid":I
    .end local p2    # "cmdname":Ljava/lang/String;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 318
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v0    # "output":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "devid":I
    .restart local p2    # "cmdname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "runCommand"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 320
    const-string v2, "NG"

    return-object v2
.end method

.method public setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 7
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;

    .line 194
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertDevidToInputDeviceType(I)I

    move-result v0

    .line 195
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 196
    const/4 v1, -0x2

    return v1

    .line 199
    :cond_0
    const/4 v1, -0x7

    .line 201
    .local v1, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v2

    .line 202
    .local v2, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v2, :cond_1

    .line 203
    const/4 v3, -0x3

    return v3

    .line 205
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "key":Ljava/lang/String;
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->toInt()I

    move-result v4

    invoke-interface {v2, v0, v4, p3}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->setProperty(IILjava/lang/String;)I

    move-result v4

    move v1, v4

    .line 208
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const/4 v4, 0x1

    if-ne v4, v1, :cond_3

    .line 210
    :try_start_2
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getInformation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "result":Ljava/lang/String;
    const-string v5, "NG"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    const/16 v1, -0x9

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 217
    .end local v4    # "result":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v4, "SysinputHAL_AIDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setProperty("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    nop

    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1

    .line 208
    .restart local v2    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "type":I
    .end local v1    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "devid":I
    .end local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .end local p3    # "mode":Ljava/lang/String;
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 218
    .end local v2    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v3    # "key":Ljava/lang/String;
    .restart local v0    # "type":I
    .restart local v1    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "devid":I
    .restart local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .restart local p3    # "mode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SysinputHAL_AIDL"

    const-string v4, "setProperty"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 221
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method protected setServiceNullAndRecovery()V
    .locals 2

    .line 100
    monitor-enter p0

    .line 101
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->halService:Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerCallbackForHalRecovery(I)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->deviceConditions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Condition;

    .line 107
    .local v1, "condition":Ljava/util/concurrent/locks/Condition;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v1    # "condition":Ljava/util/concurrent/locks/Condition;
    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    throw v0

    .line 102
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public streamRawdata(II)I
    .locals 5
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 376
    const/4 v0, -0x7

    .line 378
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    .line 379
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 380
    const/4 v2, -0x3

    return v2

    .line 382
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertDevidToInputDeviceType(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->streamRawdata(II)I

    move-result v2

    move v0, v2

    .line 384
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :try_start_2
    const-string v2, "SysinputHAL_AIDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "streamRawdata("

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

    .line 388
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    goto :goto_0

    .line 384
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "devid":I
    .end local p2    # "mode":I
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 386
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "devid":I
    .restart local p2    # "mode":I
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "streamRawdata"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 390
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public writeTaas(Ljava/lang/String;)I
    .locals 6
    .param p1, "wstr"    # Ljava/lang/String;

    .line 422
    const/4 v0, -0x7

    .line 424
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getService()Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    move-result-object v1

    .line 425
    .local v1, "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    if-nez v1, :cond_0

    .line 426
    const/4 v2, -0x3

    return v2

    .line 429
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->TAAS:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Write"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "key":Ljava/lang/String;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;->writeTaas(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 432
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    .line 434
    const/16 v3, 0x29

    :try_start_2
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->getInformation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "result":Ljava/lang/String;
    const-string v4, "NG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    const/16 v4, -0x9

    return v4

    .line 438
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 440
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    const-string v3, "SysinputHAL_AIDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeTaas: ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 443
    nop

    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 432
    .restart local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .end local p1    # "wstr":Ljava/lang/String;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 441
    .end local v1    # "hal":Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .restart local p1    # "wstr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SysinputHAL_AIDL"

    const-string v3, "writeTaas"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 445
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
