.class public Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;
    }
.end annotation


# static fields
.field private static final DEAUTH_REASON_GTK_TIMEOUT:Ljava/lang/String; = "16"

.field private static final DUPLICATE_GTK_M1_CHECK_TIME_MS:J = 0xbb8L

.field private static final MAX_GTK_INTERVAL_FAIL_CASE_POST_MARGIN_SECOND:J = 0xaL

.field private static final MAX_GTK_INTERVAL_FAIL_CASE_PRE_MARGIN_SECOND:J = 0xaL

.field private static final MAX_GTK_INTERVAL_POST_MARGIN_SECOND:J = 0xaL

.field private static final MAX_GTK_INTERVAL_PRE_MARGIN_SECOND:J = 0xaL

.field private static final MIN_GTK_INTERVAL_THRESHOLD_SECOND:J = 0x3cL

.field private static final TAG:Ljava/lang/String; = "Conn.GtkAnalyzer"


# instance fields
.field private rssi:I


# direct methods
.method public static synthetic $r8$lambda$g0r6s6gZneFHlMPa58TbmrWD6BY(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->lambda$averageGtkInterval$0(Ljava/lang/Long;Ljava/lang/Long;)I

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

.method private averageGtkInterval(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    const-wide/16 v5, -0x1

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-wide v8, v3

    .line 26
    move-wide v11, v5

    .line 27
    move v10, v7

    .line 28
    move v13, v10

    .line 29
    :goto_0
    if-ge v13, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    add-int/lit8 v13, v13, 0x1

    .line 36
    .line 37
    check-cast v14, Ljava/lang/Long;

    .line 38
    .line 39
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v14

    .line 43
    cmp-long v16, v11, v5

    .line 44
    .line 45
    if-eqz v16, :cond_0

    .line 46
    .line 47
    const-wide/16 v16, 0xa

    .line 48
    .line 49
    add-long v11, v11, v16

    .line 50
    .line 51
    cmp-long v11, v11, v14

    .line 52
    .line 53
    if-gez v11, :cond_0

    .line 54
    .line 55
    new-instance v16, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;

    .line 56
    .line 57
    int-to-long v10, v10

    .line 58
    div-long v17, v8, v10

    .line 59
    .line 60
    const/16 v21, 0x0

    .line 61
    .line 62
    move-wide/from16 v19, v10

    .line 63
    .line 64
    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;-><init>(JJI)V

    .line 65
    .line 66
    .line 67
    move-object/from16 v8, v16

    .line 68
    .line 69
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-wide v8, v3

    .line 73
    move v10, v7

    .line 74
    :cond_0
    add-long/2addr v8, v14

    .line 75
    add-int/lit8 v10, v10, 0x1

    .line 76
    .line 77
    move-wide v11, v14

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v16, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;

    .line 80
    .line 81
    int-to-long v2, v10

    .line 82
    div-long v17, v8, v2

    .line 83
    .line 84
    const/16 v21, 0x0

    .line 85
    .line 86
    move-wide/from16 v19, v2

    .line 87
    .line 88
    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;-><init>(JJI)V

    .line 89
    .line 90
    .line 91
    move-object/from16 v0, v16

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    return-object v1
.end method

.method private collectGtkUpdateTime(Ljava/lang/String;Lcom/samsung/android/server/wifi/connection/LogSet;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/connection/LogSet;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p2, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-wide v4, v0

    .line 11
    move v3, v2

    .line 12
    :cond_0
    :goto_0
    if-ge v3, p2, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    check-cast v6, Ljava/lang/String;

    .line 21
    .line 22
    const-string v7, "ASSOC RESP"

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-eqz v7, :cond_1

    .line 29
    .line 30
    const-string v7, "status=0"

    .line 31
    .line 32
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_1

    .line 37
    .line 38
    const-string v2, "bssid="

    .line 39
    .line 40
    invoke-static {v6, v2}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    move-wide v4, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-eqz v2, :cond_0

    .line 53
    .line 54
    const-string v7, "GTK M1"

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    invoke-static {v6}, Lcom/samsung/android/server/wifi/connection/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    cmp-long v8, v4, v0

    .line 73
    .line 74
    if-eqz v8, :cond_2

    .line 75
    .line 76
    cmp-long v8, v6, v4

    .line 77
    .line 78
    if-gez v8, :cond_3

    .line 79
    .line 80
    :cond_2
    :goto_1
    move-wide v4, v6

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const-wide/16 v8, 0xbb8

    .line 83
    .line 84
    add-long/2addr v8, v4

    .line 85
    cmp-long v8, v6, v8

    .line 86
    .line 87
    if-gez v8, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    sub-long v4, v6, v4

    .line 91
    .line 92
    const-wide/16 v8, 0x3e8

    .line 93
    .line 94
    div-long/2addr v4, v8

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    return-void
.end method

.method private getCurrentBssid(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/lit8 p0, p0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz p0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "ASSOC RESP"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v1, "status=0"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string p0, "bssid="

    .line 36
    .line 37
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p0, ""

    .line 46
    .line 47
    return-object p0
.end method

.method private getCurrentSsid(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;
    .locals 3

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
    :cond_0
    if-ge v0, p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "CONNECTING"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/Util;->parseSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string p0, ""

    .line 32
    .line 33
    return-object p0
.end method

.method private getGtkUpdateTime(Ljava/util/ArrayList;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;",
            ">;)J"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;->-$$Nest$fgetcount(Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, 0x5

    .line 13
    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;->-$$Nest$fgetavg(Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    return-wide p0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-le v1, v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;->-$$Nest$fgetavg(Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ge v2, v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;->-$$Nest$fgetavg(Lcom/samsung/android/server/wifi/connection/GtkAnalyzer$Pair;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    const-wide/16 v8, 0xa

    .line 63
    .line 64
    const-wide/16 v10, 0xa

    .line 65
    .line 66
    move-object v3, p0

    .line 67
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->isMultiple(JJJJ)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    move-object p0, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-ge v2, p0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    return-wide v4

    .line 86
    :cond_4
    :goto_2
    const-wide/16 p0, 0x0

    .line 87
    .line 88
    return-wide p0
.end method

.method private isDiscReasonGtkUpdateFailure(Lcom/samsung/android/server/wifi/connection/LogSet;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    const/4 v2, 0x0

    .line 10
    if-ltz v0, :cond_3

    .line 11
    .line 12
    iget-object v3, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "DEAUTH RX"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    const-string v4, "DISASSOC RX"

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
    goto :goto_1

    .line 37
    :cond_0
    const-string v4, "ASSOC RESP"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    const-string v4, "status=0"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    return v2

    .line 54
    :cond_1
    :goto_1
    const-string v2, "reason="

    .line 55
    .line 56
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v4, "16"

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-static {v3}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->rssi:I

    .line 73
    .line 74
    return v1

    .line 75
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    return v2
.end method

.method private isGtkFailCase(Lcom/samsung/android/server/wifi/connection/LogSet;J)Z
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    :goto_0
    if-lez v0, :cond_3

    .line 13
    .line 14
    iget-object v3, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    const-string v4, "GTK M2 tx_status=ACK"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    move-object v1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    const-string v4, "DEAUTH RX"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    const-string v4, "DISASSOC RX"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, p0, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->rssi:I

    .line 59
    .line 60
    move-object v2, v3

    .line 61
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    const-wide/16 v3, 0x3c

    .line 65
    .line 66
    cmp-long p1, p2, v3

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    if-gtz p1, :cond_4

    .line 70
    .line 71
    return v0

    .line 72
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/connection/Util;->calculateTimeGap(Ljava/lang/String;Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    const-wide/16 v8, 0xa

    .line 89
    .line 90
    const-wide/16 v10, 0xa

    .line 91
    .line 92
    move-object v3, p0

    .line 93
    move-wide v4, p2

    .line 94
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->isMultiple(JJJJ)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0

    .line 99
    :cond_5
    return v0
.end method

.method private isMultiple(JJJJ)Z
    .locals 0

    .line 1
    rem-long/2addr p3, p1

    .line 2
    sub-long/2addr p1, p5

    .line 3
    cmp-long p0, p3, p1

    .line 4
    .line 5
    if-gtz p0, :cond_1

    .line 6
    .line 7
    cmp-long p0, p3, p7

    .line 8
    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method private static synthetic lambda$averageGtkInterval$0(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    sub-long/2addr v0, p0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->getCurrentBssid(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->getCurrentSsid(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_5

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_5

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->isDiscReasonGtkUpdateFailure(Lcom/samsung/android/server/wifi/connection/LogSet;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x3

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    new-instance p1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 44
    .line 45
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->rssi:I

    .line 46
    .line 47
    invoke-direct {p1, v5, v3, p0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->getNumOfConnections()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ge v6, v7, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1, v6}, Lcom/samsung/android/server/wifi/connection/LogManager;->request(I)Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->getCurrentSsid(Lcom/samsung/android/server/wifi/connection/LogSet;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-direct {p0, v1, v7, v4}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->collectGtkUpdateTime(Ljava/lang/String;Lcom/samsung/android/server/wifi/connection/LogSet;Ljava/util/ArrayList;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->averageGtkInterval(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->getGtkUpdateTime(Ljava/util/ArrayList;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->isGtkFailCase(Lcom/samsung/android/server/wifi/connection/LogSet;J)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    new-instance p1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 111
    .line 112
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/GtkAnalyzer;->rssi:I

    .line 113
    .line 114
    invoke-direct {p1, v5, v3, p0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_4
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 119
    .line 120
    return-object p0

    .line 121
    :cond_5
    :goto_2
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 122
    .line 123
    return-object p0
.end method
