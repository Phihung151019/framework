.class public Lb/i;
.super Ljava/lang/Object;
.source "LogAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/f;,
        Lb/g;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "i"

.field private static o:Lb/i; = null

.field private static p:Lb/o; = null

.field private static q:Lb/l; = null

.field private static r:Lb/c; = null

.field static final s:Ljava/lang/String; = "crash"

.field static final t:Ljava/lang/String; = "anr"

.field static final u:Ljava/lang/String; = "SYSTEM_TOMBSTONE"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:J

.field m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/i;->a:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lb/i;->c:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lb/i;->d:I

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lb/i;->e:I

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lb/i;->f:I

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    iput v0, p0, Lb/i;->g:I

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    iput v0, p0, Lb/i;->h:I

    .line 24
    .line 25
    const-string v0, "HQM"

    .line 26
    .line 27
    iput-object v0, p0, Lb/i;->i:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "SHLD"

    .line 30
    .line 31
    iput-object v0, p0, Lb/i;->j:Ljava/lang/String;

    .line 32
    .line 33
    const-wide/16 v0, 0x3e8

    .line 34
    .line 35
    iput-wide v0, p0, Lb/i;->k:J

    .line 36
    .line 37
    const-wide/32 v0, 0xea60

    .line 38
    .line 39
    .line 40
    iput-wide v0, p0, Lb/i;->l:J

    .line 41
    .line 42
    new-instance v0, Lb/e;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lb/e;-><init>(Lb/i;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lb/i;->m:Landroid/content/BroadcastReceiver;

    .line 48
    .line 49
    iput-object p1, p0, Lb/i;->a:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {p1}, Lb/o;->d(Landroid/content/Context;)Lb/o;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sput-object p1, Lb/i;->p:Lb/o;

    .line 56
    .line 57
    iget-object p1, p0, Lb/i;->a:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {p1}, Lb/l;->f(Landroid/content/Context;)Lb/l;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sput-object p1, Lb/i;->q:Lb/l;

    .line 64
    .line 65
    iget-object p1, p0, Lb/i;->a:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {p1}, Lb/c;->b(Landroid/content/Context;)Lb/c;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sput-object p1, Lb/i;->r:Lb/c;

    .line 72
    .line 73
    invoke-direct {p0}, Lb/i;->q()V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lb/d;

    .line 77
    .line 78
    invoke-direct {p1, p0, p2}, Lb/d;-><init>(Lb/i;Landroid/os/Looper;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lb/i;->b:Landroid/os/Handler;

    .line 82
    .line 83
    return-void
.end method

.method static bridge synthetic a(Lb/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lb/i;Lb/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/i;->i(Lb/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lb/i;Lb/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/i;->k(Lb/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d(Lb/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/i;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lb/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/i;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f(Lb/i;Lb/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/i;->n(Lb/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g(Lb/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/i;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb/i;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private i(Lb/g;)V
    .locals 2

    .line 1
    sget-object p0, Lb/i;->p:Lb/o;

    .line 2
    .line 3
    iget v0, p1, Lb/g;->a:I

    .line 4
    .line 5
    iget-object v1, p1, Lb/g;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p1, Lb/g;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lb/o;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private j(Lb/f;)V
    .locals 3

    .line 1
    const-string v0, "sys.lwshld"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    iput v1, v0, Landroid/os/Message;->what:I

    .line 16
    .line 17
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object p0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 20
    .line 21
    const-wide/16 v1, 0x1388

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private k(Lb/f;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lb/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "SHLD"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lb/i;->j(Lb/f;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private l()V
    .locals 0

    .line 1
    sget-object p0, Lb/i;->r:Lb/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lb/c;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    sget-object v0, Lb/i;->q:Lb/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb/l;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x5

    .line 13
    iput v1, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iget-object p0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 16
    .line 17
    const-wide/32 v1, 0x1b7740

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private n(Lb/f;)V
    .locals 3

    .line 1
    iget v0, p1, Lb/f;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p1, Lb/f;->e:I

    .line 6
    .line 7
    sget-object v0, Lb/i;->n:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "checkResultFile  "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p1, Lb/f;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p1, Lb/f;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, La/s;->a(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lb/i;->r(Lb/f;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget v1, p1, Lb/f;->e:I

    .line 44
    .line 45
    iget v2, p1, Lb/f;->f:I

    .line 46
    .line 47
    if-ge v1, v2, :cond_1

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "check again  "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p1, Lb/f;->b:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x2

    .line 78
    iput v1, v0, Landroid/os/Message;->what:I

    .line 79
    .line 80
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 83
    .line 84
    const-wide/16 v1, 0x1388

    .line 85
    .line 86
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void
.end method

.method public static declared-synchronized o(Landroid/content/Context;Landroid/os/Looper;)Lb/i;
    .locals 2

    .line 1
    const-class v0, Lb/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lb/i;->o:Lb/i;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lb/i;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lb/i;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lb/i;->o:Lb/i;

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
    sget-object p0, Lb/i;->o:Lb/i;
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

.method private q()V
    .locals 7

    .line 1
    new-instance v3, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.DROPBOX_ENTRY_ADDED"

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lb/i;->n:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "register intent ACTION_DROPBOX_ENTRY_ADDED"

    .line 14
    .line 15
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lb/i;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p0, Lb/i;->m:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private r(Lb/f;)V
    .locals 5

    .line 1
    sget-object p0, Lb/i;->n:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p1, Lb/f;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "sendBigDataLog "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p1, Lb/f;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, La/j;

    .line 35
    .line 36
    iget-object v2, p1, Lb/f;->a:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p1, Lb/f;->b:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, p1, Lb/f;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v1, v2, v3, v4}, La/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, La/j;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, La/j;->d()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lb/f;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0}, La/s;->c(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "delete file "

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object p1, p1, Lb/f;->d:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " / "

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p0, p1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private t()V
    .locals 0

    .line 1
    sget-object p0, Lb/i;->q:Lb/l;

    .line 2
    .line 3
    invoke-virtual {p0}, Lb/l;->h()V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lb/i;->p:Lb/o;

    .line 7
    .line 8
    invoke-virtual {p0}, Lb/o;->h()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public p(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lb/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lb/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lb/h;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lb/i;->b:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x3

    .line 14
    iput p2, p1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 19
    .line 20
    const-wide/16 p2, 0x64

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iget-object p0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lb/i;->n:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "startAnalyze:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "SHLD"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v1, Lb/f;

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v2, "HQM"

    .line 36
    .line 37
    const-string v4, "ph"

    .line 38
    .line 39
    const-string v5, "/data/log/result_out.txt"

    .line 40
    .line 41
    move-object v3, p1

    .line 42
    invoke-direct/range {v1 .. v7}, Lb/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILb/h;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lb/i;->b:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x1

    .line 52
    iput v0, p1, Landroid/os/Message;->what:I

    .line 53
    .line 54
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object p0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 57
    .line 58
    const-wide/16 v0, 0x2710

    .line 59
    .line 60
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    move-object v3, p1

    .line 65
    const-string p1, "MEMI"

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lb/i;->b:Landroid/os/Handler;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v0, 0x5

    .line 80
    iput v0, p1, Landroid/os/Message;->what:I

    .line 81
    .line 82
    iget-object p0, p0, Lb/i;->b:Landroid/os/Handler;

    .line 83
    .line 84
    const-wide/32 v0, 0x1b7740

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method
