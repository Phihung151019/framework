.class public Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;


# static fields
.field private static final KEEP_ALIVE_TIME:I = 0x1e

.field private static final SAVED_BSSID_LIST_SIZE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "Conn.KeepAliveAnalyzer"

.field private static final TYPE_BSSID:Ljava/lang/String; = "bssid="


# instance fields
.field private mAssocResponseLog:Ljava/lang/String;

.field private mDeAssocRxLog:Ljava/lang/String;

.field private mDeAuthRxLog:Ljava/lang/String;

.field private final savedBssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->savedBssidList:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method

.method private extractLastConnectionLogStepByStep(Lcom/samsung/android/server/wifi/connection/LogSet;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move-object v2, v0

    .line 16
    :goto_0
    if-lez v1, :cond_8

    .line 17
    .line 18
    iget-object v3, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 19
    .line 20
    add-int/lit8 v4, v1, -0x1

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    const-string v4, "AUTH REQ"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    const-string v4, "ASSOC REQ"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    const-string v2, "tx_status=ACK"

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    move-object v2, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    const-string v4, "ASSOC RESP"

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    iput-object v3, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    const-string v4, "DEAUTH RX"

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_4

    .line 100
    .line 101
    iput-object v3, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_5

    .line 111
    .line 112
    const-string v4, "DISASSOC RX"

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_5

    .line 119
    .line 120
    iput-object v3, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 121
    .line 122
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    iget-object v3, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_7

    .line 137
    .line 138
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_7

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->extractLastConnectionLogStepByStep(Lcom/samsung/android/server/wifi/connection/LogSet;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_6

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "status=0"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_6

    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const-string v0, "bssid="

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 45
    .line 46
    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    if-ge v1, v2, :cond_2

    .line 61
    .line 62
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->isPassAllConditions()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->savedBssidList:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v1, -0x1

    .line 93
    if-ne v0, v1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->saveCandidateBssid(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->savedBssidList:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 118
    .line 119
    :goto_2
    new-instance v0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    const/4 v1, 0x2

    .line 130
    invoke-direct {v0, v1, p1, p0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_6
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 135
    .line 136
    return-object p0
.end method

.method public isKeepAliveReason()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "reason="

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 12
    .line 13
    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const-string v0, "6"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    const-string v0, "7"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const-string v0, "34"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_2
    :goto_2
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public isOverKeepAliveTime()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mAssocResponseLog:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAssocRxLog:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->mDeAuthRxLog:Ljava/lang/String;

    .line 15
    .line 16
    :goto_0
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/connection/Util;->calculateTimeGap(Ljava/lang/String;Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/16 v2, 0x1e

    .line 21
    .line 22
    cmp-long p0, v0, v2

    .line 23
    .line 24
    if-lez p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public isPassAllConditions()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->isKeepAliveReason()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->isOverKeepAliveTime()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public saveCandidateBssid(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->savedBssidList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xf

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->savedBssidList:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/KeepAliveAnalyzer;->savedBssidList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
