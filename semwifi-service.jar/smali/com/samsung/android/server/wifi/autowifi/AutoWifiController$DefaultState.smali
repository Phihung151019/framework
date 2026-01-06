.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private isSimCardReady()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "SimCheck.disable"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "1"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string p0, "AutoWifiController"

    .line 22
    .line 23
    const-string v0, "isSimCardReady returns true for testing"

    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "AutoWifiController"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_1

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "unhandled message id "

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfiguration(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceController(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->removeFromInRangedNetworks(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v2

    .line 63
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 64
    .line 65
    if-ne p1, v2, :cond_0

    .line 66
    .line 67
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isAvailable()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->isSimCardReady()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_0

    .line 92
    .line 93
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isLocationProviderAvailable()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_0

    .line 100
    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misUltraPowerSaveModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_0

    .line 108
    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 110
    .line 111
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiScanningModeEnabledState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    :pswitch_2
    return v2

    .line 119
    :pswitch_3
    const-string v0, "starting Auto Wi-Fi"

    .line 120
    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->checkAndStart()V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 134
    .line 135
    iget p1, p1, Landroid/os/Message;->what:I

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getWhatToString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v2, v2, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    return v2

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
