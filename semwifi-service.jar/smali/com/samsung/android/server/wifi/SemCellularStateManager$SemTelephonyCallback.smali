.class Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CellInfoListener;
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemCellularStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemTelephonyCallback"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0xbb8

    .line 2
    .line 3
    const-string v2, "SemCellularStateManager"

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v5, "onCellInfoChanged: cellInfoList Number of cell: "

    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/telephony/CellInfo;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 58
    .line 59
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mgetCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;Landroid/telephony/CellInfo;)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v5, "onCellInfoChanged: Registered = "

    .line 69
    .line 70
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, ", mCellularCellId = "

    .line 81
    .line 82
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 86
    .line 87
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_2

    .line 112
    .line 113
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 120
    .line 121
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_1
    const-string p1, "onCellInfoChanged: cellInfoList is null or Size is zero and no registered cell"

    .line 134
    .line 135
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 139
    .line 140
    const v2, 0x7fffffff

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmCellularCellId(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_2

    .line 157
    .line 158
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 165
    .line 166
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
    .line 176
    .line 177
    :cond_2
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2

    .line 1
    const-string v0, "onDataConnectionStateChanged: state ="

    .line 2
    .line 3
    const-string v1, ", networkType ="

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "SemCellularStateManager"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 26
    .line 27
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mgetNetworkClass(Lcom/samsung/android/server/wifi/SemCellularStateManager;J)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmNetworkClass(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 p2, 0x2

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-wide/16 v0, 0xbb8

    .line 68
    .line 69
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmCellularSignalLevel(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmCellularSignalLevel(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "onSignalStrengthsChanged: mCellularSignalLevel="

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmCellularSignalLevel(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "SemCellularStateManager"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 68
    .line 69
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-wide/16 v0, 0xbb8

    .line 78
    .line 79
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public onUserMobileDataStateChanged(Z)V
    .locals 2

    .line 1
    const-string v0, "onUserMobileDataStateChanged: enabled="

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemCellularStateManager"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmIsUserDataEnabled(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemTelephonyCallback;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-wide/16 v0, 0xbb8

    .line 47
    .line 48
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
