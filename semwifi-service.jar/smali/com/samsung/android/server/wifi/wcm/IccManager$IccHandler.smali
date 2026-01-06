.class Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private deleteAllFile(Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_1
    if-ge v2, v1, :cond_3

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->deleteAllFile(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 32
    .line 33
    .line 34
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private deleteKeyData(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/data/com.samsung.android.wifi.intelligence/files/icc/"

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->deleteAllFile(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private saveData(JZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 16
    .line 17
    const-string v2, "/data/data/com.samsung.android.wifi.intelligence/files/icc"

    .line 18
    .line 19
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "%s/%s/%d"

    .line 24
    .line 25
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/io/File;

    .line 30
    .line 31
    const-string v2, "/TrData.csv"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 53
    .line 54
    new-instance v3, Ljava/io/FileReader;

    .line 55
    .line 56
    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .line 61
    .line 62
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, ","

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 95
    .line 96
    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmScanResultConnected(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_2

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 120
    .line 121
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v6}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v6, "|"

    .line 133
    .line 134
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 138
    .line 139
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :try_start_3
    new-instance v2, Ljava/io/BufferedWriter;

    .line 151
    .line 152
    new-instance v3, Ljava/io/FileWriter;

    .line 153
    .line 154
    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 158
    .line 159
    .line 160
    :try_start_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/16 v3, 0x64

    .line 165
    .line 166
    if-le v1, v3, :cond_3

    .line 167
    .line 168
    const/4 v1, 0x1

    .line 169
    goto :goto_2

    .line 170
    :cond_3
    const/4 v1, 0x0

    .line 171
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-ge v1, v3, :cond_4

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    .line 188
    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catchall_1
    move-exception p1

    .line 193
    goto :goto_3

    .line 194
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 198
    .line 199
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 204
    .line 205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 206
    .line 207
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    filled-new-array {v1, p0, p1, p2}, [Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    const-string p1, "save, key: %s, groupId: %d, connDuration: %d, isTrue: %b"

    .line 226
    .line 227
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :catch_0
    move-exception p1

    .line 236
    goto :goto_5

    .line 237
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :catchall_2
    move-exception p2

    .line 242
    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    :goto_4
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 246
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :catch_1
    move-exception p1

    .line 257
    goto :goto_8

    .line 258
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 259
    .line 260
    .line 261
    goto :goto_7

    .line 262
    :catchall_3
    move-exception p2

    .line 263
    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    :goto_7
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 267
    :goto_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xd

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto/16 :goto_2

    .line 12
    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmInvalidTimeStamp(Lcom/samsung/android/server/wifi/wcm/IccManager;J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmWifiConnectivityMonitor(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/internal/util/State;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 40
    .line 41
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmIsAlreadyTimeout(Lcom/samsung/android/server/wifi/wcm/IccManager;Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/net/wifi/WifiInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/net/wifi/WifiInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-boolean v0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 83
    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "Level1State"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v0, "ValidNonSwitchableState"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    :cond_2
    move v3, v4

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmIccHandler(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 134
    .line 135
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$mgetKeyFromConfig(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->deleteKeyData(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmOnceDisabledNetworkMap(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/HashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Ljava/lang/Long;

    .line 164
    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, "removed from disabledMap"

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_5
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 196
    .line 197
    new-instance v0, Ljava/util/Date;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 203
    .line 204
    .line 205
    move-result-wide v2

    .line 206
    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmInvalidTimeStamp(Lcom/samsung/android/server/wifi/wcm/IccManager;J)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 210
    .line 211
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/net/wifi/WifiInfo;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_4

    .line 216
    .line 217
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 218
    .line 219
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmOnceDisabledNetworkMap(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/HashMap;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    monitor-enter p1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 225
    .line 226
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmOnceDisabledNetworkMap(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/HashMap;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 231
    .line 232
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/net/wifi/WifiInfo;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    monitor-exit p1

    .line 248
    goto :goto_0

    .line 249
    :catchall_0
    move-exception p0

    .line 250
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    throw p0

    .line 252
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 253
    .line 254
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/net/wifi/WifiInfo;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 258
    .line 259
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmIsAlreadyTimeout(Lcom/samsung/android/server/wifi/wcm/IccManager;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_5

    .line 264
    .line 265
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 266
    .line 267
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmIccHandler(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 272
    .line 273
    invoke-static {p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast p1, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;

    .line 284
    .line 285
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 286
    .line 287
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->-$$Nest$fgetwifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;)Landroid/net/wifi/WifiInfo;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/wcm/IccManager;Landroid/net/wifi/WifiInfo;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 295
    .line 296
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->-$$Nest$fgetscanResults(Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmScanResultConnected(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 304
    .line 305
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;->-$$Nest$fgetconnectedTime(Lcom/samsung/android/server/wifi/wcm/IccManager$ConnectionInfo;)J

    .line 306
    .line 307
    .line 308
    move-result-wide v4

    .line 309
    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmConnectedTime(Lcom/samsung/android/server/wifi/wcm/IccManager;J)V

    .line 310
    .line 311
    .line 312
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 313
    .line 314
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$mgetDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;)V

    .line 319
    .line 320
    .line 321
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 322
    .line 323
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmIsAlreadyTimeout(Lcom/samsung/android/server/wifi/wcm/IccManager;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    .line 325
    .line 326
    goto :goto_1

    .line 327
    :catch_0
    move-exception p1

    .line 328
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 338
    .line 339
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;)V

    .line 340
    .line 341
    .line 342
    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 346
    .line 347
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmIccHandler(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-static {p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    const-wide/32 v0, 0x2bf20

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    .line 360
    .line 361
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 362
    .line 363
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    if-eqz p1, :cond_5

    .line 368
    .line 369
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 370
    .line 371
    const-string v0, "Connected, key: %s, groupId: %d, bId: %d"

    .line 372
    .line 373
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 378
    .line 379
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 380
    .line 381
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    iget-object v2, v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 386
    .line 387
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 388
    .line 389
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->bssid:Ljava/lang/Integer;

    .line 394
    .line 395
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p0

    .line 403
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_2

    .line 407
    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 408
    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->unbindInfService()V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 414
    .line 415
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmIccHandler(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    const/4 v0, 0x5

    .line 420
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    .line 422
    .line 423
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 424
    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->unbindTrService()V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 430
    .line 431
    if-nez p1, :cond_6

    .line 432
    .line 433
    :cond_5
    :goto_2
    return-void

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 435
    .line 436
    check-cast p1, Ljava/util/List;

    .line 437
    .line 438
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmLastScanResults(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V

    .line 439
    .line 440
    .line 441
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 442
    .line 443
    const-string v0, "scan result updated"

    .line 444
    .line 445
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 449
    .line 450
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$mupdateInferenceList(Lcom/samsung/android/server/wifi/wcm/IccManager;)V

    .line 451
    .line 452
    .line 453
    return-void

    .line 454
    :pswitch_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 455
    .line 456
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgettrainInProgress(Lcom/samsung/android/server/wifi/wcm/IccManager;)V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 461
    .line 462
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    if-nez v0, :cond_7

    .line 467
    .line 468
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 469
    .line 470
    const-string p1, "data element is null"

    .line 471
    .line 472
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    return-void

    .line 476
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast p1, Ljava/lang/Boolean;

    .line 479
    .line 480
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 481
    .line 482
    .line 483
    move-result p1

    .line 484
    new-instance v0, Ljava/util/Date;

    .line 485
    .line 486
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 490
    .line 491
    .line 492
    move-result-wide v0

    .line 493
    if-nez p1, :cond_8

    .line 494
    .line 495
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 496
    .line 497
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmInvalidTimeStamp(Lcom/samsung/android/server/wifi/wcm/IccManager;)J

    .line 498
    .line 499
    .line 500
    move-result-wide v0

    .line 501
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 502
    .line 503
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmConnectedTime(Lcom/samsung/android/server/wifi/wcm/IccManager;)J

    .line 504
    .line 505
    .line 506
    move-result-wide v2

    .line 507
    sub-long/2addr v0, v2

    .line 508
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;->saveData(JZ)V

    .line 509
    .line 510
    .line 511
    return-void

    .line 512
    nop

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
