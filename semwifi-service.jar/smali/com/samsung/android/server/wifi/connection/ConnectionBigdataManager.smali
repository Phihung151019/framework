.class public Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$ConnectionBigdataReceiver;,
        Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;
    }
.end annotation


# static fields
.field private static final BIGDATA_ISSUE_ID_2ND_LEVEL_MULTIPLY:I = 0x64

.field private static final BIGDATA_MINIMUM_CONNECTION_DURATION:I = 0x12c

.field private static final BIGDATA_MONITORING_TIME_DEFAULT:I = 0x5a0

.field public static final BIGDATA_STATE_COLLECT_DATA_AFTER_ENABLED:I = 0x2

.field public static final BIGDATA_STATE_COLLECT_DATA_BEFORE_ENABLED:I = 0x1

.field public static final BIGDATA_STATE_COLLECT_DONE:I = 0x3

.field private static final PERSONALIZED_CONNECTION_EXTRA_MONITORING_MINUTES:Ljava/lang/String; = "monitoringMinutes"

.field private static final PERSONALIZED_CONNECTION_INTENT_BIGDATA_MINUTES:Ljava/lang/String; = "com.samsung.android.ConnectionBigdata.CONNECTION_BIGDATA_MONITOR_MINUTES"

.field private static final TAG:Ljava/lang/String; = "Conn.BigdataManager"


# instance fields
.field private mBigDataMonitoringTimeMinute:J

.field private mConfigKey:Ljava/lang/String;

.field private final mConnectionBigdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

.field private final mDiscInfoBigdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private final mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field private final mSemWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBigDataMonitoringTimeMinute(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmBigDataMonitoringTimeMinute(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessBigDataLogEvent(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->processBigDataLogEvent(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Lcom/samsung/android/server/wifi/connection/Logger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mInterfaceName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mSemWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionBigdata:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 26
    .line 27
    const-wide/16 v0, 0x5a0

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 30
    .line 31
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mMainHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iput-object p4, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 38
    .line 39
    iput-object p5, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

    .line 40
    .line 41
    const p4, 0x24069

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(ILandroid/os/Handler;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$ConnectionBigdataReceiver;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$ConnectionBigdataReceiver;-><init>(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getConnectionBigdataIntentFilter()Landroid/content/IntentFilter;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 p3, 0x2

    .line 57
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private addDiscInfoBigdata()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_9

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_9

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionBigdata:Ljava/util/HashMap;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_8

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getConnectionInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getDeadline1()Ljava/time/LocalDateTime;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getDeadline2()Ljava/time/LocalDateTime;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->addSsidBigdata(Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getBigdataState()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x2

    .line 57
    const/4 v6, 0x1

    .line 58
    if-ne v4, v6, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getBigdataStartTime()Ljava/time/LocalDateTime;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v4, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/time/Duration;->toMinutes()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    invoke-direct {p0, v7, v8, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getMoreMonitoringDurationIfNeeded(JLcom/samsung/android/server/wifi/connection/ConnectionBigdata;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v9

    .line 82
    cmp-long v4, v9, v7

    .line 83
    .line 84
    if-lez v4, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getBigdataStartTime()Ljava/time/LocalDateTime;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, v9, v10}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setDeadline1(Ljava/time/LocalDateTime;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getDeadline1()Ljava/time/LocalDateTime;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, v9, v10}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setDeadline2(Ljava/time/LocalDateTime;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sget-object v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->COLLECTION_PERIOD_HOUR:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 113
    .line 114
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 115
    .line 116
    long-to-int v3, v9

    .line 117
    div-int/lit8 v3, v3, 0x3c

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v2, "BIGDATA: "

    .line 129
    .line 130
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, " STATE="

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getConnectionInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getBigdataState()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, " increase deadline1 until "

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getDeadline1()Ljava/time/LocalDateTime;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, " hour="

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-wide/16 v2, 0x3c

    .line 174
    .line 175
    div-long/2addr v9, v2

    .line 176
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v1, "Conn.BigdataManager"

    .line 191
    .line 192
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_0
    invoke-static {v2, v3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/time/Duration;->toMinutes()J

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setDeadline1(Ljava/time/LocalDateTime;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getDeadline1()Ljava/time/LocalDateTime;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setDeadline2(Ljava/time/LocalDateTime;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 220
    .line 221
    if-eqz v1, :cond_1

    .line 222
    .line 223
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->resolveIssueForEnabledBigdata(Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v3, " deadline2="

    .line 233
    .line 234
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getDeadline2()Ljava/time/LocalDateTime;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-direct {p0, v1, v5, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->updateBigdataState(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getBigdataState()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-ne v2, v5, :cond_8

    .line 258
    .line 259
    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_8

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setDeadline2(Ljava/time/LocalDateTime;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 269
    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v3, " DATA: "

    .line 273
    .line 274
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    const/4 v3, 0x3

    .line 285
    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->updateBigdataState(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->isBtmCustomizationConditionMet1(Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_4

    .line 293
    .line 294
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 295
    .line 296
    if-eqz v1, :cond_3

    .line 297
    .line 298
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->resolveIssueForUnmetCondition(Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    sget-object v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ISSUE_ID:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 308
    .line 309
    iget-object v3, v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Ljava/lang/Integer;

    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 326
    .line 327
    mul-int/lit8 v1, v1, 0x64

    .line 328
    .line 329
    add-int/2addr v1, v6

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    goto :goto_0

    .line 338
    :cond_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->isBtmCustomizationConditionMet2(Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-nez v1, :cond_6

    .line 343
    .line 344
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 345
    .line 346
    if-eqz v1, :cond_5

    .line 347
    .line 348
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->resolveIssueForUnmetCondition(Ljava/lang/String;I)V

    .line 351
    .line 352
    .line 353
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    sget-object v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ISSUE_ID:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 358
    .line 359
    iget-object v3, v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Ljava/lang/Integer;

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 376
    .line 377
    mul-int/lit8 v1, v1, 0x64

    .line 378
    .line 379
    add-int/2addr v1, v5

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    goto :goto_0

    .line 388
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 389
    .line 390
    if-eqz v1, :cond_7

    .line 391
    .line 392
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->resolveIssue(Ljava/lang/String;I)V

    .line 395
    .line 396
    .line 397
    :cond_7
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->sendEvent(Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionBigdata:Ljava/util/HashMap;

    .line 401
    .line 402
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    :cond_8
    :goto_1
    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 409
    .line 410
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 411
    .line 412
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 413
    .line 414
    .line 415
    :cond_9
    return-void
.end method

.method private getBigDataLog(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    const-string v0, "DISC"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mInterfaceName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p0, p2, p1, p1, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataFromBigDataParamsOfDISC(Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method private getConnectionBigdataIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.samsung.android.ConnectionBigdata.CONNECTION_BIGDATA_MONITOR_MINUTES"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method private getConnectionInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionBigdata:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionBigdata:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;-><init>()V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method private getMoreMonitoringDurationIfNeeded(JLcom/samsung/android/server/wifi/connection/ConnectionBigdata;)J
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    const/16 v0, 0x12c

    .line 20
    .line 21
    if-ge p3, v0, :cond_2

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 24
    .line 25
    cmp-long p0, p1, v0

    .line 26
    .line 27
    if-gez p0, :cond_0

    .line 28
    .line 29
    return-wide v0

    .line 30
    :cond_0
    const-wide/16 v2, 0x2

    .line 31
    .line 32
    mul-long v4, v0, v2

    .line 33
    .line 34
    cmp-long p0, p1, v4

    .line 35
    .line 36
    if-gez p0, :cond_1

    .line 37
    .line 38
    mul-long/2addr v0, v2

    .line 39
    return-wide v0

    .line 40
    :cond_1
    const-wide/16 p0, 0x3

    .line 41
    .line 42
    mul-long/2addr v0, p0

    .line 43
    return-wide v0

    .line 44
    :cond_2
    return-wide p1
.end method

.method private makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$1;-><init>(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private processBigDataLogEvent(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataFeature(Landroid/os/Bundle;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataArgument(Landroid/os/Bundle;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getBigDataLog(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 30
    .line 31
    sget-object v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "conn_duration"

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 49
    .line 50
    sget-object v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 63
    .line 64
    sget-object v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, "roamingCount"

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    const-string v0, "Conn.BigdataManager"

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->addDiscInfoBigdata()V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    return-void
.end method

.method private sendEvent(Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "BIGDATA: sendEvent: connection_personalizer "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "Conn.BigdataManager"

    .line 70
    .line 71
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->AP_MODEL_NAME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getRouterInfo()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 86
    .line 87
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingCAPC;->sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/util/HashMap;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private updateBigdataState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getConnectionInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setBigdataState(I)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "BIGDATA: "

    .line 11
    .line 12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " STATE="

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getConnectionInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getBigdataState()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p0, "Conn.BigdataManager"

    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method addSsidBigdata(Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 6
    .line 7
    sget-object v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 21
    .line 22
    sget-object v3, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 36
    .line 37
    sget-object v4, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "Collected Personalized connection bssid bigdata: "

    .line 53
    .line 54
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mDiscInfoBigdata:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string v4, "Conn.BigdataManager"

    .line 67
    .line 68
    invoke-static {v4, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getBigdataState()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    const/4 v4, 0x1

    .line 78
    if-ne p0, v4, :cond_0

    .line 79
    .line 80
    sget-object p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 83
    .line 84
    new-instance p1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0, v1, p1}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    sget-object p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 95
    .line 96
    new-instance p1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    sget-object p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 107
    .line 108
    new-instance p1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0, v3, p1}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getBigdataState()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    const/4 p1, 0x2

    .line 122
    if-ne p0, p1, :cond_1

    .line 123
    .line 124
    sget-object p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 127
    .line 128
    new-instance p1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p0, v1, p1}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    sget-object p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 139
    .line 140
    new-instance p1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    sget-object p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 151
    .line 152
    new-instance p1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p0, v3, p1}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    :cond_1
    return-void
.end method

.method public collectBigdata(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getLogger()Lcom/samsung/android/server/wifi/connection/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "BIGDATA: "

    .line 15
    .line 16
    const-string v2, "TIME="

    .line 17
    .line 18
    invoke-static {v0, p1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 23
    .line 24
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, " BTM DISABLED"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->resolveIssueForEnabledBigdata(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;->resolveIssue(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->getConnectionInfo(Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setBigdataStartTime(Ljava/time/LocalDateTime;)V

    .line 65
    .line 66
    .line 67
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 68
    .line 69
    invoke-virtual {v2, v3, v4}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setDeadline1(Ljava/time/LocalDateTime;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getDeadline1()Ljava/time/LocalDateTime;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 81
    .line 82
    invoke-virtual {v2, v3, v4}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setDeadline2(Ljava/time/LocalDateTime;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    sget-object v3, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ISSUE_ID:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    sget-object p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->COLLECTION_PERIOD_HOUR:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 105
    .line 106
    iget-object p2, p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 107
    .line 108
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mBigDataMonitoringTimeMinute:J

    .line 109
    .line 110
    long-to-int v3, v3

    .line 111
    div-int/lit8 v3, v3, 0x3c

    .line 112
    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    sget-object p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 121
    .line 122
    iget-object p2, p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    sget-object p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 133
    .line 134
    iget-object p2, p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    sget-object p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 144
    .line 145
    iget-object p2, p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    sget-object p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 155
    .line 156
    iget-object p2, p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    sget-object p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 166
    .line 167
    iget-object p2, p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    sget-object p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 177
    .line 178
    iget-object p2, p2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    iget-object p2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionBigdata:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v2, " deadline1="

    .line 195
    .line 196
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getDeadline1()Ljava/time/LocalDateTime;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->updateBigdataState(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public getLogger()Lcom/samsung/android/server/wifi/connection/Logger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

    .line 2
    .line 3
    return-object p0
.end method

.method isBtmCustomizationConditionMet1(Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/16 v0, 0x12c

    .line 38
    .line 39
    if-lt p0, v0, :cond_1

    .line 40
    .line 41
    if-ge p1, v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method isBtmCustomizationConditionMet2(Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    sget-object v3, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sget-object v4, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 78
    .line 79
    iget-object v4, v4, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->getSsidBigdata()Ljava/util/HashMap;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object v4, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 96
    .line 97
    iget-object v4, v4, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    int-to-double v4, p0

    .line 110
    const/4 p0, 0x1

    .line 111
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    int-to-double v6, v6

    .line 116
    div-double v6, v4, v6

    .line 117
    .line 118
    int-to-double v8, v0

    .line 119
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    int-to-double v10, v0

    .line 124
    div-double v10, v8, v10

    .line 125
    .line 126
    cmpl-double v0, v6, v10

    .line 127
    .line 128
    const/4 v6, 0x0

    .line 129
    if-lez v0, :cond_0

    .line 130
    .line 131
    return v6

    .line 132
    :cond_0
    add-int/2addr v1, v3

    .line 133
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    int-to-double v0, v0

    .line 138
    div-double/2addr v4, v0

    .line 139
    add-int/2addr v2, p1

    .line 140
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    int-to-double v0, p1

    .line 145
    div-double/2addr v8, v0

    .line 146
    cmpl-double p1, v4, v8

    .line 147
    .line 148
    if-lez p1, :cond_1

    .line 149
    .line 150
    return v6

    .line 151
    :cond_1
    return p0
.end method

.method public setBigdataInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionBigdata:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionBigdata:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->setRouterInfo(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->addDiscInfoBigdata()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setConnectionIssueResolver(Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mConnectionIssueResolver:Lcom/samsung/android/server/wifi/connection/ConnectionIssueResolver;

    .line 2
    .line 3
    return-void
.end method

.method public setPrimaryInterfaceName(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Conn.BigdataManager"

    .line 4
    .line 5
    const v2, 0x2400d

    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "onPrimaryInterfaceChanged : new="

    .line 13
    .line 14
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mInterfaceName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mSemWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mMainHandler:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v0, p1, v2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "onPrimaryInterfaceChanged : old="

    .line 46
    .line 47
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mInterfaceName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ", new="

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mSemWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mInterfaceName:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mMainHandler:Landroid/os/Handler;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mInterfaceName:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mSemWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->mMainHandler:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {v0, p1, v2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method
