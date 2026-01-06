.class public Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner$BlockingRunnable;
    }
.end annotation


# static fields
.field private static final RUN_WITH_SCISSORS_TIMEOUT_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SemWifiApThreadRunner"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$PE2CrZh3cUMarY4cE0nge-YfchE(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->lambda$call$0(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$call$0(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method private static runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner$BlockingRunnable;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner$BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string p1, "timeout must be non-negative"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method


# virtual methods
.method public call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0xfa0

    .line 14
    .line 15
    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, v0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    .line 25
    .line 26
    const-string p1, "Stack trace:"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "SemWifiApThreadRunner"

    .line 32
    .line 33
    const-string v0, "SemWifiApThreadRunner.call() timed out!"

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return-object p2
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public run(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const-wide/16 v0, 0xfa0

    .line 4
    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    .line 14
    .line 15
    const-string p1, "Stack trace:"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "SemWifiApThreadRunner"

    .line 21
    .line 22
    const-string v0, "SemWifiApThreadRunner.run() timed out!"

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0
.end method
