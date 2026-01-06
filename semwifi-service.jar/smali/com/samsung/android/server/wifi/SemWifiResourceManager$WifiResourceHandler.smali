.class Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiResourceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getDsiIdFromTasLevel(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x2

    .line 4
    if-eq p1, p0, :cond_3

    .line 5
    .line 6
    const/4 p0, 0x3

    .line 7
    if-eq p1, p0, :cond_2

    .line 8
    .line 9
    const/4 p0, 0x4

    .line 10
    if-eq p1, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x5

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    .line 15
    const/16 p0, 0x13

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    const/16 p0, 0x1a

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    const/16 p0, 0x19

    .line 22
    .line 23
    return p0

    .line 24
    :cond_2
    const/16 p0, 0x18

    .line 25
    .line 26
    return p0

    .line 27
    :cond_3
    const/16 p0, 0x14

    .line 28
    .line 29
    return p0

    .line 30
    :cond_4
    const/16 p0, 0x12

    .line 31
    .line 32
    return p0
.end method

.method private printInterfacesTrafficStats()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", rxBytes "

    .line 8
    .line 9
    const-string v2, "SemWifiResourceManager"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "wlan0: txBytes "

    .line 16
    .line 17
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 27
    .line 28
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 41
    .line 42
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 66
    .line 67
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pInterfaceName(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, ": txBytes "

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 86
    .line 87
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 100
    .line 101
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v3, "aware_data0: txBytes "

    .line 122
    .line 123
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 133
    .line 134
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 141
    .line 142
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 147
    .line 148
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v3, "swlan0: txBytes "

    .line 169
    .line 170
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 174
    .line 175
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 180
    .line 181
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 188
    .line 189
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 194
    .line 195
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_3
    return-void
.end method

.method private updateInterfacesTrafficStats()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "wlan0"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pInterfaceName(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "aware_data0"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/util/HashMap;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "swlan0"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 69
    .line 70
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x2

    .line 11
    const/4 v7, 0x1

    .line 12
    if-eq v2, v7, :cond_12

    .line 13
    .line 14
    const-string v10, "SemWifiResourceManager"

    .line 15
    .line 16
    if-eq v2, v6, :cond_d

    .line 17
    .line 18
    const/4 v11, 0x5

    .line 19
    const/4 v12, 0x4

    .line 20
    if-eq v2, v5, :cond_6

    .line 21
    .line 22
    if-eq v2, v12, :cond_1

    .line 23
    .line 24
    if-eq v2, v11, :cond_0

    .line 25
    .line 26
    goto/16 :goto_11

    .line 27
    .line 28
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmSafeModeEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "WIFI_SAFE_MODE_CHANGED "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmSafeModeEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, [I

    .line 68
    .line 69
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 70
    .line 71
    aget v4, v1, v6

    .line 72
    .line 73
    if-ne v4, v7, :cond_2

    .line 74
    .line 75
    move v4, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move v4, v7

    .line 78
    :goto_0
    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmScpmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 82
    .line 83
    aget v1, v1, v5

    .line 84
    .line 85
    if-ne v1, v7, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v3, v7

    .line 89
    :goto_1
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmScpmBwSwitchDisable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmScpmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const-string v2, "Enable"

    .line 99
    .line 100
    const-string v3, "Disable"

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    move-object v1, v3

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move-object v1, v2

    .line 107
    :goto_2
    const-string v4, "DYNAMIC_TX "

    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmScpmBwSwitchDisable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    move-object v2, v3

    .line 125
    :cond_5
    const-string v0, "DYNAMIC_BW "

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsEnableTxPowerLogging(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_1f

    .line 142
    .line 143
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 144
    .line 145
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "wlan0"

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTxPower(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    const-string v13, "NumberFormatException for WIFI_TX_POWER_LOGGING"

    .line 160
    .line 161
    const-string v14, " "

    .line 162
    .line 163
    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    .line 164
    .line 165
    if-nez v6, :cond_7

    .line 166
    .line 167
    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    array-length v6, v1

    .line 172
    if-lt v6, v4, :cond_7

    .line 173
    .line 174
    :try_start_0
    aget-object v4, v1, v12

    .line 175
    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    move/from16 v17, v11

    .line 181
    .line 182
    int-to-double v11, v4

    .line 183
    mul-double/2addr v11, v15

    .line 184
    :try_start_1
    aget-object v1, v1, v17

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    move v9, v7

    .line 191
    int-to-double v7, v1

    .line 192
    mul-double v6, v7, v15

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :catch_0
    move v9, v7

    .line 196
    goto :goto_3

    .line 197
    :catch_1
    move v9, v7

    .line 198
    const-wide/16 v11, 0x0

    .line 199
    .line 200
    :goto_3
    invoke-static {v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    const-wide/16 v6, 0x0

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_7
    move v9, v7

    .line 207
    const-wide/16 v6, 0x0

    .line 208
    .line 209
    const-wide/16 v11, 0x0

    .line 210
    .line 211
    :goto_4
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 212
    .line 213
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgettxPowerFromDsiTable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    const/16 v4, 0x13

    .line 222
    .line 223
    if-eqz v1, :cond_8

    .line 224
    .line 225
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 226
    .line 227
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    invoke-virtual {v8, v2, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTxPowerFromDsiTable(Ljava/lang/String;I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputtxPowerFromDsiTable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_8
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 239
    .line 240
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgettxPowerFromDsiTable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_c

    .line 249
    .line 250
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 251
    .line 252
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgettxPowerFromDsiTable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    array-length v8, v1

    .line 261
    const-string v14, ""

    .line 262
    .line 263
    if-ne v8, v4, :cond_b

    .line 264
    .line 265
    :try_start_2
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 266
    .line 267
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmCurrentFrequency(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    invoke-static {v4}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_9

    .line 276
    .line 277
    const/16 v4, 0xa

    .line 278
    .line 279
    aget-object v1, v1, v4

    .line 280
    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    :goto_5
    int-to-double v13, v1

    .line 286
    mul-double/2addr v13, v15

    .line 287
    goto :goto_7

    .line 288
    :cond_9
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 289
    .line 290
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmCurrentFrequency(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-static {v4}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_a

    .line 299
    .line 300
    const/16 v4, 0xd

    .line 301
    .line 302
    aget-object v1, v1, v4

    .line 303
    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    goto :goto_5

    .line 309
    :cond_a
    const/16 v4, 0x10

    .line 310
    .line 311
    aget-object v1, v1, v4

    .line 312
    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 317
    goto :goto_5

    .line 318
    :catch_2
    invoke-static {v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 322
    .line 323
    invoke-static {v1, v14}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputtxPowerFromDsiTable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 328
    .line 329
    invoke-static {v1, v14}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputtxPowerFromDsiTable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_c
    :goto_6
    const-wide/16 v13, 0x0

    .line 333
    .line 334
    :goto_7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->getDbsMode()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 341
    .line 342
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmBackOffController(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getLastRequestedTasLevel()I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    invoke-direct {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->getDsiIdFromTasLevel(I)I

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 355
    .line 356
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    invoke-virtual {v10, v2, v1, v8}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getAverageTxPower(Ljava/lang/String;ZI)[I

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    aget v2, v1, v3

    .line 365
    .line 366
    aget v1, v1, v9

    .line 367
    .line 368
    new-instance v8, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;

    .line 369
    .line 370
    invoke-direct {v8, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;-><init>(I)V

    .line 371
    .line 372
    .line 373
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 374
    .line 375
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mgetTime(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-static {v8, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputtime(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const/4 v3, -0x1

    .line 383
    invoke-static {v8, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputstart(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V

    .line 384
    .line 385
    .line 386
    invoke-static {v8, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputindex(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V

    .line 387
    .line 388
    .line 389
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 390
    .line 391
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmCurrentFrequency(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    invoke-static {v8, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputfrequeny(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V

    .line 396
    .line 397
    .line 398
    invoke-static {v8, v11, v12}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputtxPowerAnt1(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;D)V

    .line 399
    .line 400
    .line 401
    invoke-static {v8, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputtxPowerAnt2(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;D)V

    .line 402
    .line 403
    .line 404
    invoke-static {v8, v4}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputtasLevel(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V

    .line 405
    .line 406
    .line 407
    invoke-static {v8, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputavgTxPower(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V

    .line 408
    .line 409
    .line 410
    invoke-static {v8, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputwindowSize(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;I)V

    .line 411
    .line 412
    .line 413
    invoke-static {v8, v13, v14}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;->-$$Nest$fputtargetSarMidPlimit(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;D)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 417
    .line 418
    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mupdateWifiTxPowerHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiTxPowerDump;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    const-wide/16 v2, 0x1f4

    .line 426
    .line 427
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 428
    .line 429
    .line 430
    goto/16 :goto_11

    .line 431
    .line 432
    :cond_d
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 433
    .line 434
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmSafeModeEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eqz v2, :cond_e

    .line 439
    .line 440
    goto/16 :goto_11

    .line 441
    .line 442
    :cond_e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 443
    .line 444
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v1, Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 447
    .line 448
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 449
    .line 450
    .line 451
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 452
    .line 453
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioOnFreqTimeMillis()J

    .line 458
    .line 459
    .line 460
    move-result-wide v1

    .line 461
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 462
    .line 463
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-virtual {v3}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis()J

    .line 468
    .line 469
    .line 470
    move-result-wide v3

    .line 471
    long-to-double v3, v3

    .line 472
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 473
    .line 474
    mul-double/2addr v3, v6

    .line 475
    long-to-double v1, v1

    .line 476
    div-double/2addr v3, v1

    .line 477
    const-wide v1, 0x406fe00000000000L    # 255.0

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    mul-double/2addr v3, v1

    .line 483
    double-to-int v13, v3

    .line 484
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 485
    .line 486
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi()I

    .line 491
    .line 492
    .line 493
    move-result v12

    .line 494
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 495
    .line 496
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmCurrentFrequency(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiResourceManager;I)I

    .line 501
    .line 502
    .line 503
    move-result v14

    .line 504
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 505
    .line 506
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 507
    .line 508
    .line 509
    move-result-wide v1

    .line 510
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 511
    .line 512
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 513
    .line 514
    .line 515
    move-result-wide v3

    .line 516
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 517
    .line 518
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 519
    .line 520
    .line 521
    move-result-wide v6

    .line 522
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 523
    .line 524
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    move-wide v15, v6

    .line 529
    invoke-virtual {v9}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxSuccess()J

    .line 530
    .line 531
    .line 532
    move-result-wide v5

    .line 533
    invoke-static {v8, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmTxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 534
    .line 535
    .line 536
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 537
    .line 538
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxRetries()J

    .line 543
    .line 544
    .line 545
    move-result-wide v6

    .line 546
    invoke-static {v5, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmTxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 547
    .line 548
    .line 549
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 550
    .line 551
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalTxBad()J

    .line 556
    .line 557
    .line 558
    move-result-wide v6

    .line 559
    invoke-static {v5, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmTxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 560
    .line 561
    .line 562
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 563
    .line 564
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 565
    .line 566
    .line 567
    move-result-wide v5

    .line 568
    sub-long/2addr v5, v1

    .line 569
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 570
    .line 571
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxRetries(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 572
    .line 573
    .line 574
    move-result-wide v1

    .line 575
    sub-long/2addr v1, v3

    .line 576
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 577
    .line 578
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxBad(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 579
    .line 580
    .line 581
    move-result-wide v3

    .line 582
    sub-long/2addr v3, v15

    .line 583
    const-wide/16 v7, 0x0

    .line 584
    .line 585
    cmp-long v9, v5, v7

    .line 586
    .line 587
    if-ltz v9, :cond_10

    .line 588
    .line 589
    cmp-long v9, v1, v7

    .line 590
    .line 591
    if-ltz v9, :cond_10

    .line 592
    .line 593
    cmp-long v9, v3, v7

    .line 594
    .line 595
    if-gez v9, :cond_f

    .line 596
    .line 597
    goto :goto_8

    .line 598
    :cond_f
    move-wide/from16 v17, v1

    .line 599
    .line 600
    move-wide/from16 v19, v3

    .line 601
    .line 602
    move-wide v15, v5

    .line 603
    goto :goto_9

    .line 604
    :cond_10
    :goto_8
    move-wide v15, v7

    .line 605
    move-wide/from16 v17, v15

    .line 606
    .line 607
    move-wide/from16 v19, v17

    .line 608
    .line 609
    :goto_9
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 610
    .line 611
    invoke-static/range {v11 .. v20}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mupdatePredictThroughput(Lcom/samsung/android/server/wifi/SemWifiResourceManager;IIIJJJ)V

    .line 612
    .line 613
    .line 614
    move-wide v5, v15

    .line 615
    move-wide/from16 v1, v17

    .line 616
    .line 617
    move-wide/from16 v3, v19

    .line 618
    .line 619
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 620
    .line 621
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mupdateAvgWifiLinkStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 622
    .line 623
    .line 624
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 625
    .line 626
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmVerboseLog(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 627
    .line 628
    .line 629
    move-result v7

    .line 630
    if-eqz v7, :cond_11

    .line 631
    .line 632
    new-instance v7, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    const-string v8, "txSuccessCntDiff = "

    .line 635
    .line 636
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v5, ", txRetriesDiff = "

    .line 643
    .line 644
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    const-string v1, ", txBadDiff = "

    .line 651
    .line 652
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    :cond_11
    const-wide/16 v1, 0xa

    .line 666
    .line 667
    cmp-long v1, v3, v1

    .line 668
    .line 669
    if-lez v1, :cond_1f

    .line 670
    .line 671
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 672
    .line 673
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmSelectedTxMode(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    const/4 v2, 0x3

    .line 678
    if-ne v1, v2, :cond_1f

    .line 679
    .line 680
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 681
    .line 682
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 683
    .line 684
    .line 685
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 686
    .line 687
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$msetTxMode$1(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 688
    .line 689
    .line 690
    const-string v0, "disable TxMode because of huge TxBad"

    .line 691
    .line 692
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .line 694
    .line 695
    return-void

    .line 696
    :cond_12
    move v9, v7

    .line 697
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 698
    .line 699
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmSafeModeEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 700
    .line 701
    .line 702
    move-result v2

    .line 703
    if-eqz v2, :cond_13

    .line 704
    .line 705
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 706
    .line 707
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetisCtasSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    if-nez v2, :cond_13

    .line 712
    .line 713
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 714
    .line 715
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetisPcieSwitchSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    if-nez v2, :cond_13

    .line 720
    .line 721
    goto/16 :goto_11

    .line 722
    .line 723
    :cond_13
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 724
    .line 725
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast v1, Ljava/util/HashMap;

    .line 728
    .line 729
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Ljava/util/HashMap;)V

    .line 730
    .line 731
    .line 732
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->updateInterfacesTrafficStats()V

    .line 733
    .line 734
    .line 735
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 736
    .line 737
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsStaConnected(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 738
    .line 739
    .line 740
    move-result v1

    .line 741
    const-wide v7, 0x40a7700000000000L    # 3000.0

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    const-wide/16 v12, 0x8

    .line 752
    .line 753
    if-eqz v1, :cond_14

    .line 754
    .line 755
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 756
    .line 757
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    if-eqz v1, :cond_14

    .line 762
    .line 763
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 764
    .line 765
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 766
    .line 767
    .line 768
    move-result-wide v1

    .line 769
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 770
    .line 771
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 772
    .line 773
    .line 774
    move-result-object v14

    .line 775
    iget-wide v14, v14, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 776
    .line 777
    invoke-static {v5, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 778
    .line 779
    .line 780
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 781
    .line 782
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 783
    .line 784
    .line 785
    move-result-wide v14

    .line 786
    sub-long/2addr v14, v1

    .line 787
    mul-long/2addr v14, v12

    .line 788
    long-to-double v1, v14

    .line 789
    div-double/2addr v1, v10

    .line 790
    div-double/2addr v1, v7

    .line 791
    invoke-static {v5, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 792
    .line 793
    .line 794
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 795
    .line 796
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 797
    .line 798
    .line 799
    move-result-wide v1

    .line 800
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 801
    .line 802
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 803
    .line 804
    .line 805
    move-result-object v14

    .line 806
    iget-wide v14, v14, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 807
    .line 808
    invoke-static {v5, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 809
    .line 810
    .line 811
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 812
    .line 813
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 814
    .line 815
    .line 816
    move-result-wide v14

    .line 817
    sub-long/2addr v14, v1

    .line 818
    mul-long/2addr v14, v12

    .line 819
    long-to-double v1, v14

    .line 820
    div-double/2addr v1, v10

    .line 821
    div-double/2addr v1, v7

    .line 822
    invoke-static {v5, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 823
    .line 824
    .line 825
    goto :goto_a

    .line 826
    :cond_14
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 827
    .line 828
    const-wide/16 v14, 0x0

    .line 829
    .line 830
    invoke-static {v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 831
    .line 832
    .line 833
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 834
    .line 835
    invoke-static {v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 836
    .line 837
    .line 838
    :goto_a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 839
    .line 840
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsP2pConnected(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 841
    .line 842
    .line 843
    move-result v1

    .line 844
    if-eqz v1, :cond_15

    .line 845
    .line 846
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 847
    .line 848
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    if-eqz v1, :cond_15

    .line 853
    .line 854
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 855
    .line 856
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 857
    .line 858
    .line 859
    move-result-wide v1

    .line 860
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 861
    .line 862
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 863
    .line 864
    .line 865
    move-result-object v14

    .line 866
    iget-wide v14, v14, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 867
    .line 868
    invoke-static {v5, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmP2pTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 869
    .line 870
    .line 871
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 872
    .line 873
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 874
    .line 875
    .line 876
    move-result-wide v14

    .line 877
    sub-long/2addr v14, v1

    .line 878
    mul-long/2addr v14, v12

    .line 879
    long-to-double v1, v14

    .line 880
    div-double/2addr v1, v10

    .line 881
    div-double/2addr v1, v7

    .line 882
    invoke-static {v5, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmP2pTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 883
    .line 884
    .line 885
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 886
    .line 887
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 888
    .line 889
    .line 890
    move-result-wide v1

    .line 891
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 892
    .line 893
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 894
    .line 895
    .line 896
    move-result-object v14

    .line 897
    iget-wide v14, v14, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 898
    .line 899
    invoke-static {v5, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmP2pRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 900
    .line 901
    .line 902
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 903
    .line 904
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 905
    .line 906
    .line 907
    move-result-wide v14

    .line 908
    sub-long/2addr v14, v1

    .line 909
    mul-long/2addr v14, v12

    .line 910
    long-to-double v1, v14

    .line 911
    div-double/2addr v1, v10

    .line 912
    div-double/2addr v1, v7

    .line 913
    invoke-static {v5, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmP2pRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 914
    .line 915
    .line 916
    goto :goto_b

    .line 917
    :cond_15
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 918
    .line 919
    const-wide/16 v14, 0x0

    .line 920
    .line 921
    invoke-static {v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmP2pTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 922
    .line 923
    .line 924
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 925
    .line 926
    invoke-static {v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmP2pRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 927
    .line 928
    .line 929
    :goto_b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 930
    .line 931
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareCountDataPath(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 932
    .line 933
    .line 934
    move-result v1

    .line 935
    if-lez v1, :cond_16

    .line 936
    .line 937
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 938
    .line 939
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    if-eqz v1, :cond_16

    .line 944
    .line 945
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 946
    .line 947
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 948
    .line 949
    .line 950
    move-result-wide v1

    .line 951
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 952
    .line 953
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 954
    .line 955
    .line 956
    move-result-object v14

    .line 957
    iget-wide v14, v14, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 958
    .line 959
    invoke-static {v5, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 960
    .line 961
    .line 962
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 963
    .line 964
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 965
    .line 966
    .line 967
    move-result-wide v14

    .line 968
    sub-long/2addr v14, v1

    .line 969
    mul-long/2addr v14, v12

    .line 970
    long-to-double v1, v14

    .line 971
    div-double/2addr v1, v10

    .line 972
    div-double/2addr v1, v7

    .line 973
    invoke-static {v5, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 974
    .line 975
    .line 976
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 977
    .line 978
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 979
    .line 980
    .line 981
    move-result-wide v1

    .line 982
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 983
    .line 984
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 985
    .line 986
    .line 987
    move-result-object v14

    .line 988
    iget-wide v14, v14, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 989
    .line 990
    invoke-static {v5, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 991
    .line 992
    .line 993
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 994
    .line 995
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 996
    .line 997
    .line 998
    move-result-wide v14

    .line 999
    sub-long/2addr v14, v1

    .line 1000
    mul-long/2addr v14, v12

    .line 1001
    long-to-double v1, v14

    .line 1002
    div-double/2addr v1, v10

    .line 1003
    div-double/2addr v1, v7

    .line 1004
    invoke-static {v5, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 1005
    .line 1006
    .line 1007
    goto :goto_c

    .line 1008
    :cond_16
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1009
    .line 1010
    const-wide/16 v14, 0x0

    .line 1011
    .line 1012
    invoke-static {v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 1013
    .line 1014
    .line 1015
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1016
    .line 1017
    invoke-static {v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmAwareRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 1018
    .line 1019
    .line 1020
    :goto_c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1021
    .line 1022
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsMobileHotspotEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v1

    .line 1026
    if-eqz v1, :cond_17

    .line 1027
    .line 1028
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1029
    .line 1030
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    if-eqz v1, :cond_17

    .line 1035
    .line 1036
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1037
    .line 1038
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 1039
    .line 1040
    .line 1041
    move-result-wide v1

    .line 1042
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1043
    .line 1044
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v14

    .line 1048
    iget-wide v14, v14, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 1049
    .line 1050
    invoke-static {v5, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmMhsTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 1051
    .line 1052
    .line 1053
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1054
    .line 1055
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 1056
    .line 1057
    .line 1058
    move-result-wide v14

    .line 1059
    sub-long/2addr v14, v1

    .line 1060
    mul-long/2addr v14, v12

    .line 1061
    long-to-double v1, v14

    .line 1062
    div-double/2addr v1, v10

    .line 1063
    div-double/2addr v1, v7

    .line 1064
    invoke-static {v5, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmMhsTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1068
    .line 1069
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 1070
    .line 1071
    .line 1072
    move-result-wide v1

    .line 1073
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1074
    .line 1075
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTrafficStats(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v14

    .line 1079
    iget-wide v14, v14, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 1080
    .line 1081
    invoke-static {v5, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmMhsRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 1082
    .line 1083
    .line 1084
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1085
    .line 1086
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsRxBytes(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)J

    .line 1087
    .line 1088
    .line 1089
    move-result-wide v14

    .line 1090
    sub-long/2addr v14, v1

    .line 1091
    mul-long/2addr v14, v12

    .line 1092
    long-to-double v1, v14

    .line 1093
    div-double/2addr v1, v10

    .line 1094
    div-double/2addr v1, v7

    .line 1095
    invoke-static {v5, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmMhsRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 1096
    .line 1097
    .line 1098
    goto :goto_d

    .line 1099
    :cond_17
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1100
    .line 1101
    const-wide/16 v14, 0x0

    .line 1102
    .line 1103
    invoke-static {v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmMhsTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 1104
    .line 1105
    .line 1106
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1107
    .line 1108
    invoke-static {v1, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputmMhsRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;D)V

    .line 1109
    .line 1110
    .line 1111
    :goto_d
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;

    .line 1112
    .line 1113
    invoke-direct {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;-><init>(I)V

    .line 1114
    .line 1115
    .line 1116
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1117
    .line 1118
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1119
    .line 1120
    .line 1121
    move-result-wide v7

    .line 1122
    invoke-static {v1, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->-$$Nest$fputtxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;D)V

    .line 1123
    .line 1124
    .line 1125
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1126
    .line 1127
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1128
    .line 1129
    .line 1130
    move-result-wide v7

    .line 1131
    invoke-static {v1, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;->-$$Nest$fputrxRate(Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;D)V

    .line 1132
    .line 1133
    .line 1134
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1135
    .line 1136
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1137
    .line 1138
    .line 1139
    move-result-wide v7

    .line 1140
    const-wide/16 v17, 0x0

    .line 1141
    .line 1142
    cmpl-double v2, v7, v17

    .line 1143
    .line 1144
    if-lez v2, :cond_18

    .line 1145
    .line 1146
    move v2, v9

    .line 1147
    goto :goto_e

    .line 1148
    :cond_18
    move v2, v3

    .line 1149
    :goto_e
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1150
    .line 1151
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1152
    .line 1153
    .line 1154
    move-result-wide v7

    .line 1155
    cmpl-double v5, v7, v17

    .line 1156
    .line 1157
    if-lez v5, :cond_19

    .line 1158
    .line 1159
    move v5, v9

    .line 1160
    goto :goto_f

    .line 1161
    :cond_19
    move v5, v3

    .line 1162
    :goto_f
    add-int/2addr v2, v5

    .line 1163
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1164
    .line 1165
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1166
    .line 1167
    .line 1168
    move-result-wide v7

    .line 1169
    cmpl-double v5, v7, v17

    .line 1170
    .line 1171
    if-lez v5, :cond_1a

    .line 1172
    .line 1173
    move v5, v9

    .line 1174
    goto :goto_10

    .line 1175
    :cond_1a
    move v5, v3

    .line 1176
    :goto_10
    add-int/2addr v2, v5

    .line 1177
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1178
    .line 1179
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1180
    .line 1181
    .line 1182
    move-result-wide v7

    .line 1183
    cmpl-double v5, v7, v17

    .line 1184
    .line 1185
    if-lez v5, :cond_1b

    .line 1186
    .line 1187
    move v3, v9

    .line 1188
    :cond_1b
    add-int/2addr v2, v3

    .line 1189
    if-lt v2, v6, :cond_1c

    .line 1190
    .line 1191
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1192
    .line 1193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v7

    .line 1197
    invoke-static {v2, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fputlastDbsTime(Lcom/samsung/android/server/wifi/SemWifiResourceManager;J)V

    .line 1198
    .line 1199
    .line 1200
    :cond_1c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1201
    .line 1202
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mupdateWifiTrafficStatsHistory(Lcom/samsung/android/server/wifi/SemWifiResourceManager;Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiRateStats;)V

    .line 1203
    .line 1204
    .line 1205
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1206
    .line 1207
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$mupdateAvgAndPeakTxRxRates(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 1208
    .line 1209
    .line 1210
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1211
    .line 1212
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetisPcieSwitchSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v1

    .line 1216
    if-eqz v1, :cond_1d

    .line 1217
    .line 1218
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1219
    .line 1220
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1221
    .line 1222
    .line 1223
    move-result-wide v2

    .line 1224
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1225
    .line 1226
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1227
    .line 1228
    .line 1229
    move-result-wide v7

    .line 1230
    add-double/2addr v2, v7

    .line 1231
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1232
    .line 1233
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v7

    .line 1237
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1238
    .line 1239
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmP2pRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1240
    .line 1241
    .line 1242
    move-result-wide v10

    .line 1243
    add-double/2addr v7, v10

    .line 1244
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1245
    .line 1246
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1247
    .line 1248
    .line 1249
    move-result-wide v10

    .line 1250
    add-double/2addr v7, v10

    .line 1251
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1252
    .line 1253
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmAwareRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1254
    .line 1255
    .line 1256
    move-result-wide v10

    .line 1257
    add-double/2addr v7, v10

    .line 1258
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1259
    .line 1260
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsTxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1261
    .line 1262
    .line 1263
    move-result-wide v10

    .line 1264
    add-double/2addr v7, v10

    .line 1265
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1266
    .line 1267
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmMhsRxRateMbps(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)D

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v10

    .line 1271
    add-double/2addr v7, v10

    .line 1272
    invoke-static {v1, v2, v3, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$msetPcieMode(Lcom/samsung/android/server/wifi/SemWifiResourceManager;DD)V

    .line 1273
    .line 1274
    .line 1275
    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1276
    .line 1277
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetisTxModeSwitchSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1278
    .line 1279
    .line 1280
    move-result v1

    .line 1281
    if-eqz v1, :cond_1e

    .line 1282
    .line 1283
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1284
    .line 1285
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmSafeModeEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v1

    .line 1289
    if-nez v1, :cond_1e

    .line 1290
    .line 1291
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1292
    .line 1293
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmScpmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v1

    .line 1297
    if-nez v1, :cond_1e

    .line 1298
    .line 1299
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1300
    .line 1301
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmTxModeDisabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v1

    .line 1305
    if-nez v1, :cond_1e

    .line 1306
    .line 1307
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1308
    .line 1309
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmDynamicDisabledbyTdls(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v1

    .line 1313
    if-nez v1, :cond_1e

    .line 1314
    .line 1315
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1316
    .line 1317
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmIsStaConnected(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v1

    .line 1321
    if-eqz v1, :cond_1e

    .line 1322
    .line 1323
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1324
    .line 1325
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmSelectedTxMode(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 1326
    .line 1327
    .line 1328
    move-result v1

    .line 1329
    if-eq v1, v9, :cond_1e

    .line 1330
    .line 1331
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1332
    .line 1333
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmSelectedTxMode(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 1334
    .line 1335
    .line 1336
    move-result v1

    .line 1337
    if-eq v1, v6, :cond_1e

    .line 1338
    .line 1339
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1340
    .line 1341
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$msetTxMode(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 1342
    .line 1343
    .line 1344
    :cond_1e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1345
    .line 1346
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetisBwSwitchSupported(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v1

    .line 1350
    if-eqz v1, :cond_1f

    .line 1351
    .line 1352
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1353
    .line 1354
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmChannelWidth(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 1355
    .line 1356
    .line 1357
    move-result v1

    .line 1358
    const/4 v2, 0x3

    .line 1359
    if-lt v1, v2, :cond_1f

    .line 1360
    .line 1361
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1362
    .line 1363
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmWifiStandard(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 1364
    .line 1365
    .line 1366
    move-result v1

    .line 1367
    if-gt v1, v4, :cond_1f

    .line 1368
    .line 1369
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1370
    .line 1371
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmSafeModeEnabled(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1372
    .line 1373
    .line 1374
    move-result v1

    .line 1375
    if-nez v1, :cond_1f

    .line 1376
    .line 1377
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1378
    .line 1379
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmScpmBwSwitchDisable(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1380
    .line 1381
    .line 1382
    move-result v1

    .line 1383
    if-nez v1, :cond_1f

    .line 1384
    .line 1385
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1386
    .line 1387
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmBwSwitchCnt(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)I

    .line 1388
    .line 1389
    .line 1390
    move-result v1

    .line 1391
    if-ge v1, v6, :cond_1f

    .line 1392
    .line 1393
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1394
    .line 1395
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$fgetmDynamicDisabledbyTdls(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v1

    .line 1399
    if-nez v1, :cond_1f

    .line 1400
    .line 1401
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiResourceManager$WifiResourceHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 1402
    .line 1403
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->-$$Nest$msetBandwidth(Lcom/samsung/android/server/wifi/SemWifiResourceManager;)V

    .line 1404
    .line 1405
    .line 1406
    :cond_1f
    :goto_11
    return-void
.end method
