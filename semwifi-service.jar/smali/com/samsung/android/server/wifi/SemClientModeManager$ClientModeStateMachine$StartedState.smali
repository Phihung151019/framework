.class Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;


# direct methods
.method public static synthetic $r8$lambda$biDZL3ZCVtS4Q1oHoGyu-jUY5GI(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->lambda$exit$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V

    return-void
.end method

.method private synthetic lambda$exit$0()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmDefaultNetworkListeners(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;->onChanged(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiDriverInfo(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "SemClientModeManager"

    .line 19
    .line 20
    const-string v1, "retry to get Wi-Fi version"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiDriverInfo(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$minitializeSoftApChipInfo(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mcheckAndGetConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmDefaultNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 76
    .line 77
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 101
    .line 102
    const/16 v0, 0xe

    .line 103
    .line 104
    const-wide/16 v1, 0x12c

    .line 105
    .line 106
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public exit()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->access$200(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fputmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mcheckAndGetConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmDefaultNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmClientModes(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/HashMap;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const-string v2, "SemClientModeManager"

    .line 98
    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 112
    .line 113
    invoke-interface {v3}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_0

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v4, "clear remained ClientModeImpl iface: "

    .line 122
    .line 123
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mremoveClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_2

    .line 169
    .line 170
    const-string v0, "recovery auto join flag"

    .line 171
    .line 172
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 176
    .line 177
    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->setScanningEnable(ZLjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v2, :cond_8

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v0, v4, :cond_7

    .line 13
    .line 14
    const/16 v4, 0x10

    .line 15
    .line 16
    if-eq v0, v4, :cond_6

    .line 17
    .line 18
    const/4 v4, 0x4

    .line 19
    if-eq v0, v4, :cond_4

    .line 20
    .line 21
    const/4 v4, 0x5

    .line 22
    if-eq v0, v4, :cond_3

    .line 23
    .line 24
    const-string v4, "SemClientModeManager"

    .line 25
    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    packed-switch v0, :pswitch_data_1

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :pswitch_0
    const-string p0, "already started"

    .line 34
    .line 35
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v5

    .line 39
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetPrimaryClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v5}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->increaseEventCounter(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForHidlDeath(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/16 v1, 0x11

    .line 93
    .line 94
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 98
    .line 99
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$fgetmIdleState(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 104
    .line 105
    .line 106
    return v5

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$mdetermineInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 116
    .line 117
    if-ne p1, v2, :cond_1

    .line 118
    .line 119
    const-string p1, "Force start CMI for wlan0"

    .line 120
    .line 121
    invoke-static {v4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 127
    .line 128
    const-string p1, "wlan0"

    .line 129
    .line 130
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$maddClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return v5

    .line 134
    :cond_1
    add-int/2addr p1, v5

    .line 135
    const-string v0, "There is no active interfaces, retry "

    .line 136
    .line 137
    invoke-static {v0, p1, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 141
    .line 142
    const-wide/16 v2, 0x12c

    .line 143
    .line 144
    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IIJ)V

    .line 145
    .line 146
    .line 147
    return v5

    .line 148
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 151
    .line 152
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Landroid/telephony/ServiceState;

    .line 155
    .line 156
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyTelephonyServiceStateChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/telephony/ServiceState;)V

    .line 157
    .line 158
    .line 159
    return v5

    .line 160
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 163
    .line 164
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 165
    .line 166
    if-ne p1, v5, :cond_2

    .line 167
    .line 168
    move v3, v5

    .line 169
    :cond_2
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyAirplaneModeChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V

    .line 170
    .line 171
    .line 172
    return v5

    .line 173
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Landroid/util/Pair;

    .line 176
    .line 177
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 180
    .line 181
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v0, Landroid/net/Network;

    .line 184
    .line 185
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 188
    .line 189
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyCapabilitiesChangedEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;Landroid/net/wifi/WifiInfo;)V

    .line 190
    .line 191
    .line 192
    return v5

    .line 193
    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 196
    .line 197
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p1, Landroid/net/Network;

    .line 200
    .line 201
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mcheckAndUpdatePrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)V

    .line 202
    .line 203
    .line 204
    return v5

    .line 205
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 208
    .line 209
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyLinkConfiguredChangedEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 210
    .line 211
    .line 212
    return v5

    .line 213
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p1, Landroid/net/NetworkInfo;

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_5

    .line 222
    .line 223
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 224
    .line 225
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 226
    .line 227
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyNetworkConnectionEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 228
    .line 229
    .line 230
    :cond_5
    return v5

    .line 231
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 232
    .line 233
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 234
    .line 235
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p1, Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyTelephonyCountryCodeChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return v5

    .line 243
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 244
    .line 245
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 246
    .line 247
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyDisableRandomMacForTest(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 248
    .line 249
    .line 250
    return v5

    .line 251
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 252
    .line 253
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->access$100(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V

    .line 254
    .line 255
    .line 256
    return v3

    .line 257
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :pswitch_data_1
    .packed-switch 0x24066
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
