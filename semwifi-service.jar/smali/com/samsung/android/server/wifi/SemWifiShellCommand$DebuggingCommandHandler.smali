.class Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiShellCommand$CommandHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DebuggingCommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;->fromString(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommand;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmSemWifiRroChecker(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkAndGetUnauthorizedRroWithoutToast()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmSemWifiRroChecker(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkAndGetUnauthorizedRro()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmSemWifiRroChecker(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkUnauthorizedRroWithoutToast()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmSemWifiRroChecker(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiRroChecker;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiRroChecker;->checkUnauthorizedRro()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 87
    .line 88
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->setLastSelectedNetworkIdForSilentRoaming(I)V

    .line 93
    .line 94
    .line 95
    return v1

    .line 96
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 97
    .line 98
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getLastSelectedNetworkIdForSilentRoaming()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 107
    .line 108
    .line 109
    return v1

    .line 110
    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 111
    .line 112
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->setLastSelectedTimeStampForSilentRoaming()V

    .line 117
    .line 118
    .line 119
    return v1

    .line 120
    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 121
    .line 122
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getLastSelectedTimeStampForSilentRoaming()J

    .line 127
    .line 128
    .line 129
    move-result-wide p0

    .line 130
    invoke-virtual {p2, p0, p1}, Ljava/io/PrintWriter;->println(J)V

    .line 131
    .line 132
    .line 133
    return v1

    .line 134
    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 135
    .line 136
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getCandidateNetworkScores()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return v1

    .line 148
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    .line 160
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 161
    .line 162
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 171
    .line 172
    .line 173
    return v1

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string p1, "wifiConfigKey is empty"

    .line 177
    .line 178
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0

    .line 182
    :pswitch_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 183
    .line 184
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getConfiguredNetworkLocations()Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-interface {p0}, Ljava/util/Map;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return v1

    .line 200
    :pswitch_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 201
    .line 202
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getAutoWifiDefaultValue()Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 211
    .line 212
    .line 213
    return v1

    .line 214
    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    const/4 p2, 0x1

    .line 225
    if-lt p1, p2, :cond_1

    .line 226
    .line 227
    const/4 p2, 0x3

    .line 228
    if-gt p1, p2, :cond_1

    .line 229
    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 231
    .line 232
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setPnoScanState(I)V

    .line 237
    .line 238
    .line 239
    return v1

    .line 240
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 241
    .line 242
    const-string p1, "Expected int from 1 to 3 as next arg but not"

    .line 243
    .line 244
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p0

    .line 248
    :pswitch_d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 249
    .line 250
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$mgetNextArgRequiredTrueOrFalse(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 255
    .line 256
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$mgetNextArgRequiredTrueOrFalse(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Z

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 261
    .line 262
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setPnoScanEnabled(ZZ)V

    .line 267
    .line 268
    .line 269
    return v1

    .line 270
    :pswitch_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 271
    .line 272
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiBackController(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getSarManagerNames()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return v1

    .line 284
    :pswitch_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 285
    .line 286
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_2

    .line 295
    .line 296
    const-string p0, "This command will only execute when Wi-Fi is turned on"

    .line 297
    .line 298
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return v1

    .line 302
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 303
    .line 304
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getWifi7DisabledCountry()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    return v1

    .line 316
    :pswitch_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 317
    .line 318
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmAutoWifiController(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    const/4 p1, 0x0

    .line 323
    invoke-virtual {p0, p1, p2, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return v1

    .line 327
    :pswitch_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 328
    .line 329
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmAutoWifiController(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->shouldShowBubbleTip()Z

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 338
    .line 339
    .line 340
    return v1

    .line 341
    :pswitch_12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 342
    .line 343
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$mgetNextArgRequiredTrueOrFalse(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 348
    .line 349
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->triggerBackoffRoutine(Z)V

    .line 354
    .line 355
    .line 356
    return v1

    .line 357
    :pswitch_13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 358
    .line 359
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$mgetNextArgRequiredTrueOrFalse(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 364
    .line 365
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->setVerboseLoggingEnabled(Z)V

    .line 370
    .line 371
    .line 372
    return v1

    .line 373
    :pswitch_14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$DebuggingCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 374
    .line 375
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 380
    .line 381
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    if-eqz p1, :cond_3

    .line 390
    .line 391
    const-string p0, "No QoS data"

    .line 392
    .line 393
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    return v1

    .line 397
    :cond_3
    const-string p1, "BSSID             LEVEL RANGE:SCORE ... NETWORK TYPE"

    .line 398
    .line 399
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    if-eqz p1, :cond_5

    .line 415
    .line 416
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    check-cast p1, Ljava/util/Map$Entry;

    .line 421
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    check-cast v2, Ljava/util/Map;

    .line 432
    .line 433
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_4

    .line 446
    .line 447
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    check-cast v3, Ljava/util/Map$Entry;

    .line 452
    .line 453
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    check-cast v4, Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v4, ":"

    .line 463
    .line 464
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v3, " "

    .line 475
    .line 476
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    goto :goto_1

    .line 480
    :cond_4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    const-string v0, "%-15s %s"

    .line 489
    .line 490
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    goto :goto_0

    .line 498
    :cond_5
    return v1

    .line 499
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
