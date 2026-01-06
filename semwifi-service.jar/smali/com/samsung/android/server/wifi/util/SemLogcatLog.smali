.class public Lcom/samsung/android/server/wifi/util/SemLogcatLog;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/SemWifiLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;
    }
.end annotation


# static fields
.field private static final TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

.field private static final sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

.field private static volatile sVerboseLogging:Z = false


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 7
    .line 8
    const-string v0, "getNameOfCallingMethod()"

    .line 9
    .line 10
    const-string v1, "trace()"

    .line 11
    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    sput-boolean p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    .line 9
    .line 10
    return-void
.end method

.method private getNameOfCallingMethod(I)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    add-int/2addr p1, p0

    .line 5
    new-instance p0, Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :try_start_0
    aget-object p0, p0, p1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    const-string p0, "<unknown>"

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dump(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 15
    .line 16
    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public eC(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public iC(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public tC(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->getNameOfCallingMethod(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1, p1, p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public trace(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 5
    sget-boolean v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 7
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->getNameOfCallingMethod(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x3

    invoke-direct {v0, p2, v1, p1, p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public wC(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
