.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    const/4 p2, 0x1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/app/ActivityManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/app/ActivityManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move v1, p1

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ge v1, v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 47
    .line 48
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 49
    .line 50
    const-string v4, "com.samsung.android.wifi.ai"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 59
    .line 60
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 61
    .line 62
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "AI ser. PID check err: "

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 94
    .line 95
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 114
    .line 115
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catch_1
    move-exception p1

    .line 133
    goto :goto_4

    .line 134
    :cond_3
    :goto_3
    move p1, p2

    .line 135
    :cond_4
    invoke-interface {v1, p1}, Lcom/samsung/android/wifi/ai/ISemWifiAiService;->toggleDebugMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v1, "AI ser. debug conf. err: "

    .line 144
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_5
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 2
    .line 3
    const-string v0, "Wi-Fi AI ser. disc."

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/ServiceConnection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetaiServiceIntent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-ltz p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/16 v0, 0x9

    .line 54
    .line 55
    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 62
    .line 63
    const/4 v0, -0x1

    .line 64
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "AI ser. unbind err: "

    .line 73
    .line 74
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 99
    .line 100
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const/4 p1, 0x6

    .line 105
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    .line 111
    .line 112
    return-void
.end method
