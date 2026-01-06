.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;->registerAudioAndUsageStatsWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAudioManager(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Landroid/media/AudioManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v6, 0x2

    .line 40
    if-ne v5, v6, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-ne v5, v6, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/16 v6, 0x2710

    .line 53
    .line 54
    if-lt v5, v6, :cond_0

    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    if-ne v0, v5, :cond_0

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    move v1, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v0, v4

    .line 66
    move v1, v0

    .line 67
    :goto_0
    const/4 v2, 0x4

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    const-string v1, "SemWifiOptimizer"

    .line 79
    .line 80
    const-string v4, "Audio path setup over network"

    .line 81
    .line 82
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateVoipCalling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1, v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateVoipCalling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ne v0, v3, :cond_4

    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0, v2, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->updateAudioState(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
