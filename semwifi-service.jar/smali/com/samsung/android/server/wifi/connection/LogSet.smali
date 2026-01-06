.class public Lcom/samsung/android/server/wifi/connection/LogSet;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final CONNECTING_LOG:Ljava/lang/String; = "[CONN] CONNECTING ssid="

.field static final EMPTY:Lcom/samsung/android/server/wifi/connection/LogSet;


# instance fields
.field public issue:Lcom/samsung/android/server/wifi/connection/Issue;

.field public logs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/connection/LogSet;-><init>(Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/server/wifi/connection/LogSet;->EMPTY:Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->issue:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method

.method public static create(Ljava/util/ArrayList;)Lcom/samsung/android/server/wifi/connection/LogSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/server/wifi/connection/LogSet;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/connection/LogSet;-><init>(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/connection/LogSet;->EMPTY:Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public getFirstConnectingLog()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :cond_1
    if-ge v2, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    const-string v4, "[CONN] CONNECTING ssid="

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    return-object v3

    .line 40
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getLastLogLine()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    const-string p0, ""

    .line 28
    .line 29
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/connection/LogSet;->EMPTY:Lcom/samsung/android/server/wifi/connection/LogSet;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/LogSet;->logs:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method
