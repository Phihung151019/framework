.class public Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string p0, "72b0193a7f92a79bcf2c7aa6415ee61b1579065d"

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public onBeaconEventAbort(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onBeaconEventAbort"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBcnEventAbort(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onBeaconInterval"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    move/from16 p0, p5

    .line 16
    .line 17
    int-to-long v9, p0

    .line 18
    move/from16 p0, p6

    .line 19
    .line 20
    int-to-long v11, p0

    .line 21
    move-object v5, p1

    .line 22
    move-object v6, p2

    .line 23
    move/from16 v7, p3

    .line 24
    .line 25
    move/from16 v8, p4

    .line 26
    .line 27
    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 28
    .line 29
    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object p0, v0

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public onDriverHang(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v1, "onDriverHang"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "HANG"

    .line 12
    .line 13
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public onEapEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onEapEvent"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastEapEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public onNetworkAdded(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onNetworkAdded"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->saveSupplicantNetworkId(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkAddedEvent(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public onNotify(I[I[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastDriverEvent(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onNotifyBigdata"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBigdataEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public onRoamingChannelListUpdate(Ljava/lang/String;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p2

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget v3, p2, v2

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p2

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "onRoamingChannelListUpdate "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastRoamingChannelUpdatedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    .line 54
    .line 55
    monitor-exit p2

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method
