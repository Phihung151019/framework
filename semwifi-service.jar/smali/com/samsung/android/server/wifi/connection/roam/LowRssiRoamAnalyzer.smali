.class public Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/roam/BaseLogAnalyzer;


# static fields
.field private static final BASE_LOW_RSSI_THRESHOLD:I = -0x50

.field private static final DEFAULT_RSSI_THRESHOLD:I = -0x4b

.field private static final TAG:Ljava/lang/String; = "Conn.LowRssiRoamAnalyzer"


# instance fields
.field private mTargetRssi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;->mTargetRssi:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private extractTargetRssi(Ljava/util/ArrayList;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "bssid="

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    move v4, v1

    .line 36
    :cond_2
    if-ge v4, v3, :cond_4

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    .line 46
    const-string v6, "SCORE_CANDI"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    invoke-static {v5, v2}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    invoke-static {v5}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iput-object v6, p0, Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;->mTargetRssi:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_2

    .line 79
    .line 80
    const/16 v6, -0x4b

    .line 81
    .line 82
    const/4 v7, 0x1

    .line 83
    if-ne p2, v6, :cond_3

    .line 84
    .line 85
    const/16 v6, -0x41

    .line 86
    .line 87
    if-lt v5, v6, :cond_3

    .line 88
    .line 89
    return v7

    .line 90
    :cond_3
    const/16 v5, -0x50

    .line 91
    .line 92
    if-gt p2, v5, :cond_2

    .line 93
    .line 94
    return v7

    .line 95
    :cond_4
    return v1
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;->mTargetRssi:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, -0x7f

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v6, v0

    .line 20
    move-object v7, v6

    .line 21
    move v8, v2

    .line 22
    move v9, v3

    .line 23
    move v10, v9

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v5, v1, :cond_6

    .line 26
    .line 27
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    check-cast v11, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    const-string v12, "[CONN] CONNECTING ssid="

    .line 42
    .line 43
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    if-eqz v12, :cond_5

    .line 48
    .line 49
    invoke-static {v11}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_0
    const-string v12, "[ROAM] SCAN_START reason="

    .line 56
    .line 57
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    if-eqz v12, :cond_2

    .line 62
    .line 63
    const-string v7, "reason=1"

    .line 64
    .line 65
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_1

    .line 70
    .line 71
    const-string v7, "rssi_thres="

    .line 72
    .line 73
    invoke-static {v11, v7}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    move v9, v4

    .line 82
    goto :goto_2

    .line 83
    :catch_0
    move v8, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move-object v7, v0

    .line 86
    move v8, v2

    .line 87
    move v9, v3

    .line 88
    :cond_2
    :goto_2
    if-eq v9, v3, :cond_3

    .line 89
    .line 90
    const-string v12, "REASSOC RESP"

    .line 91
    .line 92
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-eqz v12, :cond_3

    .line 97
    .line 98
    const-string v12, "status=0"

    .line 99
    .line 100
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_3

    .line 105
    .line 106
    move v10, v4

    .line 107
    :cond_3
    if-eq v9, v3, :cond_5

    .line 108
    .line 109
    if-eq v10, v3, :cond_5

    .line 110
    .line 111
    new-instance v11, Ljava/util/ArrayList;

    .line 112
    .line 113
    add-int/lit8 v10, v10, 0x1

    .line 114
    .line 115
    invoke-virtual {p1, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v11, v8}, Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;->extractTargetRssi(Ljava/util/ArrayList;I)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_4

    .line 127
    .line 128
    new-instance v8, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;

    .line 129
    .line 130
    const/4 v9, 0x3

    .line 131
    invoke-direct {v8, v9}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;-><init>(I)V

    .line 132
    .line 133
    .line 134
    iget-object v9, v8, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 135
    .line 136
    const-string v10, "target_rssi"

    .line 137
    .line 138
    iget-object v11, p0, Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;->mTargetRssi:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    iget-object v9, v8, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 144
    .line 145
    const-string v10, "rssi_threshold"

    .line 146
    .line 147
    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v8}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;->add(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;)Z

    .line 151
    .line 152
    .line 153
    :cond_4
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;->mTargetRssi:Ljava/lang/String;

    .line 154
    .line 155
    move-object v7, v0

    .line 156
    move v8, v2

    .line 157
    move v9, v3

    .line 158
    move v10, v9

    .line 159
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    return-void
.end method
