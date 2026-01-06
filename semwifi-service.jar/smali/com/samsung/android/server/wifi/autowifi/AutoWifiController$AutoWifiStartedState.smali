.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoWifiStartedState"
.end annotation


# instance fields
.field mIsInitialGeofenceState:Z

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private handleGeofenceStateChanged()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->isFavoriteNetworkInRanged()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private hasFavoriteNetwork()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method

.method private isFavoriteNetworkInRanged()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->handleGeofenceStateChanged()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_f

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v0, v3, :cond_b

    .line 10
    .line 11
    const/16 v3, 0xa

    .line 12
    .line 13
    if-eq v0, v3, :cond_a

    .line 14
    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    if-eq v0, v3, :cond_8

    .line 18
    .line 19
    const/4 v3, 0x7

    .line 20
    if-eq v0, v3, :cond_6

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    if-eq v0, v3, :cond_4

    .line 25
    .line 26
    const/16 v3, 0x67

    .line 27
    .line 28
    if-eq v0, v3, :cond_2

    .line 29
    .line 30
    const/16 v1, 0x68

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 37
    .line 38
    if-ne p1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v4

    .line 42
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_e

    .line 53
    .line 54
    if-nez v2, :cond_e

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAvailableWifiOffFunction(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_e

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->hasFavoriteNetwork()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_e

    .line 69
    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 71
    .line 72
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWaitForWifiOffState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 77
    .line 78
    .line 79
    return v4

    .line 80
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 85
    .line 86
    if-ne p1, v1, :cond_3

    .line 87
    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->removeScoreHistory(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->handleGeofenceStateChanged()V

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    .line 108
    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    .line 112
    .line 113
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_9

    .line 124
    .line 125
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_9

    .line 132
    .line 133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAvailableWifiOffFunction(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_9

    .line 140
    .line 141
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->hasFavoriteNetwork()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_9

    .line 146
    .line 147
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 148
    .line 149
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWaitForWifiOffState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 154
    .line 155
    .line 156
    return v2

    .line 157
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    .line 158
    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    .line 162
    .line 163
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->hasFavoriteNetwork()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_9

    .line 180
    .line 181
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 182
    .line 183
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmSearchFavoriteNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 188
    .line 189
    .line 190
    return v2

    .line 191
    :cond_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 192
    .line 193
    if-nez p1, :cond_9

    .line 194
    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 196
    .line 197
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-ne p1, v2, :cond_9

    .line 202
    .line 203
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->handleGeofenceStateChanged()V

    .line 204
    .line 205
    .line 206
    :cond_9
    return v2

    .line 207
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 214
    .line 215
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->measureNetworkLocation(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    return v2

    .line 223
    :cond_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 224
    .line 225
    if-nez p1, :cond_c

    .line 226
    .line 227
    move p1, v2

    .line 228
    goto :goto_1

    .line 229
    :cond_c
    move p1, v4

    .line 230
    :goto_1
    if-eqz p1, :cond_d

    .line 231
    .line 232
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-ne v0, v2, :cond_d

    .line 239
    .line 240
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 241
    .line 242
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmUserControlState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 247
    .line 248
    .line 249
    return v4

    .line 250
    :cond_d
    if-nez p1, :cond_e

    .line 251
    .line 252
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 253
    .line 254
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-ne p1, v1, :cond_e

    .line 259
    .line 260
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 261
    .line 262
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 263
    .line 264
    .line 265
    :cond_e
    :goto_2
    return v4

    .line 266
    :cond_f
    const-string p0, "AutoWifiController"

    .line 267
    .line 268
    const-string p1, "already started"

    .line 269
    .line 270
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    return v2
.end method
