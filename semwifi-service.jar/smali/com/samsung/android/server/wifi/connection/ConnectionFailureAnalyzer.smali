.class public Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;


# static fields
.field private static final IMMEDIATE_DISCONNECTION_TIME_MILLISECONDS:I = 0x1388

.field private static final REASON_CODE_4WAY_HANDSHAKE_TIMEOUT:Ljava/lang/String; = "15"

.field private static final REASON_CODE_MIC_FAILURE:Ljava/lang/String; = "14"

.field private static final TAG:Ljava/lang/String; = "Conn.ConnectionFailureAnalyzer"

.field private static final WEAK_RSSI_VALUE:I = -0x4b


# instance fields
.field private mAssocRequestLog:Ljava/lang/String;

.field private mAssocResponseLog:Ljava/lang/String;

.field private mDeAssocRxLog:Ljava/lang/String;

.field private mDeAuthRxLog:Ljava/lang/String;

.field private mEapFailureLog:Ljava/lang/String;

.field private mFourWayM4Log:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private extractLastConnectionLogStepByStep(Lcom/samsung/android/server/wifi/connection/LogSet;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocRequestLog:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mEapFailureLog:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mFourWayM4Log:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    if-lez v0, :cond_7

    .line 22
    .line 23
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 24
    .line 25
    add-int/lit8 v2, v0, -0x1

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "AUTH REQ"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_7

    .line 40
    .line 41
    const-string v2, "AUTH RESP"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocRequestLog:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    const-string v2, "ASSOC REQ"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocRequestLog:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    const-string v2, "ASSOC RESP"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mFourWayM4Log:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    const-string v2, "4WAY M4"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mFourWayM4Log:Ljava/lang/String;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mEapFailureLog:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    const-string v2, "[EAP]"

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    const-string v2, "FAIL"

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mEapFailureLog:Ljava/lang/String;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    const-string v2, "DEAUTH RX"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_5

    .line 150
    .line 151
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_6

    .line 161
    .line 162
    const-string v2, "DISASSOC RX"

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 171
    .line 172
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_7
    :goto_2
    return-void
.end method

.method private isValidDisconnectionReasonCode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v2, "reason="

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 31
    .line 32
    :goto_1
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_2
    const-string v0, "14"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    const-string v0, "15"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_3
    return v1
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->extractLastConnectionLogStepByStep(Lcom/samsung/android/server/wifi/connection/LogSet;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocRequestLog:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "tx_status=ACK"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const-string v1, "bssid="

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "status=0"

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocRequestLog:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocRequestLog:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    const/16 p0, -0x4b

    .line 69
    .line 70
    if-ge v1, p0, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance p0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 74
    .line 75
    const/4 v2, 0x6

    .line 76
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mFourWayM4Log:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->isValidDisconnectionReasonCode()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mEapFailureLog:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mFourWayM4Log:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_5

    .line 139
    .line 140
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    :goto_2
    if-eqz p1, :cond_7

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 162
    .line 163
    .line 164
    move-result-wide v5

    .line 165
    sub-long/2addr v3, v5

    .line 166
    const-wide/16 v5, 0x0

    .line 167
    .line 168
    cmp-long p1, v5, v3

    .line 169
    .line 170
    if-gez p1, :cond_7

    .line 171
    .line 172
    const-wide/16 v5, 0x1388

    .line 173
    .line 174
    cmp-long p1, v3, v5

    .line 175
    .line 176
    if-gez p1, :cond_7

    .line 177
    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_6
    new-instance p1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 198
    .line 199
    const/4 v0, 0x7

    .line 200
    invoke-direct {p1, v0, p0, v2}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    return-object p1

    .line 204
    :cond_7
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 205
    .line 206
    return-object p0
.end method
