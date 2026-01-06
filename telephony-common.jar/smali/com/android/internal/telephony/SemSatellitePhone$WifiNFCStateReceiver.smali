.class Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemSatellitePhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemSatellitePhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiNFCStateReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSatellitePhone;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemSatellitePhone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemSatellitePhone;Lcom/android/internal/telephony/SemSatellitePhone-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 430
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BTWifiNFCStateReceiver NULL action for intent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemSatellitePhone;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 434
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 436
    :cond_1
    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 437
    iget-object p2, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p2}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmRadioStateLock(Lcom/android/internal/telephony/SemSatellitePhone;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 438
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p2}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmNfcStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z

    move-result p2

    if-ne p1, v1, :cond_2

    .line 440
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fputmNfcStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 442
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fputmNfcStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V

    .line 443
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/SemSatellitePhone;)V

    .line 445
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmNfcStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z

    move-result p1

    if-eq p2, p1, :cond_4

    .line 446
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNfcStateEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmNfcStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemSatellitePhone;Ljava/lang/String;)V

    .line 448
    :cond_4
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 452
    :cond_5
    const-string p1, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 454
    iget-object p2, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p2}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmRadioStateLock(Lcom/android/internal/telephony/SemSatellitePhone;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 455
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {v3}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmWifiStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z

    move-result v3

    if-ne p1, v1, :cond_6

    .line 457
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fputmWifiStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    if-ne p1, v2, :cond_7

    .line 459
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fputmWifiStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V

    .line 460
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/SemSatellitePhone;)V

    .line 462
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmWifiStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z

    move-result p1

    if-eq v3, p1, :cond_8

    .line 463
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiStateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone$WifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmWifiStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemSatellitePhone;Ljava/lang/String;)V

    .line 465
    :cond_8
    monitor-exit p2

    return-void

    :goto_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
