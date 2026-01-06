.class public Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Conn.FailureDetailedAnalyzer"

.field private static final TYPE_BSSID:Ljava/lang/String; = "bssid="

.field private static final mPublicNetworks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->mPublicNetworks:Ljava/util/HashSet;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->mPublicNetworks:Ljava/util/HashSet;

    .line 5
    .line 6
    const-string v0, "\"ollehWiFi\""

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v0, "\"olleh GiGA WiFi\""

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v0, "\"KT GiGA WiFi\""

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v0, "\"KT WiFi\""

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v0, "\"KT_Free_WiFi\""

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v0, "\"T wifi zone\""

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v0, "\"T wifi zone_secure\""

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const-string v0, "\"T Free Wifi\""

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const-string v0, "\"T Free Wifi Zone\""

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const-string v0, "\"U+zone\""

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const-string v0, "\"U+zone_5G\""

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const-string v0, "\"5G_U+zone\""

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const-string v0, "\"0000docomo\""

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const-string v0, "\"0001docomo\""

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    const-string v0, "\"XFINITY\""

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    const-string v0, "\"xfinitywifi\""

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v0, "\"Public WiFi Free\""

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    const-string v0, "\"SEOUL\""

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    const-string v0, "\"SEOUL_Secure\""

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private findFirstSuccessAssocResponse(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 p0, 0x1

    .line 2
    :goto_0
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gt p0, v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 11
    .line 12
    add-int/lit8 v1, p0, -0x1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "ASSOC RESP"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, "status=0"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
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
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->getTime(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p2}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->getTime(Ljava/lang/String;)J

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
    .locals 9

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
    new-instance v1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 13
    .line 14
    const/16 v3, 0x25c

    .line 15
    .line 16
    invoke-direct {v1, v3, v2}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILcom/samsung/android/server/wifi/connection/Issue;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/LogSet;->getFirstConnectingLog()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->isConnected(Lcom/samsung/android/server/wifi/connection/LogSet;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/connection/LogSet;->getLastLogLine()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {p0, v2, v5}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    const-wide/16 v7, 0x2710

    .line 54
    .line 55
    cmp-long v5, v5, v7

    .line 56
    .line 57
    if-gez v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogSet;->getLastLogLine()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    const-wide/32 v7, 0x493e0

    .line 68
    .line 69
    .line 70
    cmp-long v2, v5, v7

    .line 71
    .line 72
    if-lez v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->findFirstSuccessAssocResponse(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string p1, "bssid="

    .line 91
    .line 92
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_0

    .line 101
    .line 102
    iget-object p1, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_0

    .line 111
    .line 112
    iget-object p1, v0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_0

    .line 121
    .line 122
    const/16 p0, 0x259

    .line 123
    .line 124
    iput p0, v1, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_0
    const/16 p0, 0x25a

    .line 128
    .line 129
    iput p0, v1, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->isPublicWifi(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_2

    .line 137
    .line 138
    const/16 p0, 0x25b

    .line 139
    .line 140
    iput p0, v1, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 141
    .line 142
    :cond_2
    return-object v1
.end method

.method isPublicWifi(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/connection/ConnectionFailureDetailedAnalyzer;->mPublicNetworks:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
