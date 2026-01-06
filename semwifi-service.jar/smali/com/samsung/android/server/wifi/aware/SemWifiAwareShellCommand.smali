.class public Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiAwareShellCommand"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSemWifiAwareManager:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class v0, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->mSemWifiAwareManager:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 15
    .line 16
    return-void
.end method

.method private checkRootPermission()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 9
    .line 10
    const-string v1, "Uid "

    .line 11
    .line 12
    const-string v2, " does not have access to sem_wifi_aware commands"

    .line 13
    .line 14
    invoke-static {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method private getNextArgRequiredTrueOrFalse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v1, "Expected \'"

    .line 24
    .line 25
    const-string v2, "\' or \'"

    .line 26
    .line 27
    const-string v3, "\' as next arg but got \'"

    .line 28
    .line 29
    invoke-static {v1, p1, v2, p2, v3}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "\'"

    .line 34
    .line 35
    invoke-static {p1, p0, p2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method private handleCommand(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sparse-switch v2, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    :goto_0
    move v2, v1

    .line 14
    goto :goto_1

    .line 15
    :sswitch_0
    const-string v2, "set-cluster-merging-enabled"

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x4

    .line 25
    goto :goto_1

    .line 26
    :sswitch_1
    const-string v2, "is-pre-enabled"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x3

    .line 36
    goto :goto_1

    .line 37
    :sswitch_2
    const-string v2, "get-std-plus-feature"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v2, 0x2

    .line 47
    goto :goto_1

    .line 48
    :sswitch_3
    const-string v2, "get-aware-concurrency"

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v2, 0x1

    .line 58
    goto :goto_1

    .line 59
    :sswitch_4
    const-string v2, "set-nan-command"

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move v2, v0

    .line 69
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :pswitch_0
    const-string p1, "true"

    .line 78
    .line 79
    const-string p2, "false"

    .line 80
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->getNextArgRequiredTrueOrFalse(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->mSemWifiAwareManager:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->setClusterMergingEnabled(Z)V

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->mSemWifiAwareManager:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->isPreEnabled()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "preEnabled: "

    .line 100
    .line 101
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return v0

    .line 115
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->mSemWifiAwareManager:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->getStdPlusFeature()J

    .line 118
    .line 119
    .line 120
    move-result-wide p0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v2, "feature: "

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return v0

    .line 139
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->mSemWifiAwareManager:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->isAwareP2pConcurrencySupported()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->mSemWifiAwareManager:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->isAwareSoftApConcurrencySupported()Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v2, "AwareP2pConcurrency: "

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v1, "AwareSoftApConcurrency: "

    .line 171
    .line 172
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return v0

    .line 186
    :pswitch_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-static {p2}, Lcom/samsung/android/wifi/util/SemHexEncoding;->decode(Ljava/lang/String;)[B

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->mSemWifiAwareManager:Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    .line 203
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->setNanCommand(I[B)V

    .line 205
    .line 206
    .line 207
    return v0

    .line 208
    :catch_0
    const-string p0, "Invalid argument to \'set-nan-command\' - must be an integer"

    .line 209
    .line 210
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return v1

    .line 214
    nop

    .line 215
    :sswitch_data_0
    .sparse-switch
        -0x5d9a9452 -> :sswitch_4
        0xb3823ed -> :sswitch_3
        0x40a3b6c4 -> :sswitch_2
        0x71747df4 -> :sswitch_1
        0x7fd96e2b -> :sswitch_0
    .end sparse-switch

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->checkRootPermission()V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string p1, "help"

    .line 19
    .line 20
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareShellCommand;->handleCommand(Ljava/lang/String;Ljava/io/PrintWriter;)I

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Exception: "

    .line 29
    .line 30
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "SEM Wi-Fi Aware (sem_wifi_aware) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  set-cluster-merging-enabled"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "  is-pre-enabled"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "  get-std-plus-feature"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "  set-nan-command"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "  get-aware-concurrency"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
