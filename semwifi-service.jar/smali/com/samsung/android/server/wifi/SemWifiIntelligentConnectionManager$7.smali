.class Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

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
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/wifi/intelligence/iwh/IIwhTrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/intelligence/iwh/IIwhTrService;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettrProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p2, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastTrScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {p2, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastTrTimeStampMs(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    invoke-static {p2, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 40
    .line 41
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/app/ActivityManager;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/app/ActivityManager;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ge v1, v2, :cond_1

    .line 63
    .line 64
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 69
    .line 70
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 71
    .line 72
    const-string v4, "com.samsung.android.wifi.intelligence:iwhTrService"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_0

    .line 79
    .line 80
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 81
    .line 82
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 83
    .line 84
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    move-object p2, v0

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 95
    .line 96
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 101
    .line 102
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 107
    .line 108
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestTrMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    const/16 v2, 0x50

    .line 117
    .line 118
    const/16 v3, 0x1e

    .line 119
    .line 120
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/wifi/intelligence/iwh/IIwhTrService;->initialize(Ljava/lang/String;IIIZ)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v1, "Tr. triggered: "

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/4 v1, 0x2

    .line 149
    invoke-static {p2, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 154
    .line 155
    const-string v0, "IWH tr. ser. error: "

    .line 156
    .line 157
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string p1, "SemWifiIntelligentConnectionManager"

    .line 2
    .line 3
    const-string v0, "Iwh tr. ser. disc."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhTrServiceConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ServiceConnection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ltz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/16 v0, 0x9

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettrProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 72
    .line 73
    const-string v0, "IWH tr. service unbind err: "

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    return-void
.end method
