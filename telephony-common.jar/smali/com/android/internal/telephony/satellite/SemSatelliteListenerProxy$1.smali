.class Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "SemSatelliteListenerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 169
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowedAndEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 173
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 175
    const-string v0, "com.samsung.intent.action.SATELLITE_DATAGRAM_RECEIVED_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, " - "

    const-string v3, ": "

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "pendingCount"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$fgetmLatestSendDatagram(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)Landroid/telephony/satellite/stub/SatelliteDatagram;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onSatelliteDatagramReceived(Landroid/telephony/satellite/stub/SatelliteDatagram;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 182
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSatelliteDatagramReceived - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mloge(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_1
    const-string v0, "com.samsung.intent.action.PENDING_DATAGRAMS_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 188
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onPendingDatagrams()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPendingDatagrams - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mloge(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_2
    const-string v0, "com.samsung.intent.action.SATELLITE_POSITION_CHANGED_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, ", "

    if-eqz v0, :cond_3

    const v0, 0x4357c7a3

    .line 193
    const-string v1, "azimuth"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    const v5, 0x42012272    # 32.283638f

    .line 194
    const-string v6, "elevation"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    .line 195
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$msatellitePositionChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;FF)V

    return-void

    .line 198
    :cond_3
    const-string v0, "com.samsung.intent.action.SATELLITE_MODEM_STATE_CHANGED_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$msatelliteModemStateChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;I)V

    return-void

    .line 203
    :cond_4
    const-string v0, "com.samsung.intent.action.NTN_SIGNAL_STRENGTH_CHANGED_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 204
    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mntnSignalStrengthChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;I)V

    return-void

    .line 208
    :cond_5
    const-string v0, "com.samsung.intent.action.SATELLITE_CAPABILITIES_CHANGED_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 209
    const-string v0, "radioTech"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    const-string v6, "isPointingRequired"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v7, 0x4b0

    .line 211
    const-string v8, "maxBytes"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 212
    iget-object v7, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p0, v5, v1, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$msatelliteCapabilitiesChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;ZI)V

    return-void

    .line 216
    :cond_6
    const-string v0, "com.samsung.intent.action.SATELLITE_SUPPORTED_STATE_CHANGED_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    const-string v0, "supported"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 221
    :try_start_2
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onSatelliteSupportedStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSatelliteSupportedStateChanged - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mloge(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_7
    const-string v0, "com.samsung.intent.action.REGISTRATION_FAILURE_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    const-string v0, "causeCode"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 230
    :try_start_3
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->onRegistrationFailure(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRegistrationFailure - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mloge(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_8
    const-string v0, "com.samsung.intent.action.TN_AVAILABLE_CHANGED_TEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    const-string v0, "available"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$1;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mterrestrialNetworkAvailableChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Z)V

    :cond_9
    :goto_0
    return-void
.end method
