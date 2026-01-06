.class public Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "Conn.roam.LogProcessor"


# instance fields
.field private final mAnalyzers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/connection/roam/BaseLogAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventMan:Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;


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
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->mAnalyzers:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->mEventMan:Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;

    .line 17
    .line 18
    new-instance p0, Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/LowRssiRoamAnalyzer;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScoreAnalyzer;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance p0, Lcom/samsung/android/server/wifi/connection/roam/RoamTriggerAnalyzer;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamTriggerAnalyzer;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    new-instance p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanPeriodAnalyzer;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public clearAllEvents()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->mEventMan:Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;->clearAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBigdataEvents(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->mEventMan:Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;->get(I)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public processLog(Lcom/samsung/android/server/wifi/connection/LogManager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->mAnalyzers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lcom/samsung/android/server/wifi/connection/roam/BaseLogAnalyzer;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamLogProcessor;->mEventMan:Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;

    .line 19
    .line 20
    invoke-interface {v3, p1, v4}, Lcom/samsung/android/server/wifi/connection/roam/BaseLogAnalyzer;->analyze(Lcom/samsung/android/server/wifi/connection/LogManager;Lcom/samsung/android/server/wifi/connection/roam/BigdataEventManager;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
