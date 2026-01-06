.class public Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;
    }
.end annotation


# static fields
.field private static final RUN_WITH_SCISSORS_TIMEOUT_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SemWifiThreadRunner"


# instance fields
.field private volatile mDispatchThread:Ljava/lang/Thread;

.field private final mHandler:Landroid/os/Handler;

.field private mTimeoutsAreErrors:Z

.field public mVerboseLoggingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$I_-b3TqX62KFbrcmNdvaGGLAtXE(Lcom/samsung/android/server/wifi/SemWifiThreadRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->lambda$prepareForAutoDispatch$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$fwpw4CkvYZvsCcGZG4jl8_INyoc(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->lambda$call$0(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mTimeoutsAreErrors:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mDispatchThread:Ljava/lang/Thread;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mVerboseLoggingEnabled:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    return-void
.end method

.method static getScissorsTimeoutThreshold()J
    .locals 2

    .line 1
    const-wide/16 v0, 0xfa0

    .line 2
    .line 3
    return-wide v0
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

.method private synthetic lambda$prepareForAutoDispatch$1()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mDispatchThread:Ljava/lang/Thread;

    .line 6
    .line 7
    return-void
.end method

.method private runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;JZ)Z
    .locals 3

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, p3, v0

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mDispatchThread:Ljava/lang/Thread;

    .line 29
    .line 30
    if-ne v0, p0, :cond_1

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    new-instance p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;

    .line 37
    .line 38
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;->postAndWait(Landroid/os/Handler;JZ)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string p1, "timeout must be non-negative"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p1, "runnable must not be null"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method


# virtual methods
.method public call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v3, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v4, 0xfa0

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v1, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;JZ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object p0, v0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    iget-boolean p0, v1, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mVerboseLoggingEnabled:Z

    .line 27
    .line 28
    const-string p1, "SemWifiThreadRunner.call() timed out!"

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    new-instance p0, Ljava/lang/Throwable;

    .line 33
    .line 34
    const-string v0, "Caller thread Stack trace:"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/Throwable;

    .line 40
    .line 41
    const-string v2, "Wifi thread Stack trace:"

    .line 42
    .line 43
    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "SemWifiThreadRunner"

    .line 64
    .line 65
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-boolean p0, v1, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mTimeoutsAreErrors:Z

    .line 72
    .line 73
    if-nez p0, :cond_2

    .line 74
    .line 75
    return-object p2

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final hasCallbacks(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

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

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public prepareForAutoDispatch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiThreadRunner;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public run(Ljava/lang/Runnable;)Z
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const-wide/16 v3, 0xfa0

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;JZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    .line 17
    .line 18
    const-string p1, "Caller thread Stack trace:"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "SemWifiThreadRunner"

    .line 24
    .line 25
    const-string v1, "SemWifiThreadRunner.run() timed out!"

    .line 26
    .line 27
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    iget-boolean p0, v0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mTimeoutsAreErrors:Z

    .line 31
    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public runAtFront(Ljava/lang/Runnable;)Z
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const-wide/16 v3, 0xfa0

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;JZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    .line 17
    .line 18
    const-string p1, "Caller thread Stack trace:"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/Throwable;

    .line 24
    .line 25
    const-string v1, "Wifi thread Stack trace:"

    .line 26
    .line 27
    invoke-direct {p1, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "SemWifiThreadRunner"

    .line 48
    .line 49
    const-string v2, "SemWifiThreadRunner.run() timed out!"

    .line 50
    .line 51
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    iget-boolean p0, v0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mTimeoutsAreErrors:Z

    .line 58
    .line 59
    if-nez p0, :cond_1

    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public setTimeoutsAreErrors(Z)V
    .locals 2

    .line 1
    const-string v0, "setTimeoutsAreErrors "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiThreadRunner"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mTimeoutsAreErrors:Z

    .line 13
    .line 14
    return-void
.end method
