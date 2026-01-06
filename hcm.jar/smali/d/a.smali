.class public Ld/a;
.super Ljava/lang/Object;
.source "HcmMachine.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:La/d;

.field private static c:Ld/a;

.field private static d:Ld/c;

.field private static e:Ld/b;

.field private static f:Lc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sput-object p0, Ld/a;->b:La/d;

    .line 9
    .line 10
    invoke-static {p1}, Ld/c;->a(Landroid/content/Context;)Ld/c;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sput-object p0, Ld/a;->d:Ld/c;

    .line 15
    .line 16
    invoke-static {p1}, Ld/b;->d(Landroid/content/Context;)Ld/b;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sput-object p0, Ld/a;->e:Ld/b;

    .line 21
    .line 22
    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Ld/a;->f:Lc/d;

    .line 27
    .line 28
    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-object v0, Ld/a;->e:Ld/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld/b;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ld/a;
    .locals 2

    .line 1
    const-class v0, Ld/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld/a;->c:Ld/a;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ld/a;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Ld/a;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Ld/a;->c:Ld/a;

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
    sget-object p0, Ld/a;->c:Ld/a;
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

.method public static c(II)V
    .locals 2

    .line 1
    sget-object v0, Ld/a;->f:Lc/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc/d;->A()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Ld/a;->b:La/d;

    .line 11
    .line 12
    const-string p1, "DataMgr"

    .line 13
    .line 14
    const-string v0, "Model-training : start"

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Ld/a;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ld/a;->d(I)V

    .line 25
    .line 26
    .line 27
    const-string p1, "Model-training : finish"

    .line 28
    .line 29
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x3

    .line 34
    if-eq p1, v0, :cond_3

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object p1, Lc/d;->u:[I

    .line 41
    .line 42
    aget p1, p1, v1

    .line 43
    .line 44
    add-int/lit8 v0, p1, 0x46

    .line 45
    .line 46
    if-lt p0, v0, :cond_2

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x46

    .line 49
    .line 50
    sget-object p0, Ld/a;->a:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "Model-inference : stop (Battery Level over. :: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    sget-object p0, Ld/a;->a:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "Model-inference : start"

    .line 76
    .line 77
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    invoke-static {p1}, Ld/a;->d(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ld/a;->e()V

    .line 85
    .line 86
    .line 87
    const-string p1, "Model-inference : finish"

    .line 88
    .line 89
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    :goto_0
    sget-object p0, Ld/a;->a:Ljava/lang/String;

    .line 94
    .line 95
    const-string p1, "Model-inference : stop (charing...)"

    .line 96
    .line 97
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static d(I)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object p0, Ld/a;->e:Ld/b;

    .line 8
    .line 9
    invoke-virtual {p0}, Ld/b;->m()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-static {}, Ld/c;->d()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static e()V
    .locals 1

    .line 1
    sget-object v0, Ld/a;->e:Ld/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld/b;->e()I

    .line 4
    .line 5
    .line 6
    return-void
.end method
