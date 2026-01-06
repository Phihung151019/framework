.class Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "wifi_ap_smart_priority_enable"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-string v0, "smart priority change, is enable = "

    .line 19
    .line 20
    const-string v2, "SemWifiApTrafficPriority"

    .line 21
    .line 22
    invoke-static {v0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmIsSmartPriorityEnablefromUI()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmAtleastOneClientSpeedisAboveLimit()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmIsNsdActivated()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmhsActive()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 66
    .line 67
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$mtriggerStartStopNsd(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmIsPriorityFeatureEnableDuringSession()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    const-string p0, "Enabled the smart prio toggle \n"

    .line 78
    .line 79
    invoke-static {v2, p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmIsSmartPriorityEnablefromUI()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmIsNsdActivated()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority$1;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 101
    .line 102
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$mtriggerStartStopNsd(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string p1, "SmartPriorityEnable: "

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->-$$Nest$sfgetmIsSmartPriorityEnablefromUI()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    const-string p0, "Disabled the smart prio toggle \n"

    .line 131
    .line 132
    invoke-static {v2, p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
