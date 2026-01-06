.class Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InterfaceStateHistory"
.end annotation


# static fields
.field static final AWARE:I = 0x2

.field private static final CURRENT:I = 0x1

.field static final DEFAULT_DELTA_MS:J = 0x1f4L

.field private static final MAX_IFACE:I = 0x3

.field static final P2P:I = 0x1

.field private static final PREVIOUS:I

.field static final STA:I


# instance fields
.field private final clock:Lcom/samsung/android/server/wifi/util/SemClock;

.field startAt:[[J

.field states:[[Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/util/SemClock;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x3

    .line 9
    aput v3, v1, v2

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput v0, v1, v4

    .line 13
    .line 14
    const-class v5, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 15
    .line 16
    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, [[Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->states:[[Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 23
    .line 24
    new-array v1, v0, [I

    .line 25
    .line 26
    aput v3, v1, v2

    .line 27
    .line 28
    aput v0, v1, v4

    .line 29
    .line 30
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [[J

    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->startAt:[[J

    .line 39
    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 41
    .line 42
    move p1, v4

    .line 43
    :goto_0
    if-ge p1, v3, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->states:[[Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 46
    .line 47
    aget-object v1, v0, v4

    .line 48
    .line 49
    sget-object v5, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->DISCONNECTED:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 50
    .line 51
    aput-object v5, v1, p1

    .line 52
    .line 53
    aget-object v0, v0, v2

    .line 54
    .line 55
    aput-object v5, v0, p1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->startAt:[[J

    .line 58
    .line 59
    aget-object v1, v0, v4

    .line 60
    .line 61
    const-wide/16 v5, 0x0

    .line 62
    .line 63
    aput-wide v5, v1, p1

    .line 64
    .line 65
    aget-object v0, v0, v2

    .line 66
    .line 67
    aput-wide v5, v0, p1

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method addHistory(ILcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->states:[[Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    aget-object v2, v2, p1

    if-ne v2, p2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 3
    aget-object v4, v0, v3

    aput-object v2, v4, p1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->startAt:[[J

    aget-object v3, v2, v3

    aget-object v4, v2, v1

    aget-wide v4, v4, p1

    aput-wide v4, v3, p1

    .line 5
    aget-object v0, v0, v1

    aput-object p2, v0, p1

    .line 6
    aget-object p2, v2, v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    aput-wide v0, p2, p1

    return-void
.end method

.method addHistory(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->CONNECTED:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;->DISCONNECTED:Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->addHistory(ILcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;)V

    return-void
.end method

.method getLastState(I)Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->startAt:[[J

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    aget-object v2, v2, v3

    .line 11
    .line 12
    aget-wide v4, v2, p1

    .line 13
    .line 14
    sub-long/2addr v0, v4

    .line 15
    const-wide/16 v4, 0x1f4

    .line 16
    .line 17
    cmp-long v0, v0, v4

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->states:[[Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    aget-object p0, p0, v0

    .line 25
    .line 26
    aget-object p0, p0, p1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceStateHistory;->states:[[Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$InterfaceState;

    .line 30
    .line 31
    aget-object p0, p0, v3

    .line 32
    .line 33
    aget-object p0, p0, p1

    .line 34
    .line 35
    return-object p0
.end method
