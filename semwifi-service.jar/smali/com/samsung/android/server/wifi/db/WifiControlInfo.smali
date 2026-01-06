.class public Lcom/samsung/android/server/wifi/db/WifiControlInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final MAX_TIMEOUT:J = 0x1388L

.field public static final SAMSUNG_WIFI_PACKAGE_PREFIX:Ljava/lang/String; = "samsung.wifi."


# instance fields
.field private final controlTimeMs:J

.field final packageName:Ljava/lang/String;

.field private final state:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->state:Z

    .line 14
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->controlTimeMs:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "samsung.wifi."

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->packageName:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->state:Z

    .line 6
    new-instance p1, Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->controlTimeMs:J

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isValid(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->state:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/samsung/android/server/wifi/util/SemClock;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlInfo;->controlTimeMs:J

    .line 15
    .line 16
    sub-long/2addr v0, p0

    .line 17
    const-wide/16 p0, 0x1388

    .line 18
    .line 19
    cmp-long p0, v0, p0

    .line 20
    .line 21
    if-gez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method
