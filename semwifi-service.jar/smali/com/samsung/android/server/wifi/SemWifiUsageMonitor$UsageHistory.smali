.class Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageHistory"
.end annotation


# instance fields
.field mConnectionTimeInBand:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mConnectionTimeInStandard:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mCreationTimeEpoch:J

.field public mNumberOfConnections:I

.field mRxBytesInBand:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mRxBytesInStandard:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalConnectionTime:J

.field public mTotalEnabledTime:J

.field public mTotalRxBytes:J

.field public mTotalTxBytes:J

.field mTxBytesInBand:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTxBytesInStandard:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdatedTimeElapsed:J

.field public mUpdatedTimeEpoch:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmPreviousTotalElapsedTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    add-long/2addr v2, v0

    .line 19
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeElapsed:J

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 33
    .line 34
    new-instance p1, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 40
    .line 41
    new-instance p1, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 47
    .line 48
    new-instance p1, Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 54
    .line 55
    new-instance p1, Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 61
    .line 62
    new-instance p1, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 68
    .line 69
    new-instance p1, Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public add(JJJII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmPreviousTotalElapsedTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-long/2addr v2, v0

    .line 18
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeElapsed:J

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 21
    .line 22
    add-long/2addr v0, p1

    .line 23
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 26
    .line 27
    add-long/2addr v0, p3

    .line 28
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 29
    .line 30
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 31
    .line 32
    add-long/2addr v0, p5

    .line 33
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 36
    .line 37
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 54
    .line 55
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    add-long/2addr v2, p1

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 78
    .line 79
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 84
    .line 85
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    add-long/2addr v2, p3

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 108
    .line 109
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 114
    .line 115
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p7

    .line 119
    invoke-interface {v2, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p7

    .line 123
    check-cast p7, Ljava/lang/Long;

    .line 124
    .line 125
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    add-long/2addr v2, p5

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object p7

    .line 134
    invoke-interface {v0, v1, p7}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 139
    .line 140
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 152
    .line 153
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 165
    .line 166
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object p7

    .line 170
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-interface {v0, p7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :goto_0
    iget-object p7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 178
    .line 179
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {p7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p7

    .line 187
    if-eqz p7, :cond_1

    .line 188
    .line 189
    iget-object p7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 190
    .line 191
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 196
    .line 197
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Ljava/lang/Long;

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 208
    .line 209
    .line 210
    move-result-wide v1

    .line 211
    add-long/2addr v1, p1

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-interface {p7, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 220
    .line 221
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    iget-object p7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 226
    .line 227
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-interface {p7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p7

    .line 235
    check-cast p7, Ljava/lang/Long;

    .line 236
    .line 237
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    add-long/2addr v0, p3

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object p3

    .line 246
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 250
    .line 251
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 256
    .line 257
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object p3

    .line 261
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    check-cast p0, Ljava/lang/Long;

    .line 266
    .line 267
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 268
    .line 269
    .line 270
    move-result-wide p3

    .line 271
    add-long/2addr p3, p5

    .line 272
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :cond_1
    iget-object p7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 281
    .line 282
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-interface {p7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 294
    .line 295
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 307
    .line 308
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method public addWifiEnabledTime(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConnectedTime/RX/TX -    total ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 9
    .line 10
    const-wide/16 v3, 0x3e8

    .line 11
    .line 12
    div-long/2addr v1, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " sec / "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 28
    .line 29
    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " / "

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 42
    .line 43
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 48
    .line 49
    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, " ]    |    "

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const-string v7, " ]    "

    .line 80
    .line 81
    const-string v8, " [ "

    .line 82
    .line 83
    if-eqz v6, :cond_0

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-static {v0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 100
    .line 101
    invoke-static {v10, v9}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$mbandIndexToString(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    check-cast v8, Ljava/lang/Long;

    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v8

    .line 123
    div-long/2addr v8, v3

    .line 124
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 131
    .line 132
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    check-cast v9, Ljava/lang/Long;

    .line 143
    .line 144
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v9

    .line 148
    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 159
    .line 160
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 165
    .line 166
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Ljava/lang/Long;

    .line 171
    .line 172
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 173
    .line 174
    .line 175
    move-result-wide v9

    .line 176
    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    goto :goto_0

    .line 191
    :cond_0
    const-string v5, "|    "

    .line 192
    .line 193
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 198
    .line 199
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_1

    .line 212
    .line 213
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, Ljava/lang/Integer;

    .line 218
    .line 219
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    invoke-static {v0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$smwifiStandardToString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 238
    .line 239
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    check-cast v9, Ljava/lang/Long;

    .line 244
    .line 245
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 246
    .line 247
    .line 248
    move-result-wide v9

    .line 249
    div-long/2addr v9, v3

    .line 250
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 257
    .line 258
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 263
    .line 264
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    check-cast v10, Ljava/lang/Long;

    .line 269
    .line 270
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 271
    .line 272
    .line 273
    move-result-wide v10

    .line 274
    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 285
    .line 286
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 291
    .line 292
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    check-cast v6, Ljava/lang/Long;

    .line 297
    .line 298
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 299
    .line 300
    .line 301
    move-result-wide v10

    .line 302
    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    goto :goto_1

    .line 317
    :cond_1
    return-object v0
.end method
