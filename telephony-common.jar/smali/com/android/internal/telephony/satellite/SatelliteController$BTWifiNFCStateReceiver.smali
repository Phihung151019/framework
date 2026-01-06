.class public Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BTWifiNFCStateReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1331
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1336
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BTWifiNFCStateReceiver NULL action for intent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x3

    .line 1340
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v2, p1

    goto :goto_1

    :sswitch_0
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :sswitch_2
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 1358
    :pswitch_0
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1359
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p2

    if-ne p1, v3, :cond_4

    .line 1361
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    goto :goto_2

    :cond_4
    if-ne p1, v0, :cond_5

    .line 1363
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1364
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    .line 1367
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p1

    if-eq p2, p1, :cond_a

    .line 1368
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNfcStateEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void

    .line 1342
    :pswitch_1
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1344
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p2

    const/16 v2, 0xa

    if-ne p1, v2, :cond_6

    .line 1346
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1347
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    goto :goto_3

    :cond_6
    const/16 v1, 0xc

    if-ne p1, v1, :cond_7

    .line 1349
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1352
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p1

    if-eq p2, p1, :cond_a

    .line 1353
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBTStateEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void

    .line 1373
    :pswitch_2
    const-string p1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1375
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p2

    if-ne p1, v3, :cond_8

    .line 1377
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    goto :goto_4

    :cond_8
    if-ne p1, v0, :cond_9

    .line 1379
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1380
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    .line 1383
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p1

    if-eq p2, p1, :cond_a

    .line 1384
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mWifiStateEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_2
        -0x5b36f014 -> :sswitch_1
        0x73d08300 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
