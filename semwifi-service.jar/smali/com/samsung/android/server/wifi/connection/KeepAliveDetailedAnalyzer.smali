.class public Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Conn.KeepAliveDetailedAnalyzer"


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

.method private static getDiscLog(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 10
    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "DEAUTH RX"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-string v2, "DISASSOC RX"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    :goto_1
    return-object v1

    .line 37
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string p0, ""

    .line 41
    .line 42
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

.method private getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;->getTime(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p2}, Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;->getTime(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sub-long/2addr p0, v0

    .line 10
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private isConnected(Lcom/samsung/android/server/wifi/connection/LogSet;)Z
    .locals 4

    .line 1
    iget-object p0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :cond_0
    if-ge v1, p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "ASSOC RESP"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const-string v3, "status=0"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    return v0
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/connection/LogManager;->request(I)Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0xcb

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    new-instance p0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 35
    .line 36
    iget-object p1, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 37
    .line 38
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILcom/samsung/android/server/wifi/connection/Issue;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;->getDiscLog(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    new-instance p0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 53
    .line 54
    iget-object p1, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 55
    .line 56
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILcom/samsung/android/server/wifi/connection/Issue;)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;->isConnected(Lcom/samsung/android/server/wifi/connection/LogSet;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;->getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    const-wide/16 v6, 0x2710

    .line 75
    .line 76
    cmp-long v1, v4, v6

    .line 77
    .line 78
    if-gez v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getLastLogLine()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/server/wifi/connection/KeepAliveDetailedAnalyzer;->getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide p0

    .line 88
    const-wide/32 v1, 0x493e0

    .line 89
    .line 90
    .line 91
    cmp-long p0, p0, v1

    .line 92
    .line 93
    if-lez p0, :cond_2

    .line 94
    .line 95
    new-instance p0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 96
    .line 97
    const/16 p1, 0xc9

    .line 98
    .line 99
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 100
    .line 101
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILcom/samsung/android/server/wifi/connection/Issue;)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_2
    new-instance p0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 106
    .line 107
    const/16 p1, 0xca

    .line 108
    .line 109
    iget-object v0, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 110
    .line 111
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILcom/samsung/android/server/wifi/connection/Issue;)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_3
    new-instance p0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 116
    .line 117
    iget-object p1, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 118
    .line 119
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILcom/samsung/android/server/wifi/connection/Issue;)V

    .line 120
    .line 121
    .line 122
    return-object p0
.end method
