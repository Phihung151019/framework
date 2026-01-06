.class public Lcom/samsung/android/server/wifi/connection/BeaconLossDisconnectionAnalyzer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/connection/BaseAnalyzer;


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


# virtual methods
.method public analyze(Lcom/samsung/android/server/wifi/connection/LogManager;)Lcom/samsung/android/server/wifi/connection/Issue;
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/connection/LogManager;->requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    if-lez v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p1, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 16
    .line 17
    add-int/lit8 v2, v0, -0x1

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "[CONN] CONNECTING ssid="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string v2, " DISCONN "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const-string p0, "bssid="

    .line 43
    .line 44
    invoke-static {v1, p0}, Lcom/samsung/android/server/wifi/connection/Util;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/Util;->getOuiFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1}, Lcom/samsung/android/server/wifi/connection/Util;->getRssi(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    new-instance v1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 57
    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    invoke-direct {v1, v2, p1, v0, p0}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput v0, v1, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    return-object p0
.end method
