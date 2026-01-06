.class public Lcom/samsung/android/server/wifi/SemApeService$Session;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
    }
.end annotation


# static fields
.field private static final VER:I = 0x2


# instance fields
.field final appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final bandwidthLimitedSecs:I

.field final bandwidthUnlimitedSecs:I

.field final googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

.field final packageName:Ljava/lang/String;

.field final streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$fgetpackageName(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$fgetbandwidthLimitedSecs(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimitedSecs:I

    .line 15
    .line 16
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$fgetbandwidthUnlimitedSecs(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthUnlimitedSecs:I

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mappRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mappTxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mbackgroundRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mbackgroundTxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mlinkSpeedRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mlinkSpeedTxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mgoogleEstimatedBandwidthRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mgoogleEstimatedBandwidthTxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mbandwidthLimitStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->-$$Nest$mstreamingRxStats(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method getTotalSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimitedSecs:I

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthUnlimitedSecs:I

    .line 4
    .line 5
    add-int/2addr v0, p0

    .line 6
    return v0
.end method

.method printDebug()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " - bandwidthLimitedSecs="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimitedSecs:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " bandwidthUnlimitedSecs="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthUnlimitedSecs:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "[min max avg std] "

    .line 39
    .line 40
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 46
    .line 47
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 50
    .line 51
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 52
    .line 53
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 54
    .line 55
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 56
    .line 57
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 58
    .line 59
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 60
    .line 61
    const-string v4, "appRx["

    .line 62
    .line 63
    const-string v5, " "

    .line 64
    .line 65
    invoke-static {v4, v5, v0, v1, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, "]"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 91
    .line 92
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 93
    .line 94
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 95
    .line 96
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 97
    .line 98
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 99
    .line 100
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 101
    .line 102
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 103
    .line 104
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 105
    .line 106
    const-string v6, "appTx["

    .line 107
    .line 108
    invoke-static {v6, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 132
    .line 133
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 134
    .line 135
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 136
    .line 137
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 138
    .line 139
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 140
    .line 141
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 142
    .line 143
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 144
    .line 145
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 146
    .line 147
    const-string v6, "backgroundRx["

    .line 148
    .line 149
    invoke-static {v6, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 173
    .line 174
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 175
    .line 176
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 177
    .line 178
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 179
    .line 180
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 181
    .line 182
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 183
    .line 184
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 185
    .line 186
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 187
    .line 188
    const-string v6, "backgroundTx["

    .line 189
    .line 190
    invoke-static {v6, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 214
    .line 215
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 216
    .line 217
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 218
    .line 219
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 220
    .line 221
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 222
    .line 223
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 224
    .line 225
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 226
    .line 227
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 228
    .line 229
    const-string v6, "linkSpeedRx["

    .line 230
    .line 231
    invoke-static {v6, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 255
    .line 256
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 257
    .line 258
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 259
    .line 260
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 261
    .line 262
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 263
    .line 264
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 265
    .line 266
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 267
    .line 268
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 269
    .line 270
    const-string v6, "linkSpeedTx["

    .line 271
    .line 272
    invoke-static {v6, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 296
    .line 297
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 298
    .line 299
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 300
    .line 301
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 302
    .line 303
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 304
    .line 305
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 306
    .line 307
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 308
    .line 309
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 310
    .line 311
    const-string v6, "googleEstimatedBandwidthRx["

    .line 312
    .line 313
    invoke-static {v6, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 337
    .line 338
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 339
    .line 340
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 341
    .line 342
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 343
    .line 344
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 345
    .line 346
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 347
    .line 348
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 349
    .line 350
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 351
    .line 352
    const-string v6, "googleEstimatedBandwidthTx["

    .line 353
    .line 354
    invoke-static {v6, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 378
    .line 379
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 380
    .line 381
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 382
    .line 383
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 384
    .line 385
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 386
    .line 387
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 388
    .line 389
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 390
    .line 391
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 392
    .line 393
    const-string v6, "bandwidthLimit["

    .line 394
    .line 395
    invoke-static {v6, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 419
    .line 420
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 421
    .line 422
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 423
    .line 424
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 425
    .line 426
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 427
    .line 428
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 429
    .line 430
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 431
    .line 432
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 433
    .line 434
    const-string v4, "streamingRx["

    .line 435
    .line 436
    invoke-static {v4, v5, v0, v2, v5}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    return-void
.end method
