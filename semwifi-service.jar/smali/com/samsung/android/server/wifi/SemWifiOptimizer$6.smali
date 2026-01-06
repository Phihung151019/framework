.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string p2, "pause: "

    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string p3, "SemWifiOptimizer"

    .line 22
    .line 23
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateAllowedAppRunning(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/4 p1, 0x6

    .line 78
    const/4 p2, 0x0

    .line 79
    invoke-static {p0, p1, p2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 1

    .line 1
    const-string p2, "resume: "

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p3}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-eqz p1, :cond_7

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p3, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 24
    .line 25
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    const-string p3, "SemWifiOptimizer"

    .line 32
    .line 33
    new-instance p4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 49
    .line 50
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    const/4 p3, 0x0

    .line 59
    if-nez p2, :cond_6

    .line 60
    .line 61
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 62
    .line 63
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSemGamePackage(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    invoke-static {p2, p4}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmIsGamePkg(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 76
    .line 77
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-string p4, "activity"

    .line 82
    .line 83
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Landroid/app/ActivityManager;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result p4

    .line 103
    if-eqz p4, :cond_4

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    check-cast p4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 110
    .line 111
    iget-object v0, p4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    const-string p2, "com.sec.android.app.launcher"

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 128
    .line 129
    iput p3, p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 133
    .line 134
    iget p2, p4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 135
    .line 136
    iput p2, p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 137
    .line 138
    :goto_0
    iget p3, p4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 139
    .line 140
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 147
    .line 148
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 165
    .line 166
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 176
    .line 177
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateAllowedAppRunning(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_5

    .line 182
    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_5

    .line 190
    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 198
    .line 199
    iget p2, p2, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 200
    .line 201
    const/4 p4, 0x6

    .line 202
    const/4 v0, 0x1

    .line 203
    invoke-static {p1, p4, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 208
    .line 209
    .line 210
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 211
    .line 212
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mevaluateTrafficPolling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 216
    .line 217
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_7

    .line 222
    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 224
    .line 225
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 230
    .line 231
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {p1, p0, p3}, Lcom/samsung/android/server/wifi/SemApeController;->updateForegroundApp(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    .line 242
    .line 243
    :cond_7
    :goto_1
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    return-void
.end method
