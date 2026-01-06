.class public Lcom/samsung/android/server/wifi/connection/roam/RoamTriggerAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/roam/BaseLogAnalyzer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Conn.RoamTriggerAnalyzer"

.field private static final mValidReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v9, "9"

    .line 2
    .line 3
    const-string v10, "10"

    .line 4
    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    const-string v2, "2"

    .line 10
    .line 11
    const-string v3, "3"

    .line 12
    .line 13
    const-string v4, "4"

    .line 14
    .line 15
    const-string v5, "5"

    .line 16
    .line 17
    const-string v6, "6"

    .line 18
    .line 19
    const-string v7, "7"

    .line 20
    .line 21
    const-string v8, "8"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/samsung/android/server/wifi/connection/roam/RoamTriggerAnalyzer;->mValidReasons:Ljava/util/Set;

    .line 32
    .line 33
    return-void
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

.method private getEvent(Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;
    .locals 6

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;->get(I)Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "reason"

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :cond_0
    if-ge v3, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    check-cast v4, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;

    .line 28
    .line 29
    iget-object v5, v4, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    return-object v4

    .line 42
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, v0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {p0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object p0, v0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 53
    .line 54
    const-string p2, "roam"

    .line 55
    .line 56
    const-string v1, "0"

    .line 57
    .line 58
    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p0, v0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 62
    .line 63
    const-string p2, "no_roam"

    .line 64
    .line 65
    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;->add(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;)Z

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method private increaseValue(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p1, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "0"

    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "Conn.RoamTriggerAnalyzer"

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
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
    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    move-object v3, v1

    .line 15
    :cond_0
    :goto_1
    if-ge v2, v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    check-cast v4, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    const-string v5, "[ROAM] SCAN_START"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    const-string v5, "reason="

    .line 40
    .line 41
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    sget-object v5, Lcom/samsung/android/server/wifi/connection/roam/RoamTriggerAnalyzer;->mValidReasons:Ljava/util/Set;

    .line 46
    .line 47
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    move-object v3, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v5, "[ROAM] RESULT"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/server/wifi/connection/roam/RoamTriggerAnalyzer;->getEvent(Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v5, "NO_ROAM"

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    const-string v4, "no_roam"

    .line 76
    .line 77
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/connection/roam/RoamTriggerAnalyzer;->increaseValue(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string v4, "roam"

    .line 82
    .line 83
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/connection/roam/RoamTriggerAnalyzer;->increaseValue(Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    return-void
.end method
