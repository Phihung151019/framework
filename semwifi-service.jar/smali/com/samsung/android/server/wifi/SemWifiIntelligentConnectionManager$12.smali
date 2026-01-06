.class Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrimaryInterfaceChanged(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBootComplete(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    invoke-static {v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    .line 99
    .line 100
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 107
    .line 108
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_3

    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Set;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 145
    .line 146
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const/4 v0, 0x1

    .line 156
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const/16 v4, 0x1f4

    .line 176
    .line 177
    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 200
    .line 201
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBootComplete(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_3

    .line 210
    .line 211
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$12;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 218
    .line 219
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 228
    .line 229
    .line 230
    :cond_3
    return-void
.end method
