.class public Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;
.super Ljava/lang/Object;
.source "SemInputDeviceFactory.java"


# static fields
.field private static final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->devices:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create(Ljava/lang/String;IILjava/lang/String;)Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "devid"    # I
    .param p2, "feature"    # I
    .param p3, "cmdlist"    # Ljava/lang/String;

    const-class v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->devices:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .local v1, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    if-eqz v1, :cond_0

    .line 15
    monitor-exit v0

    return-object v1

    .line 17
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/Touch;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/device/Touch;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .local v2, "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    goto :goto_0

    .line 19
    .end local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .restart local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/Spen;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/device/Spen;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .restart local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    goto :goto_0

    .line 21
    .end local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .restart local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidKeyboard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/Keyboard;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/device/Keyboard;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .restart local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    goto :goto_0

    .line 23
    .end local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .restart local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    :cond_3
    const/16 v2, 0x29

    if-ne p1, v2, :cond_4

    .line 24
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/Taas;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/hardware/secinputdev/device/Taas;-><init>(Ljava/lang/String;I)V

    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .restart local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    goto :goto_0

    .line 26
    .end local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .restart local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    :cond_4
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/NotDefined;

    invoke-direct {v2}, Lcom/samsung/android/hardware/secinputdev/device/NotDefined;-><init>()V

    .line 28
    .end local v1    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .restart local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    :goto_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->devices:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit v0

    return-object v2

    .line 12
    .end local v2    # "device":Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "devid":I
    .end local p2    # "feature":I
    .end local p3    # "cmdlist":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized get(I)Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    .locals 3
    .param p0, "devid"    # I

    const-class v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->devices:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    .end local p0    # "devid":I
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getTouch(I)Lcom/samsung/android/hardware/secinputdev/device/Touch;
    .locals 3
    .param p0, "devid"    # I

    const-class v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 38
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->devices:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/device/Touch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 36
    .end local p0    # "devid":I
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
