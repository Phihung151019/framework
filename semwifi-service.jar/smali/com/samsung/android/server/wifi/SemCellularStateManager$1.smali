.class Lcom/samsung/android/server/wifi/SemCellularStateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemCellularStateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/SemClientModeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

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
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-wide/16 v1, 0xbb8

    .line 12
    .line 13
    const-string v3, "SemCellularStateManager"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x2

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 20
    .line 21
    const-string v0, "policyData"

    .line 22
    .line 23
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmIsMobileDataLimited(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, "ACTION_DATA_LIMIT_INTENT: mIsMobileDataLimited = "

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 38
    .line 39
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmIsMobileDataLimited(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmIsSimCardReady(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V

    .line 104
    .line 105
    .line 106
    const-string p1, "android.telephony.extra.SIM_STATE"

    .line 107
    .line 108
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v0, "ACTION_SIM_CARD_STATE_CHANGED: mIsSimCardReady = "

    .line 115
    .line 116
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmIsSimCardReady(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, ", sim_state = "

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_1

    .line 154
    .line 155
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 162
    .line 163
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 172
    .line 173
    .line 174
    :cond_1
    return-void
.end method
