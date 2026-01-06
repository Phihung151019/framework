.class public Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SrrSaLoggingHandler"


# instance fields
.field private final mReportHistory:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;


# direct methods
.method public static synthetic $r8$lambda$DYk9zdFD-YhucdqEunTVUXSmtGg(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->lambda$sendEvent$0(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->mReportHistory:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$sendEvent$0(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->-$$Nest$fgettext(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingCASR;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private sendEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "strong_rssi_roaming"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->mReportHistory:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->mReportHistory:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 40
    .line 41
    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public resetSrrW24hStats()V
    .locals 1

    .line 1
    const-string v0, "strong_rssi_roaming"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->mReportHistory:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->mReportHistory:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method
