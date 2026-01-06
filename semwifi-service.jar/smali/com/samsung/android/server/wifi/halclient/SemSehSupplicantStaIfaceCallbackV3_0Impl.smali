.class abstract Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onBeaconEventAbort(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 5
    .line 6
    const-string v2, "onBeaconEventAbort"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

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

.method public onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 5
    .line 6
    const-string v2, "onBeaconInterval"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    move-object v5, p1

    .line 16
    move-object v6, p2

    .line 17
    move/from16 v7, p3

    .line 18
    .line 19
    move/from16 v8, p4

    .line 20
    .line 21
    move-wide/from16 v9, p5

    .line 22
    .line 23
    move-wide/from16 v11, p7

    .line 24
    .line 25
    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    move-object p0, v0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public onDriverHang(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 5
    .line 6
    const-string v1, "onDriverHang"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "HANG"

    .line 12
    .line 13
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 5
    .line 6
    const-string v2, "onEapEvent"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 5
    .line 6
    const-string v2, "onNetworkAdded"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->saveSupplicantNetworkId(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

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

.method public onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 5
    .line 6
    const-string v2, "onNotifyBigdata"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

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

.method public onRoamingChannelListUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onRoamingChannelListUpdate "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastRoamingChannelUpdatedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
