.class public Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;
.super Ljava/lang/Object;
.source "SysinputHALFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SysinputHALFactory"

.field private static volatile hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface; = null

.field private static final halPackageName:Ljava/lang/String; = "com.samsung.android.hardware.secinputdev.hal.SysinputHAL"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectAidl()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    .locals 2

    .line 47
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    if-nez v1, :cond_0

    .line 50
    const-string v1, "com.samsung.android.hardware.secinputdev.hal.SysinputHAL_AIDL"

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->getInterface(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    return-object v0
.end method

.method public static connectHAL()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    .locals 2

    .line 36
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->connectAidl()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v0

    .line 40
    .local v0, "hal":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    if-eqz v0, :cond_1

    .line 41
    return-object v0

    .line 43
    :cond_1
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->connectHidl()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v1

    return-object v1
.end method

.method private static connectHidl()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    .locals 2

    .line 58
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    if-nez v0, :cond_3

    .line 59
    const-class v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    if-nez v1, :cond_2

    .line 61
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->connectHidlV1_3()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 62
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    monitor-exit v0

    return-object v1

    .line 64
    :cond_0
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->connectHidlV1_2()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 65
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    if-eqz v1, :cond_1

    .line 66
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    monitor-exit v0

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;

    invoke-direct {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;-><init>()V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 69
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    return-object v0
.end method

.method private static connectHidlV1_2()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    .locals 1

    .line 79
    const-string v0, "com.samsung.android.hardware.secinputdev.hal.SysinputHAL_V1_2"

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->getInterface(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v0

    return-object v0
.end method

.method private static connectHidlV1_3()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    .locals 1

    .line 75
    const-string v0, "com.samsung.android.hardware.secinputdev.hal.SysinputHAL_V1_3"

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->getInterface(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v0

    return-object v0
.end method

.method private static getInterface(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 84
    const-string v0, "getInterface: "

    const-string v1, "SysinputHALFactory"

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 85
    .local v2, "sysinputHALClass":Ljava/lang/Class;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 87
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 90
    .end local v2    # "sysinputHALClass":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInterface: Exception at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v2, "getInterface"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 94
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerCallback()I
    .locals 5

    .line 23
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    const/4 v1, -0x3

    const-string v2, "SysinputHALFactory"

    if-nez v0, :cond_0

    .line 24
    const-string v0, "registerCallback: HAL service is not initialized"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v1

    .line 27
    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->getInstance(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    move-result-object v0

    .line 28
    .local v0, "callback":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getVersion()F

    move-result v3

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-ltz v3, :cond_1

    .line 29
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->hal:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v1, v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->registerCallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;)I

    move-result v1

    return v1

    .line 31
    :cond_1
    const-string v3, "registerCallback: HAL service is not connected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return v1
.end method
