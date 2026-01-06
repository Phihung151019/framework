.class public La/f;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/e;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "f"

.field private static b:Landroid/content/Context;

.field private static c:La/f;

.field private static d:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p0, La/f;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "LogManager Start"

    .line 7
    .line 8
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object p1, La/f;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method static bridge synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, La/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, La/f;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic c()Landroid/os/SemHqmManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->d:Landroid/os/SemHqmManager;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic d(Landroid/os/SemHqmManager;)V
    .locals 0

    .line 1
    sput-object p0, La/f;->d:Landroid/os/SemHqmManager;

    .line 2
    .line 3
    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;)La/f;
    .locals 2

    .line 1
    const-class v0, La/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, La/f;->c:La/f;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, La/f;

    .line 9
    .line 10
    invoke-direct {v1, p0}, La/f;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, La/f;->c:La/f;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, La/f;->c:La/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;)La/e;
    .locals 0

    .line 1
    new-instance p0, La/e;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g([II[III)V
    .locals 5

    .line 1
    new-instance p0, La/e;

    const-string v0, "CPTN"

    const-string v1, "ph"

    invoke-direct {p0, v0, v1}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "DAY"

    invoke-virtual {p0, v0, p5}, La/e;->b(Ljava/lang/String;I)V

    .line 3
    const-string p5, "TOT"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p5, v0}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x1

    if-lt p2, p5, :cond_6

    if-ge p4, p5, :cond_0

    goto/16 :goto_2

    :cond_0
    sub-int/2addr p2, p5

    .line 4
    aget v0, p1, p2

    sub-int/2addr p4, p5

    aget v1, p3, p4

    if-le v0, v1, :cond_1

    .line 5
    const-string v0, "CB01"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, "CT01"

    invoke-virtual {p0, v0, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, p5

    :goto_0
    const/16 v1, 0xa

    .line 7
    const-string v2, "0"

    if-ltz p2, :cond_3

    .line 8
    const-string v3, "CB"

    const-string v4, "CT"

    if-ge v0, v1, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    aget v3, p1, p2

    rem-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    aget v1, p1, p2

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz p4, :cond_5

    .line 15
    const-string p1, "DB"

    const-string p2, "DT"

    if-ge p5, v1, :cond_4

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    aget v0, p3, p4

    rem-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    aget p1, p3, p4

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {p0}, La/e;->e()V

    :cond_6
    :goto_2
    return-void
.end method

.method public h([III)V
    .locals 2

    .line 1
    new-instance p0, La/e;

    .line 2
    .line 3
    const-string p3, "SPTN"

    .line 4
    .line 5
    const-string v0, "ph"

    .line 6
    .line 7
    invoke-direct {p0, p3, v0}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :goto_0
    if-ge p3, p2, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    const-string v1, "S"

    .line 16
    .line 17
    if-ge p3, v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "0"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    aget v1, p1, p3

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, v0, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 p3, p3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, La/e;->e()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public i(I[II[III)V
    .locals 3

    .line 1
    new-instance p0, La/e;

    const-string v0, "UPTN"

    const-string v1, "ph"

    invoke-direct {p0, v0, v1}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "DAY"

    invoke-virtual {p0, v0, p6}, La/e;->b(Ljava/lang/String;I)V

    .line 3
    const-string p6, "AIMENU"

    invoke-virtual {p0, p6, p1}, La/e;->b(Ljava/lang/String;I)V

    const/4 p1, 0x0

    move p6, p1

    .line 4
    :goto_0
    const-string v0, "0"

    const/16 v1, 0xa

    if-ge p6, p3, :cond_1

    .line 5
    const-string v2, "W"

    if-ge p6, v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    aget v1, p2, p6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p1, p5, :cond_3

    .line 9
    const-string p2, "U"

    if-ge p1, v1, :cond_2

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    aget p3, p4, p1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, La/e;->e()V

    return-void
.end method

.method public j(IIIILjava/lang/String;I)V
    .locals 2

    .line 1
    new-instance p0, La/e;

    const-string v0, "PSMS"

    const-string v1, "ph"

    invoke-direct {p0, v0, v1}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "ATIME"

    invoke-virtual {p0, v0, p1}, La/e;->b(Ljava/lang/String;I)V

    .line 3
    const-string p1, "AIMENU"

    invoke-virtual {p0, p1, p2}, La/e;->b(Ljava/lang/String;I)V

    .line 4
    const-string p1, "PSMV"

    invoke-virtual {p0, p1, p3}, La/e;->b(Ljava/lang/String;I)V

    .line 5
    const-string p1, "PSMT"

    invoke-virtual {p0, p1, p4}, La/e;->b(Ljava/lang/String;I)V

    .line 6
    const-string p1, "ACTION"

    invoke-virtual {p0, p1, p5}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string p1, "BATT"

    invoke-virtual {p0, p1, p6}, La/e;->b(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {p0}, La/e;->e()V

    return-void
.end method
