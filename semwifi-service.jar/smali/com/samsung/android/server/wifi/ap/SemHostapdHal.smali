.class public Lcom/samsung/android/server/wifi/ap/SemHostapdHal;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static TAG:Ljava/lang/String; = "SemWifiApHostapdHal"


# instance fields
.field private device_first_api_level:I

.field private mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

.field private mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

.field private mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    .line 6
    .line 7
    const-string v1, "ro.product.first_api_level"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 23
    .line 24
    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 28
    .line 29
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, " not registered ISehHostapd,device_first_api_level:"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->addMHSDumpLog(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->addMHSDumpLog(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :goto_0
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method

.method public getDumpLogs()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getDumpLogs()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->getDumpLogs()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->getDumpLogs()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, " not registered ISehHostapd,device_first_api_level"

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    .line 54
    .line 55
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 56
    .line 57
    .line 58
    const-string p0, "null"

    .line 59
    .line 60
    return-object p0
.end method

.method public isRegisteredHostapdAidl()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegistered()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public readAllowList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegistered()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->readAllowList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->readAllowList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->readAllowList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, " not registered ISehHostapd,device_first_api_level:"

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    .line 61
    .line 62
    invoke-static {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public readDenyList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegistered()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->readDenyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->readDenyList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->readDenyList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_2
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, " not registered ISehHostapd,device_first_api_level:"

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    .line 61
    .line 62
    invoke-static {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegistered()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->isRegistered()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV4:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegistered()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalV3:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, " not registered ISehHostapd:"

    .line 49
    .line 50
    const-string v2, ",device_first_api_level:"

    .line 51
    .line 52
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->device_first_api_level:I

    .line 57
    .line 58
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 59
    .line 60
    .line 61
    const-string p0, ""

    .line 62
    .line 63
    return-object p0
.end method

.method public setUpHostapdAidl()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->attachDaemon()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "setUpHostapdAidl status:"

    .line 16
    .line 17
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "setUpHostapdAidl, did not executed"

    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public stopHostapdAidl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->mSemHostapdHalAidlImp:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->terminate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
