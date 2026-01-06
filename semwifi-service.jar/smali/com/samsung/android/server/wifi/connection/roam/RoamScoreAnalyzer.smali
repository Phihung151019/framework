.class public Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/roam/BaseLogAnalyzer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Conn.RoamScoreAnalyzer"


# instance fields
.field private final WIFI_BAND_6GHZ:Ljava/lang/String;

.field private mLatestDetectedConnectingLog:Ljava/lang/String;

.field private mRoamScanStartLog:Ljava/lang/String;

.field private mScoreCandidateLogs:Ljava/lang/String;

.field private mScoreCurrentLog:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "6"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->WIFI_BAND_6GHZ:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mRoamScanStartLog:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCurrentLog:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCandidateLogs:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mLatestDetectedConnectingLog:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private connected6GhzAp(Lcom/samsung/android/server/wifi/connection/LogSet;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "freq_hint="

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->freqToBand(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "6"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget-object p0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    move v2, v0

    .line 31
    :cond_0
    if-ge v2, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    const-string v4, "[CONN] ASSOC RESP"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    const-string v4, "status=0"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "bssid_hint="

    .line 62
    .line 63
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "bssid="

    .line 68
    .line 69
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :cond_1
    return v0
.end method

.method private containsRoamLog(Lcom/samsung/android/server/wifi/connection/LogSet;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->screeningLogs(Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mRoamScanStartLog:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "reason=1"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mRoamScanStartLog:Ljava/lang/String;

    .line 17
    .line 18
    const-string p1, "reason=2"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    invoke-static {v0, p0, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private freqToBand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x96c

    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x9b4

    .line 12
    .line 13
    if-gt p1, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "2.4"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/16 v0, 0x1428

    .line 19
    .line 20
    if-lt p1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x16fd

    .line 23
    .line 24
    if-gt p1, v0, :cond_1

    .line 25
    .line 26
    const-string p0, "5"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    const/16 v0, 0x172f

    .line 30
    .line 31
    if-eq p1, v0, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x1743

    .line 34
    .line 35
    if-lt p1, v0, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x1bcb

    .line 38
    .line 39
    if-gt p1, v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object p0

    .line 43
    :cond_3
    :goto_0
    const-string p0, "6"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    :catch_0
    return-object p0
.end method

.method private fromScoreLogToJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "freq="

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->freqToBand(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "rssi="

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "cu="

    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "score="

    .line 24
    .line 25
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "tp="

    .line 30
    .line 31
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const-string p0, ""

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "{"

    .line 47
    .line 48
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v4, "band"

    .line 52
    .line 53
    invoke-static {v4}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, ":"

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, ","

    .line 73
    .line 74
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v5, "rssi"

    .line 78
    .line 79
    invoke-static {v5}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, "cu"

    .line 100
    .line 101
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, "score"

    .line 122
    .line 123
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p0, "tp"

    .line 144
    .line 145
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    const-string p1, "}"

    .line 160
    .line 161
    invoke-static {v3, p0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0
.end method

.method private static getTime(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0
.end method

.method private isManualDisconnection(Lcom/samsung/android/server/wifi/connection/LogManager;I)Z
    .locals 7

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/connection/LogManager;->request(I)Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    move v3, p0

    .line 18
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 19
    if-ge v3, v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    check-cast v5, Ljava/lang/String;

    .line 28
    .line 29
    const-string v6, "[CONN] DEAUTH TX"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    return v4

    .line 38
    :cond_2
    const-string v4, "[FRAMEWORK] WIFI OFF"

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    move-object v2, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    sub-int/2addr p2, v4

    .line 55
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/connection/LogManager;->request(I)Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    move v0, p0

    .line 66
    :cond_4
    if-ge v0, p2, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    check-cast v1, Ljava/lang/String;

    .line 75
    .line 76
    const-string v3, "[FRAMEWORK] WIFI ON"

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->getTime(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide p1

    .line 88
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->getTime(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    sub-long/2addr p1, v0

    .line 93
    const-wide/16 v0, 0x2710

    .line 94
    .line 95
    cmp-long p1, p1, v0

    .line 96
    .line 97
    if-gez p1, :cond_5

    .line 98
    .line 99
    return v4

    .line 100
    :cond_5
    return p0
.end method

.method private screeningLogs(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mRoamScanStartLog:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCurrentLog:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCandidateLogs:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :cond_1
    :goto_0
    if-ge v3, v1, :cond_6

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    const-string v5, "[ROAM] SCAN_START"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    iput-object v4, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mRoamScanStartLog:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string v5, "SCORE_CUR_AP"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    iput-object v4, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCurrentLog:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string v5, "[ROAM] SCORE_CANDI"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const-string v5, "[ROAM] RESULT ROAM"

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    const-string v5, "bssid="

    .line 83
    .line 84
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    move v6, v2

    .line 93
    :cond_5
    if-ge v6, v5, :cond_1

    .line 94
    .line 95
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    add-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    check-cast v7, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_5

    .line 108
    .line 109
    iput-object v7, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCandidateLogs:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->connected6GhzAp(Lcom/samsung/android/server/wifi/connection/LogSet;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    :goto_0
    const/4 v2, 0x5

    .line 29
    if-gt v1, v2, :cond_5

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/connection/LogManager;->request(I)Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_5

    .line 44
    .line 45
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mLatestDetectedConnectingLog:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->isManualDisconnection(Lcom/samsung/android/server/wifi/connection/LogManager;I)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->containsRoamLog(Lcom/samsung/android/server/wifi/connection/LogSet;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCurrentLog:Ljava/lang/String;

    .line 79
    .line 80
    const-string v4, "freq="

    .line 81
    .line 82
    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->freqToBand(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v5, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCandidateLogs:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v5, v4}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->freqToBand(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const-string v5, "6"

    .line 101
    .line 102
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_4

    .line 113
    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCurrentLog:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->fromScoreLogToJson(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mScoreCandidateLogs:Ljava/lang/String;

    .line 121
    .line 122
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->fromScoreLogToJson(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    new-instance v1, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;

    .line 140
    .line 141
    const/4 v2, 0x2

    .line 142
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;-><init>(I)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v1, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 146
    .line 147
    const-string v4, "p_ap"

    .line 148
    .line 149
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object p1, v1, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 153
    .line 154
    const-string v2, "r_ap"

    .line 155
    .line 156
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;->add(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;)Z

    .line 160
    .line 161
    .line 162
    iput-object v3, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;->mLatestDetectedConnectingLog:Ljava/lang/String;

    .line 163
    .line 164
    return-void

    .line 165
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_5
    :goto_1
    return-void
.end method
