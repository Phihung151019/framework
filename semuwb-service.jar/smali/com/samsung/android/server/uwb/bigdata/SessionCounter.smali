.class public Lcom/samsung/android/server/uwb/bigdata/SessionCounter;
.super Ljava/lang/Object;
.source "SessionCounter.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SessionCounter"


# instance fields
.field public mMaxSessionCountForBigdata:I

.field mSamsungExtension:Lcom/samsung/android/server/uwb/SamsungExtension;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/uwb/SamsungExtension;)V
    .locals 1
    .param p1, "samsungExtension"    # Lcom/samsung/android/server/uwb/SamsungExtension;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->mMaxSessionCountForBigdata:I

    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->mSamsungExtension:Lcom/samsung/android/server/uwb/SamsungExtension;

    .line 18
    return-void
.end method

.method private checkToChangeMaxSessionCount(I)V
    .locals 1
    .param p1, "currentActiveSessionCount"    # I

    .line 44
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->mMaxSessionCountForBigdata:I

    if-le p1, v0, :cond_0

    .line 45
    iput p1, p0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->mMaxSessionCountForBigdata:I

    .line 47
    :cond_0
    return-void
.end method

.method private countActiveSession()I
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->mSamsungExtension:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->getSessionManager()Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->getAllUwbSessions()Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "uwbSessionList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;>;"
    new-instance v1, Lcom/samsung/android/server/uwb/bigdata/SessionCounter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/bigdata/SessionCounter$$ExternalSyntheticLambda0;-><init>()V

    .line 40
    .local v1, "activeSessionStatePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method static synthetic lambda$countActiveSession$0(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)Z
    .locals 2
    .param p0, "session"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getMaxSessionCount()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->mMaxSessionCountForBigdata:I

    return v0
.end method

.method public resetMaxSessionCount()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->mMaxSessionCountForBigdata:I

    .line 26
    return-void
.end method

.method public setActiveSessionCount()Z
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->countActiveSession()I

    move-result v0

    .line 31
    .local v0, "currentActiveSessionCount":I
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->checkToChangeMaxSessionCount(I)V

    .line 33
    if-nez v0, :cond_0

    iget v1, p0, Lcom/samsung/android/server/uwb/bigdata/SessionCounter;->mMaxSessionCountForBigdata:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
