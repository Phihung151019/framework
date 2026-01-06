.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "received: "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWifiService"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 25
    .line 26
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$mhandleShutDown(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setTelephonyServiceState(Landroid/telephony/ServiceState;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    const-string v0, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/16 v1, 0x9

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const-string p1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 69
    .line 70
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ILandroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    const-string p1, "android.telephony.extra.PHONE_IN_EMERGENCY_CALL"

    .line 93
    .line 94
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ILandroid/os/Bundle;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void
.end method
