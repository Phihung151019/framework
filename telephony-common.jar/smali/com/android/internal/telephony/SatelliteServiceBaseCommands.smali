.class public abstract Lcom/android/internal/telephony/SatelliteServiceBaseCommands;
.super Ljava/lang/Object;
.source "SatelliteServiceBaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/SatelliteServiceCommandsInterface;


# instance fields
.field protected greylist mModemState:I

.field protected blacklist mNtnSignalStrengthChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSatelliteCapabilitiesChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSatelliteDatagramReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSatelliteEcefPositionReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSatelliteModemStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSatelliteRegistrationFailureRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mSatelliteSupportedStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mStateMonitor:Ljava/lang/Object;

.field protected blacklist mTerrestrialNetworkAvailableChangedRegistrant:Lcom/android/internal/telephony/Registrant;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mModemState:I

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist registerForNtnSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mNtnSignalStrengthChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForSatelliteCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteCapabilitiesChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForSatelliteDatagramReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteDatagramReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForSatelliteEcefPositionReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteEcefPositionReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForSatelliteModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteModemStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 70
    new-instance v1, Landroid/os/AsyncResult;

    iget p0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mModemState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p3, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mTerrestrialNetworkAvailableChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerFormSatelliteRegistrationFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteRegistrationFailureRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist registerFormSatelliteSupportedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteSupportedStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForNtnSignalStrengthChanged(Landroid/os/Handler;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mNtnSignalStrengthChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mNtnSignalStrengthChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mNtnSignalStrengthChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 101
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForSatelliteCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteCapabilitiesChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteCapabilitiesChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteCapabilitiesChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 119
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForSatelliteDatagramReceived(Landroid/os/Handler;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteDatagramReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteDatagramReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteDatagramReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForSatelliteEcefPositionReceived(Landroid/os/Handler;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteEcefPositionReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteEcefPositionReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteEcefPositionReceivedRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 189
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForSatelliteModemStateChanged(Landroid/os/Handler;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteModemStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteModemStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteModemStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mTerrestrialNetworkAvailableChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mTerrestrialNetworkAvailableChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mTerrestrialNetworkAvailableChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 171
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterFormSatelliteRegistrationFailure(Landroid/os/Handler;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteRegistrationFailureRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteRegistrationFailureRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteRegistrationFailureRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 154
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterFormSatelliteSupportedStateChanged(Landroid/os/Handler;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteSupportedStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteSupportedStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceBaseCommands;->mSatelliteSupportedStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 137
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
