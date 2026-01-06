.class public La/i;
.super Ljava/lang/Object;
.source "PowerStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/h;,
        La/g;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "i"

.field private static b:Landroid/content/Context; = null

.field private static c:La/i; = null

.field private static d:Z = false

.field private static e:La/f; = null

.field private static f:Lh/c; = null

.field private static volatile g:La/h; = null

.field private static volatile h:La/g; = null

.field private static i:La/d; = null

.field private static j:I = 0x0

.field private static k:I = 0x0

.field private static l:I = 0x0

.field private static m:Ljava/lang/String; = "None"

.field private static final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 2
    .line 3
    const v1, 0x18894

    .line 4
    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    sput-boolean v0, La/i;->n:Z

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-object p1, La/i;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sput-object p0, La/i;->i:La/d;

    .line 11
    .line 12
    invoke-static {p1}, Lh/c;->e(Landroid/content/Context;)Lh/c;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sput-object p0, La/i;->f:Lh/c;

    .line 17
    .line 18
    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sput-object p0, La/i;->e:La/f;

    .line 23
    .line 24
    return-void
.end method

.method static bridge synthetic a()I
    .locals 1

    .line 1
    sget v0, La/i;->l:I

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic b()I
    .locals 1

    .line 1
    sget v0, La/i;->k:I

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic c()I
    .locals 1

    .line 1
    sget v0, La/i;->j:I

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, La/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic e()Z
    .locals 1

    .line 1
    sget-boolean v0, La/i;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic f()Lh/c;
    .locals 1

    .line 1
    sget-object v0, La/i;->f:Lh/c;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic g()Z
    .locals 1

    .line 1
    sget-boolean v0, La/i;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic h()La/d;
    .locals 1

    .line 1
    sget-object v0, La/i;->i:La/d;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic i()La/f;
    .locals 1

    .line 1
    sget-object v0, La/i;->e:La/f;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, La/i;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic k(I)V
    .locals 0

    .line 1
    sput p0, La/i;->l:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic l(I)V
    .locals 0

    .line 1
    sput p0, La/i;->k:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic m(I)V
    .locals 0

    .line 1
    sput p0, La/i;->j:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic n(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, La/i;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static o()I
    .locals 1

    .line 1
    sget v0, La/i;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public static declared-synchronized p(Landroid/content/Context;)La/i;
    .locals 2

    .line 1
    const-class v0, La/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, La/i;->c:La/i;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, La/i;

    .line 9
    .line 10
    invoke-direct {v1, p0}, La/i;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, La/i;->c:La/i;

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
    sget-object p0, La/i;->c:La/i;
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

.method public static q()I
    .locals 1

    .line 1
    sget v0, La/i;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public static s(Landroid/os/Handler;)V
    .locals 2

    .line 1
    sget-object v0, La/i;->g:La/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, La/h;

    .line 6
    .line 7
    sget-object v1, La/i;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, La/h;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, La/i;->g:La/h;

    .line 13
    .line 14
    :cond_0
    sget-object v0, La/i;->h:La/g;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, La/g;

    .line 19
    .line 20
    sget-object v1, La/i;->b:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v0, v1, p0}, La/g;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, La/i;->h:La/g;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public static t(Z)V
    .locals 0

    .line 1
    sput-boolean p0, La/i;->d:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public r()Z
    .locals 2

    .line 1
    sget-object p0, La/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "PowerSavingModeValue = "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget v1, La/i;->j:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget p0, La/i;->j:I

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-le p0, v0, :cond_0

    .line 29
    .line 30
    return v0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public u(Ljava/lang/String;I)V
    .locals 0

    .line 1
    sput-object p1, La/i;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
