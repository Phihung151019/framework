.class Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApDhcpFingerprintHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemWifiApDhcpFingerprintHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApDhcpFingerprintHandler;->this$0:Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "handleMessage: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 15
    .line 16
    .line 17
    iget v0, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "invalid message = "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget p1, p1, Landroid/os/Message;->what:I

    .line 40
    .line 41
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApDhcpFingerprintHandler;->this$0:Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;

    .line 46
    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;

    .line 50
    .line 51
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->-$$Nest$mhandleUnregisterListener(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApDhcpFingerprintHandler;->this$0:Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;

    .line 56
    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;

    .line 60
    .line 61
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->-$$Nest$mhandleRegisterListener(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "client_mac"

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "dhcp_option_55"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "dhcp_option_60"

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, "dhcp_hostname"

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->-$$Nest$smreadTheFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
