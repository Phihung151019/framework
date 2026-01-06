.class public Lg/b;
.super Ljava/lang/Object;
.source "SmartChargeController.java"


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static final b:J = 0xea60L

.field private static final c:I = 0x1

.field private static d:Landroid/os/Handler; = null

.field private static e:Landroid/os/HandlerThread; = null

.field private static f:La/d; = null

.field private static g:Lg/c; = null

.field private static h:Lg/e; = null

.field private static i:La/f; = null

.field private static j:Lg/b; = null

.field private static k:Landroid/content/Context; = null

.field private static l:I = 0x0

.field private static m:Z = false

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lg/b;->n:I

    .line 6
    .line 7
    invoke-static {}, La/j;->i()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lg/b;->o:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    sput v0, Lg/b;->p:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput v0, Lg/b;->q:I

    .line 18
    .line 19
    sput-boolean v0, Lg/b;->r:Z

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Landroid/os/HandlerThread;

    .line 5
    .line 6
    const-string v0, "SmartChargeController Thread"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    sput-object p0, Lg/b;->e:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sput-object p0, Lg/b;->f:La/d;

    .line 19
    .line 20
    invoke-static {p1}, Lg/c;->h(Landroid/content/Context;)Lg/c;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sput-object p0, Lg/b;->g:Lg/c;

    .line 25
    .line 26
    invoke-static {p1}, Lg/e;->a(Landroid/content/Context;)Lg/e;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sput-object p0, Lg/b;->h:Lg/e;

    .line 31
    .line 32
    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sput-object p0, Lg/b;->i:La/f;

    .line 37
    .line 38
    sput-object p1, Lg/b;->k:Landroid/content/Context;

    .line 39
    .line 40
    return-void
.end method

.method static bridge synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()V
    .locals 5

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, La/j;->h(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lg/c;->f(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Lg/b;->a:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "Start_Judge_Smart_Charging current time: "

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", persistent_hour: "

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v2, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    if-lt v1, v0, :cond_0

    .line 45
    .line 46
    invoke-static {v1}, Lg/b;->c(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public static c(I)V
    .locals 2

    .line 1
    sget v0, Lg/b;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lg/b;->p:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lg/b;->k(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v0, Lg/b;->h:Lg/e;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Lg/e;->b(II)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lg/b;->n(Z)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lg/b;->a:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "Start_Smart_Charging : "

    .line 24
    .line 25
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static d()V
    .locals 3

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lg/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "Stop_Judge_Smart_Charging : "

    .line 8
    .line 9
    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    sput v1, Lg/b;->q:I

    .line 14
    .line 15
    sget v1, Lg/b;->n:I

    .line 16
    .line 17
    sget v2, Lg/b;->o:I

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    const/4 v1, 0x5

    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lg/b;->e()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 3

    .line 1
    sget v0, Lg/b;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {v2}, Lg/b;->k(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lg/b;->m()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lg/b;->h:Lg/e;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v2}, Lg/e;->b(II)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lg/b;->n(Z)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lg/b;->a:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Stop_Smart_Charging : "

    .line 27
    .line 28
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method private static k(Z)V
    .locals 3

    .line 1
    sget-object v0, Lg/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "checkScreenOnTimePeriod msg send: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    sput v0, Lg/b;->q:I

    .line 27
    .line 28
    sget-object p0, Lg/b;->d:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iput v0, p0, Landroid/os/Message;->what:I

    .line 35
    .line 36
    sget-object v0, Lg/b;->d:Landroid/os/Handler;

    .line 37
    .line 38
    const-wide/32 v1, 0x493e0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    sget-object p0, Lg/b;->d:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    sput p0, Lg/b;->q:I

    .line 52
    .line 53
    return-void
.end method

.method public static declared-synchronized l(Landroid/content/Context;)Lg/b;
    .locals 2

    .line 1
    const-class v0, Lg/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lg/b;->j:Lg/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lg/b;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lg/b;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lg/b;->j:Lg/b;

    .line 14
    .line 15
    sget-object p0, Lg/b;->e:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lg/a;

    .line 21
    .line 22
    sget-object v1, Lg/b;->e:Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p0, v1}, Lg/a;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    sput-object p0, Lg/b;->d:Landroid/os/Handler;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    sget-object p0, Lg/b;->j:Lg/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-object p0

    .line 40
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public static m()Z
    .locals 1

    .line 1
    sget-boolean v0, Lg/b;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public static n(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lg/b;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public static o(I)V
    .locals 2

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput p0, Lg/b;->p:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    sput v0, Lg/b;->n:I

    .line 11
    .line 12
    invoke-static {}, Lg/b;->m()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    sget p0, Lg/b;->q:I

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lg/b;->k(Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sput v0, Lg/b;->o:I

    .line 27
    .line 28
    sget p0, Lg/b;->q:I

    .line 29
    .line 30
    if-ne p0, v1, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-static {p0}, Lg/b;->k(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public f(II)V
    .locals 3

    .line 1
    sget-object v0, Lg/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "SmartCharging - enable: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", duration: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lg/b;->j(Z)V

    .line 35
    .line 36
    .line 37
    sput p2, Lg/b;->l:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lg/b;->h()V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lg/b;->j(Z)V

    .line 45
    .line 46
    .line 47
    sput p1, Lg/b;->l:I

    .line 48
    .line 49
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    sget-boolean p0, Lg/b;->m:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lg/b;->h:Lg/e;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    sget v1, Lg/b;->l:I

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lg/e;->b(II)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lg/b;->a:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "Test SmartCharging is started within ["

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget v1, Lg/b;->l:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "] hour"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    sget-object p0, Lg/b;->a:Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "Test SmartCharging is not Enabled. Enable first..."

    .line 46
    .line 47
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/b;->i()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lg/b;->h:Lg/e;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sget v1, Lg/b;->l:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lg/e;->b(II)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lg/b;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Test SmartCharging is stoped"

    .line 18
    .line 19
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 0

    .line 1
    sget-boolean p0, Lg/b;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public j(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lg/b;->m:Z

    .line 2
    .line 3
    return-void
.end method
