.class public Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Conn.BtmAnalyzer"

.field private static final TIME_BETWEEN_BTM_AND_DISCONNECTION_MS_FOR_ISSUE_DETECTION:J = 0xea60L

.field private static final TIME_FROM_LAST_BTM_MS_FOR_ISSUE_DETECTION:J = 0x927c0L

.field private static final TYPE_AKM:Ljava/lang/String; = "akm="

.field private static final TYPE_BSSID:Ljava/lang/String; = "bssid="


# instance fields
.field private oui:Ljava/lang/String;

.field private rssi:I


# direct methods
.method public static synthetic $r8$lambda$7bpJt1i2wK01s0Aaft8EEyCDQ_Q(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->lambda$isWifiOff$0(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private disconnectionIssue(Ljava/util/ArrayList;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/String;

    .line 11
    .line 12
    const-string v4, "akm="

    .line 13
    .line 14
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const-wide/16 v5, -0x1

    .line 23
    .line 24
    const-string v7, ""

    .line 25
    .line 26
    move v12, v2

    .line 27
    :goto_0
    move-wide v8, v5

    .line 28
    move-wide v10, v8

    .line 29
    :cond_0
    :goto_1
    if-ge v12, v4, :cond_9

    .line 30
    .line 31
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    add-int/lit8 v12, v12, 0x1

    .line 36
    .line 37
    check-cast v13, Ljava/lang/String;

    .line 38
    .line 39
    cmp-long v14, v8, v5

    .line 40
    .line 41
    const-string v15, "[ROAM] SCAN_START reason=5 "

    .line 42
    .line 43
    if-nez v14, :cond_2

    .line 44
    .line 45
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getBssidFromAuth(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v14

    .line 49
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v16

    .line 53
    if-nez v16, :cond_1

    .line 54
    .line 55
    move-object v7, v14

    .line 56
    :cond_1
    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    if-eqz v14, :cond_0

    .line 61
    .line 62
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getTime(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    iput v13, v0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->rssi:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getBssidFromRoam(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    if-nez v16, :cond_3

    .line 82
    .line 83
    move-object v7, v14

    .line 84
    :cond_3
    cmp-long v14, v10, v5

    .line 85
    .line 86
    if-nez v14, :cond_7

    .line 87
    .line 88
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getTime(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v16

    .line 92
    sub-long v16, v16, v8

    .line 93
    .line 94
    const-wide/32 v18, 0xea60

    .line 95
    .line 96
    .line 97
    cmp-long v14, v16, v18

    .line 98
    .line 99
    if-lez v14, :cond_4

    .line 100
    .line 101
    :goto_2
    move-wide v8, v5

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->emergencyTriggered(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    if-eqz v14, :cond_5

    .line 108
    .line 109
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getTime(Ljava/lang/String;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v10

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    if-eqz v14, :cond_6

    .line 119
    .line 120
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getTime(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v8

    .line 124
    invoke-static {v13}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    iput v13, v0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->rssi:I

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    const-string v14, "[ROAM] SCAN_START "

    .line 132
    .line 133
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_0

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    invoke-static {v3}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->need4WayHandShake(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-eqz v14, :cond_8

    .line 145
    .line 146
    const-string v14, "4WAY M4 "

    .line 147
    .line 148
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    if-eqz v13, :cond_0

    .line 153
    .line 154
    :goto_3
    goto :goto_0

    .line 155
    :cond_8
    const-string v14, "[CONN] REASSOC RESP "

    .line 156
    .line 157
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-eqz v14, :cond_0

    .line 162
    .line 163
    const-string v14, "status=0"

    .line 164
    .line 165
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-eqz v13, :cond_0

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_9
    cmp-long v1, v8, v5

    .line 173
    .line 174
    if-eqz v1, :cond_a

    .line 175
    .line 176
    invoke-static {v7}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput-object v1, v0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->oui:Ljava/lang/String;

    .line 181
    .line 182
    const/4 v0, 0x1

    .line 183
    return v0

    .line 184
    :cond_a
    return v2
.end method

.method private static emergencyTriggered(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "[ROAM] SCAN_START reason=4 "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "[CONN] DEAUTH "

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "[CONN] DISASSOC "

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method private static getBssidFromAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "[CONN] AUTH REQ "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "bssid="

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    return-object p0
.end method

.method private static getBssidFromRoam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "[ROAM] SCORE_CUR_AP "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "bssid="

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
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

.method private isFrameworkDisconnect(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    move v2, v1

    .line 8
    :cond_0
    :goto_0
    if-ge v2, p0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v5, "[SUPP] WifiFramework disconnect"

    .line 22
    .line 23
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    move v1, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v5, "[CONN] DEAUTH TX "

    .line 32
    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    const-string v5, "[CONN] DISASSOC TX "

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    :cond_2
    return v4

    .line 48
    :cond_3
    return v0
.end method

.method private isWifiOff(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method private static synthetic lambda$isWifiOff$0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "[FRAMEWORK] WIFI OFF"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static need4WayHandShake(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "0xfac01"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "0xfac02"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "0xfac05"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "0xfac06"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "0xfac08"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "0xfac0b"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "0xfac0c"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "0xfac0e"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const-string v0, "0xfac0f"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const-string v0, "0xfac14"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, "0xfac17"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const-string v0, "0xfac18"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const/4 p0, 0x0

    .line 99
    return p0

    .line 100
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 101
    return p0
.end method

.method private pingPongIssue(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, ""

    .line 12
    .line 13
    move v4, v2

    .line 14
    move v5, v4

    .line 15
    :cond_0
    :goto_0
    if-ge v5, v1, :cond_6

    .line 16
    .line 17
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    add-int/lit8 v5, v5, 0x1

    .line 22
    .line 23
    check-cast v6, Ljava/lang/String;

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    invoke-static {v6}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getBssidFromAuth(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    if-nez v9, :cond_1

    .line 37
    .line 38
    move-object v3, v8

    .line 39
    :cond_1
    const-string v8, "[ROAM] SCAN_START reason=5 "

    .line 40
    .line 41
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-eqz v8, :cond_0

    .line 46
    .line 47
    invoke-static {v6}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iput v4, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->rssi:I

    .line 52
    .line 53
    move v4, v7

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v6}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getBssidFromRoam(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_3

    .line 64
    .line 65
    move-object v3, v8

    .line 66
    :cond_3
    const-string v8, "[ROAM] RESULT "

    .line 67
    .line 68
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_0

    .line 73
    .line 74
    const-string v8, "[ROAM] RESULT ROAM "

    .line 75
    .line 76
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_0

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;

    .line 87
    .line 88
    if-eqz v4, :cond_5

    .line 89
    .line 90
    invoke-static {v6}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getTime(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v8

    .line 94
    invoke-static {v4}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->-$$Nest$fgettime(Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    sub-long/2addr v8, v10

    .line 99
    const-wide/32 v10, 0x927c0

    .line 100
    .line 101
    .line 102
    cmp-long v8, v8, v10

    .line 103
    .line 104
    if-gez v8, :cond_5

    .line 105
    .line 106
    invoke-static {v4}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->-$$Nest$fgetcount(Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-le v8, v7, :cond_4

    .line 111
    .line 112
    invoke-static {v3}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->oui:Ljava/lang/String;

    .line 117
    .line 118
    return v7

    .line 119
    :cond_4
    new-instance v8, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;

    .line 120
    .line 121
    invoke-static {v6}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getTime(Ljava/lang/String;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    invoke-static {v4}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->-$$Nest$fgetcount(Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    add-int/2addr v4, v7

    .line 130
    invoke-direct {v8, v4, v2, v9, v10}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;-><init>(IIJ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    new-instance v4, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;

    .line 138
    .line 139
    invoke-static {v6}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->getTime(Ljava/lang/String;)J

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    invoke-direct {v4, v7, v2, v8, v9}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;-><init>(IIJ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :goto_1
    move v4, v2

    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_6
    return v2
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 19
    if-ge v3, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    const-string v6, "[CONN] CONNECTING ssid="

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    move v2, v4

    .line 38
    :cond_1
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    const-string p1, ""

    .line 54
    .line 55
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->oui:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->pingPongIssue(Ljava/util/ArrayList;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->oui:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_4
    new-instance p1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->oui:Ljava/lang/String;

    .line 77
    .line 78
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->rssi:I

    .line 79
    .line 80
    invoke-direct {p1, v4, v0, p0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->isFrameworkDisconnect(Ljava/util/ArrayList;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_9

    .line 89
    .line 90
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->isWifiOff(Ljava/util/ArrayList;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->disconnectionIssue(Ljava/util/ArrayList;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_8

    .line 102
    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->oui:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_7
    new-instance p1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->oui:Ljava/lang/String;

    .line 117
    .line 118
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;->rssi:I

    .line 119
    .line 120
    invoke-direct {p1, v4, v0, p0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_8
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_9
    :goto_1
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 128
    .line 129
    return-object p0
.end method
