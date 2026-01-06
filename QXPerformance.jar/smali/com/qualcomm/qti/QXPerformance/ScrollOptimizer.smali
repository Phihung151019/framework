.class public Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;
.super Ljava/lang/Object;
.source "go/retraceme f7ba039b1e3ffa9834fd1dded5207757c88422bfbcf2b1cd5d6f8fd9a19e95f6"


# static fields
.field private static A:Z = true

.field private static B:Z = false

.field private static C:Z = false

.field private static D:Z = false

.field private static E:Z = false

.field private static F:J = -0x1L

.field private static G:J = -0x1L

.field private static H:J = -0x1L

.field private static I:J = -0x1L

.field private static J:J = -0x1L

.field private static K:J = -0x1L

.field private static L:J = -0x1L

.field private static M:J = -0x1L

.field private static N:J = -0x1L

.field private static O:I = -0x1

.field private static P:I = -0x1

.field private static Q:I = 0x0

.field private static R:I = 0x0

.field private static S:I = 0x1

.field private static T:I = -0x1

.field private static U:I = 0x0

.field private static V:I = 0x0

.field private static W:I = 0x0

.field private static X:Landroid/graphics/BLASTBufferQueue; = null

.field private static Y:Ljava/lang/reflect/Method; = null

.field private static Z:Ljava/lang/reflect/Method; = null

.field private static final a:Ljava/lang/String; = "QXPerf"

.field private static a0:Ljava/io/FileOutputStream; = null

.field private static final b:Ljava/lang/String; = "ro.vendor.perf.scroll_opt"

.field private static final c:Ljava/lang/String; = "ro.vendor.perf.scroll_opt.heavy_app"

.field private static final d:Ljava/lang/String; = "debug.perf.scroll_opt"

.field private static final e:Ljava/lang/String; = "50000"

.field private static final f:J = 0x989680L

.field private static final g:J = 0xaL

.field private static final h:J = 0x3L

.field private static final i:J = 0xbb8L

.field private static final j:I = 0x1

.field private static final k:I = 0x0

.field private static final l:I = 0x3

.field private static final m:I = 0x4

.field private static n:I = 0x4

.field private static o:I = 0x3

.field private static final p:I = -0x1

.field private static final q:I = 0x0

.field private static final r:I = 0x1

.field private static final s:I = 0x2

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static v:Z = false

.field private static w:Z = false

.field private static x:Z = false

.field private static y:Z = false

.field private static z:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a()I
    .locals 4

    .line 1
    sget-object v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->X:Landroid/graphics/BLASTBufferQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Z:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undequeuedBufferCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move v0, v1

    .line 5
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    return v0

    .line 7
    :cond_0
    const-string v0, "sBlastBufferQueue is null."

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 8
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    return v1
.end method

.method private static b()V
    .locals 6

    .line 1
    const-string v0, "QXPerf"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ro.vendor.perf.scroll_opt"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 2
    const-string v3, "ro.vendor.perf.scroll_opt.heavy_app"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->P:I

    .line 3
    sput v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Q:I

    .line 4
    const-string v3, "debug.perf.scroll_opt"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->v:Z

    .line 5
    const-string v3, "android.graphics.BLASTBufferQueue"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 6
    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 7
    const-string v5, "setUndequeuedBufferCount"

    .line 8
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Y:Ljava/lang/reflect/Method;

    .line 9
    const-string v4, "getUndequeuedBufferCount"

    new-array v5, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Z:Ljava/lang/reflect/Method;

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    sput v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->O:I

    .line 12
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "/proc/%d/timerslack_ns"

    sget v5, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->O:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->a0:Ljava/io/FileOutputStream;

    .line 14
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 15
    const-string v3, "Disable for system_server"

    invoke-static {v3}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 16
    sput-boolean v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 17
    :cond_0
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    const-string v3, "Couldn\'t load BLASTBufferQueue Class"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->w:Z

    .line 20
    sput-boolean v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 21
    :goto_0
    sget v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Q:I

    if-ne v3, v1, :cond_1

    .line 22
    const-string v1, "Heavy app detection is enabled."

    invoke-static {v1}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 23
    :cond_1
    sget-object v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Y:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Z:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 24
    :cond_2
    const-string v1, "Couldn\'t find UndequeuedBufferCount functions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sput-boolean v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    :cond_3
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "QXPerf"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->v:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    .line 2
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static disableOptimizer(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->y:Z

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 11
    .line 12
    sput-boolean p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->y:Z

    .line 13
    .line 14
    const-string p0, "enable ScrollOptimizer again."

    .line 15
    .line 16
    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sput-boolean p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 25
    .line 26
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->y:Z

    .line 27
    .line 28
    const-string p0, "disable ScrollOptimizer temperarily."

    .line 29
    .line 30
    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x2

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static f()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    const/4 v1, 0x0

    .line 2
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->B:Z

    .line 3
    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->S:I

    .line 4
    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->R:I

    const/4 v0, -0x1

    .line 5
    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->T:I

    .line 6
    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    .line 7
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->C:Z

    return-void
.end method

.method private static g()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->D:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->D:Z

    .line 3
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->a()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    .line 4
    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    .line 5
    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    .line 6
    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    .line 7
    :cond_2
    :goto_0
    const-string v0, "ExpectedUndequeued"

    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    invoke-static {v0, v1}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAdjustedAnimationClock(J)J
    .locals 11

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->O:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->B:Z

    if-eqz v0, :cond_2

    .line 3
    const-string v0, "unnecessary adjustClock is called!"

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 4
    sget-wide v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->K:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 5
    sput-wide p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->K:J

    .line 6
    :cond_1
    sget-wide p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->K:J

    return-wide p0

    :cond_2
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->B:Z

    .line 8
    sget-wide v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->K:J

    sget-wide v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->G:J

    add-long/2addr v1, v3

    .line 9
    sget v5, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    const-string v6, ", originTime: "

    if-eq v5, v0, :cond_4

    cmp-long v0, p0, v1

    if-gez v0, :cond_3

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget-wide v7, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->L:J

    const-wide/16 v9, 0xbb8

    add-long/2addr v7, v9

    cmp-long v0, v3, v7

    if-gez v0, :cond_3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extended adjustedTime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 12
    const-string p0, "extend clock adjustion"

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 13
    sput-wide v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->K:J

    return-wide v1

    .line 14
    :cond_3
    sput-wide p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->K:J

    return-wide p0

    :cond_4
    cmp-long v0, v1, p0

    if-gez v0, :cond_5

    move-wide v1, p0

    goto :goto_0

    .line 15
    :cond_5
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->A:Z

    if-eqz v0, :cond_6

    sub-long v7, v1, p0

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_6

    long-to-float v0, v7

    long-to-float v1, v3

    div-float/2addr v0, v1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 17
    sget-wide v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->G:J

    int-to-long v3, v0

    mul-long/2addr v1, v3

    add-long/2addr v1, p0

    .line 18
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustedTime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 19
    sput-wide v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->K:J

    return-wide v1

    :cond_7
    :goto_1
    return-wide p0
.end method

.method public static getFrameDelay(J)J
    .locals 0

    .line 1
    sget-boolean p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, 0xa

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    const-string p0, "getFrameDelay"

    .line 9
    .line 10
    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 p0, 0x3

    .line 14
    .line 15
    return-wide p0
.end method

.method private static h(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->X:Landroid/graphics/BLASTBufferQueue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    sget-object v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Y:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "setUndequeuedBufferCount: "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    const-string p0, "sBlastBufferQueue is null."

    .line 48
    .line 49
    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 53
    .line 54
    return-void
.end method

.method private static i()V
    .locals 4

    .line 1
    sget-object v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->a0:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadViolations()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4
    :try_start_0
    sget-object v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->a0:Ljava/io/FileOutputStream;

    const-string v3, "50000"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    const/4 v2, 0x1

    .line 5
    sput-boolean v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->C:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    const-string v2, "QXPerf"

    const-string v3, "Failed to update timer slack!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 11
    throw v1
.end method

.method public static setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->O:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->X:Landroid/graphics/BLASTBufferQueue;

    .line 15
    .line 16
    if-eq v0, p0, :cond_1

    .line 17
    .line 18
    sput-object p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->X:Landroid/graphics/BLASTBufferQueue;

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    sput-boolean p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->E:Z

    .line 22
    .line 23
    sget p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->n:I

    .line 24
    .line 25
    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->h(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public static setFlingFlag(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->O:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlingFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 3
    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    if-ne v1, v0, :cond_1

    .line 4
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->f()V

    .line 5
    const-string p0, "avoid concurrent fling"

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->T:I

    if-ne v1, v0, :cond_3

    .line 7
    sput p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    .line 8
    sget-boolean p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->C:Z

    if-nez p0, :cond_2

    .line 9
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->i()V

    :cond_2
    const/4 p0, 0x0

    .line 10
    sput-boolean p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->D:Z

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->L:J

    .line 12
    const-string p0, "Fling start."

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    const-string p0, "Fling without touch"

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    :goto_0
    const/4 p0, -0x1

    .line 14
    sput p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->T:I

    return-void

    :cond_4
    if-gez p0, :cond_5

    .line 15
    const-string p0, "Fling quit for unknown."

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 16
    :cond_5
    sget p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    if-ne p0, v0, :cond_6

    .line 17
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->f()V

    .line 18
    const-string p0, "Fling end."

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static setFrameInterval(J)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->w:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->b()V

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frameIntervalNanos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 3
    sput-wide p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->F:J

    const-wide/32 v0, 0xf4240

    .line 4
    div-long v0, p0, v0

    sput-wide v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->G:J

    const-wide/16 v0, 0x2

    .line 5
    div-long v0, p0, v0

    sput-wide v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->H:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    .line 6
    sput-wide v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->I:J

    const-wide/32 v0, 0x989680

    cmp-long v2, p0, v0

    const/4 v3, 0x3

    if-lez v2, :cond_1

    .line 7
    sput v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->n:I

    const/4 v2, 0x2

    .line 8
    sput v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->o:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 9
    sput v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->n:I

    .line 10
    sput v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->o:I

    .line 11
    :goto_0
    sget v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->P:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    .line 12
    sput p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Q:I

    return-void

    :cond_2
    const/4 p0, 0x1

    .line 13
    sput p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Q:I

    :cond_3
    return-void
.end method

.method public static setMotionType(I)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->O:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    const-string v0, "ExpectedUndequeued"

    const/4 v1, 0x1

    if-nez p0, :cond_7

    .line 3
    sget v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 4
    const-string v3, "consecutive fling"

    invoke-static {v3}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 5
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->f()V

    .line 6
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->a()I

    move-result v3

    sput v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    .line 7
    sget-boolean v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->E:Z

    if-eqz v4, :cond_4

    sget v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->o:I

    if-eq v3, v4, :cond_4

    if-le v3, v4, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-wide v5, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->N:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    sget-wide v7, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->F:J

    mul-long/2addr v7, v5

    const-wide/32 v5, 0xf4240

    add-long/2addr v7, v5

    cmp-long v3, v3, v7

    if-lez v3, :cond_4

    .line 9
    :goto_1
    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->o:I

    invoke-static {v1}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->h(I)V

    .line 10
    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->o:I

    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    goto :goto_3

    :cond_4
    if-nez v2, :cond_6

    .line 11
    sget v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    if-lez v2, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    goto :goto_3

    .line 13
    :cond_6
    :goto_2
    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    .line 14
    :goto_3
    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    invoke-static {v0, v1}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->d(Ljava/lang/String;I)V

    goto :goto_4

    :cond_7
    const/4 v2, 0x2

    if-ne p0, v2, :cond_8

    .line 15
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->E:Z

    .line 16
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->a()I

    move-result v1

    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    .line 17
    sget v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    if-le v2, v1, :cond_8

    if-lez v1, :cond_8

    .line 18
    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    .line 19
    invoke-static {v0, v1}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->d(Ljava/lang/String;I)V

    .line 20
    :cond_8
    :goto_4
    sput p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->T:I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMotionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public static setUITaskStatus(Z)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sget v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->O:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    const-string v2, "heavy frame"

    const-wide/16 v3, 0x2

    const/4 v5, 0x1

    if-eqz p0, :cond_3

    const/4 v6, 0x0

    .line 4
    sput-boolean v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->B:Z

    .line 5
    sget v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    if-ne v6, v5, :cond_2

    .line 6
    sget-wide v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->M:J

    sub-long v6, v0, v6

    .line 7
    sget-wide v8, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->F:J

    mul-long/2addr v8, v3

    const-wide/32 v3, 0xf4240

    sub-long/2addr v8, v3

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 8
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->g()V

    .line 9
    :cond_1
    sget-wide v8, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->H:J

    const-wide/16 v10, 0x3

    mul-long/2addr v10, v8

    sub-long/2addr v10, v3

    cmp-long v3, v6, v10

    if-lez v3, :cond_2

    sget-wide v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->N:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v8

    if-lez v3, :cond_2

    .line 10
    sget v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->R:I

    add-int/2addr v3, v5

    sput v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->R:I

    .line 11
    invoke-static {v2}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 12
    :cond_2
    sput-wide v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->M:J

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 13
    :cond_3
    sput-wide v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->N:J

    .line 14
    sget-boolean v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    sput-boolean v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->A:Z

    .line 15
    sget-wide v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->M:J

    sub-long/2addr v0, v6

    .line 16
    sget v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    if-ne v6, v5, :cond_4

    sget-wide v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->F:J

    mul-long/2addr v6, v3

    cmp-long v3, v0, v6

    if-lez v3, :cond_4

    .line 17
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->g()V

    .line 18
    :cond_4
    :goto_0
    sget v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->Q:I

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 19
    sput v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->S:I

    return-void

    :cond_6
    if-nez p0, :cond_b

    .line 20
    sget p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->T:I

    if-eq p0, v4, :cond_7

    sget p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    if-ne p0, v5, :cond_a

    .line 21
    :cond_7
    sget-wide v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->F:J

    cmp-long p0, v0, v6

    if-lez p0, :cond_8

    .line 22
    sget p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->R:I

    add-int/2addr p0, v5

    sput p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->R:I

    .line 23
    invoke-static {v2}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 24
    :cond_8
    sget p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->R:I

    if-gt p0, v5, :cond_9

    sget-wide v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->I:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    .line 25
    :cond_9
    sget p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->S:I

    if-eq p0, v4, :cond_a

    .line 26
    sput v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->S:I

    .line 27
    const-string p0, "heavy app"

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 28
    const-string p0, "App type: heavy app"

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->c(Ljava/lang/String;)V

    .line 29
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI duration: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public static setVsyncTime(J)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sput-wide p0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->J:J

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p1, "setVsyncTime: "

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-wide v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->J:J

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static shouldUseVsync()Z
    .locals 10

    .line 1
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sget v2, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->O:I

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->U:I

    if-eq v0, v1, :cond_1

    .line 3
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    return v1

    .line 4
    :cond_1
    sget v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->S:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 5
    sput-boolean v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    return v3

    .line 6
    :cond_2
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->D:Z

    if-eqz v0, :cond_3

    .line 7
    const-string v0, "pre-render done"

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 8
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    return v1

    .line 9
    :cond_3
    sget-wide v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->F:J

    sget-wide v6, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->M:J

    sget-wide v8, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->J:J

    sub-long/2addr v6, v8

    rem-long/2addr v6, v4

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x2dc6c0

    cmp-long v0, v4, v6

    .line 10
    const-string v2, "ExpectedUndequeued"

    if-gez v0, :cond_5

    .line 11
    const-string v0, "too close to next vsync"

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 12
    sput-boolean v3, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    .line 13
    sget v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    if-lez v0, :cond_4

    sub-int/2addr v0, v1

    .line 14
    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    .line 15
    invoke-static {v2, v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->d(Ljava/lang/String;I)V

    :cond_4
    return v3

    .line 16
    :cond_5
    sget-boolean v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    if-nez v0, :cond_6

    .line 17
    const-string v0, "use vsync as last frame not use vsync"

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 18
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    return v1

    .line 19
    :cond_6
    invoke-static {}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->a()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    .line 20
    sget v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    if-le v0, v4, :cond_7

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "align undequeued: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with expected: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 22
    sget v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    goto :goto_0

    :cond_7
    if-ge v0, v1, :cond_8

    if-lez v4, :cond_8

    .line 23
    sput v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    .line 24
    :cond_8
    :goto_0
    sget v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->V:I

    if-lez v0, :cond_9

    .line 25
    sget v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    sub-int/2addr v0, v1

    sput v0, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->W:I

    .line 26
    invoke-static {v2, v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->d(Ljava/lang/String;I)V

    move v1, v3

    goto :goto_1

    .line 27
    :cond_9
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->D:Z

    .line 28
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldUseVsync: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->e(Ljava/lang/String;)V

    .line 29
    sput-boolean v1, Lcom/qualcomm/qti/QXPerformance/ScrollOptimizer;->z:Z

    :cond_a
    :goto_2
    return v1
.end method
