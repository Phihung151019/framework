.class public Lcom/samsung/android/server/wifi/connection/LogManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final MAX_LOG_SET:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "Conn.LogManager"


# instance fields
.field private final mLogSets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/connection/LogSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method add(Lcom/samsung/android/server/wifi/connection/LogSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 v0, 0x1e

    .line 13
    .line 14
    if-le p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public getNumOfConnections()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public request(I)Lcom/samsung/android/server/wifi/connection/LogSet;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/connection/LogSet;->EMPTY:Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 22
    .line 23
    return-object p0
.end method

.method public requestRecent()Lcom/samsung/android/server/wifi/connection/LogSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/samsung/android/server/wifi/connection/LogSet;->EMPTY:Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/LogManager;->mLogSets:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 19
    .line 20
    return-object p0
.end method
