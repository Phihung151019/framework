.class public Lh/h;
.super Ljava/lang/Object;
.source "SystemParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/g;
    }
.end annotation


# static fields
.field private static final A:I = 0xa

.field private static final B:I = 0x5a

.field private static final C:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field private static final D:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field private static final E:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field private static final F:Ljava/lang/String; = "android.intent.action.HCM_TEST"

.field private static G:I = -0x1

.field private static H:I = -0x1

.field private static final I:I = 0x0

.field private static final J:I = 0x1

.field private static final K:I = 0x2

.field private static final L:I = 0x9

.field private static final M:I = 0xa

.field private static final c:Ljava/lang/String; = "h"

.field private static d:Landroid/content/Context; = null

.field private static e:Lh/h; = null

.field private static f:Ld/a; = null

.field private static g:La/d; = null

.field private static h:Lh/a; = null

.field private static i:Lh/c; = null

.field private static j:Lb/d; = null

.field private static k:Lc/d; = null

.field private static l:Lg/b; = null

.field private static m:Landroid/os/Handler; = null

.field private static n:Landroid/os/HandlerThread; = null

.field private static o:Z = false

.field private static final p:I = 0xa

.field private static final q:I = 0x3

.field private static r:I = 0x0

.field private static final s:J = 0x3e8L

.field private static final t:J = 0xea60L

.field private static final u:I = 0x0

.field private static final v:I = 0x1

.field private static final w:I = 0x2

.field private static final x:I = 0x3

.field private static final y:I = 0x4

.field private static final z:I = 0x5


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh/f;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lh/f;-><init>(Lh/h;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh/h;->b:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "SystemParameter Start"

    .line 14
    .line 15
    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object p1, Lh/h;->d:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "device_provisioned"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move v3, v2

    .line 35
    :cond_0
    sput-boolean v3, Lh/h;->o:Z

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "SystemParameter mProvisioned : "

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-boolean v3, Lh/h;->o:Z

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    .line 60
    .line 61
    const-string v1, "Hcm System Thread"

    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lh/h;->n:Landroid/os/HandlerThread;

    .line 67
    .line 68
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lh/h;->g:La/d;

    .line 73
    .line 74
    sget-object v0, Lh/h;->d:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lh/h;->a:Landroid/content/pm/PackageManager;

    .line 81
    .line 82
    invoke-static {p1}, Lh/a;->c(Landroid/content/Context;)Lh/a;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    sput-object p0, Lh/h;->h:Lh/a;

    .line 87
    .line 88
    invoke-static {p1}, Lh/c;->e(Landroid/content/Context;)Lh/c;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    sput-object p0, Lh/h;->i:Lh/c;

    .line 93
    .line 94
    invoke-static {p1}, Ld/a;->b(Landroid/content/Context;)Ld/a;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    sput-object p0, Lh/h;->f:Ld/a;

    .line 99
    .line 100
    invoke-static {p1}, Lb/d;->d(Landroid/content/Context;)Lb/d;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    sput-object p0, Lh/h;->j:Lb/d;

    .line 105
    .line 106
    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sput-object p0, Lh/h;->k:Lc/d;

    .line 111
    .line 112
    invoke-static {p1}, Lg/b;->l(Landroid/content/Context;)Lg/b;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    sput-object p0, Lh/h;->l:Lg/b;

    .line 117
    .line 118
    return-void
.end method

.method static bridge synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic b()Lc/d;
    .locals 1

    .line 1
    sget-object v0, Lh/h;->k:Lc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic c()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic d()V
    .locals 0

    .line 1
    invoke-static {}, Lh/h;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lh/h;->k(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f(Lh/g;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lh/h;->l(Lh/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g()Z
    .locals 1

    .line 1
    invoke-static {}, Lh/h;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static bridge synthetic h(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lh/h;->t(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static i()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lh/h;->t(II)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    sget-object v1, Lh/h;->m:Landroid/os/Handler;

    .line 15
    .line 16
    const-wide/32 v2, 0x927c0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lh/h;->q()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static k(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0}, Lh/h;->t(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static l(Lh/g;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh/g;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lh/h;->r:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lh/h;->h:Lh/a;

    .line 10
    .line 11
    iget-object p0, p0, Lh/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lh/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "e = "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lh/g;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, " not used for 1 min"

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static declared-synchronized m(Landroid/content/Context;)Lh/h;
    .locals 2

    .line 1
    const-class v0, Lh/h;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lh/h;->e:Lh/h;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lh/h;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lh/h;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lh/h;->e:Lh/h;

    .line 14
    .line 15
    sget-object p0, Lh/h;->n:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lh/e;

    .line 21
    .line 22
    sget-object v1, Lh/h;->n:Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p0, v1}, Lh/e;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    sput-object p0, Lh/h;->m:Landroid/os/Handler;

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
    sget-object p0, Lh/h;->e:Lh/h;
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

.method private n(I)J
    .locals 3

    .line 1
    sget-object p0, Lh/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "level : "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "delay :"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-wide/32 v1, 0xea60

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-wide v1
.end method

.method private o(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/h;->a:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    array-length p1, p0

    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    aget-object p0, p0, p1

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    return-object p0
.end method

.method private static p()Z
    .locals 4

    .line 1
    sget-boolean v0, Lh/h;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lh/h;->d:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "device_provisioned"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    sput-boolean v0, Lh/h;->o:Z

    .line 24
    .line 25
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "isDeviceProvisioned "

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-boolean v3, Lh/h;->o:Z

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-boolean v0, Lh/h;->o:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    sget-object v0, Lh/h;->g:La/d;

    .line 54
    .line 55
    const-string v1, "MAIN"

    .line 56
    .line 57
    const-string v3, "Device Provisioned"

    .line 58
    .line 59
    invoke-virtual {v0, v1, v3}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/16 v1, 0xa

    .line 69
    .line 70
    iput v1, v0, Landroid/os/Message;->what:I

    .line 71
    .line 72
    sget-object v1, Lh/h;->m:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    return v2

    .line 78
    :cond_2
    return v0
.end method

.method public static q()V
    .locals 2

    .line 1
    sget-object v0, Lh/h;->i:Lh/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh/c;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lh/h;->i:Lh/c;

    .line 8
    .line 9
    invoke-virtual {v1}, Lh/c;->d()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Ld/a;->c(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private s()V
    .locals 7

    .line 1
    new-instance v3, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "android.intent.action.HCM_TEST"

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lh/h;->d:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v1, p0, Lh/h;->b:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static t(II)V
    .locals 10

    .line 1
    invoke-static {}, Lh/h;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lh/h;->i:Lh/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Lh/c;->c()I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    invoke-static {}, La/j;->i()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-static {}, La/j;->b()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    sput v4, Lh/h;->G:I

    .line 26
    .line 27
    :cond_1
    move v2, v0

    .line 28
    move v8, v2

    .line 29
    move v9, v8

    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_2
    const/16 v1, 0x9

    .line 33
    .line 34
    if-ne p0, v1, :cond_3

    .line 35
    .line 36
    sput v4, Lh/h;->G:I

    .line 37
    .line 38
    :goto_0
    move v8, v0

    .line 39
    move v9, v8

    .line 40
    move v2, v1

    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_3
    const/16 v1, 0xa

    .line 44
    .line 45
    if-ne p0, v1, :cond_4

    .line 46
    .line 47
    sput v4, Lh/h;->G:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/4 v1, 0x1

    .line 51
    const/4 v2, 0x2

    .line 52
    if-ne p0, v1, :cond_7

    .line 53
    .line 54
    sget p0, Lh/h;->H:I

    .line 55
    .line 56
    sub-int v0, p0, v6

    .line 57
    .line 58
    sget p0, Lh/h;->G:I

    .line 59
    .line 60
    sub-int p0, v4, p0

    .line 61
    .line 62
    sget-object v5, Lh/h;->h:Lh/a;

    .line 63
    .line 64
    invoke-virtual {v5, v2}, Lh/a;->a(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sput v4, Lh/h;->G:I

    .line 69
    .line 70
    if-eq p1, v1, :cond_5

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    if-eq p1, v1, :cond_5

    .line 74
    .line 75
    const/4 v1, 0x5

    .line 76
    if-ne p1, v1, :cond_6

    .line 77
    .line 78
    :cond_5
    sget-object v1, Lh/h;->j:Lb/d;

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Lb/d;->i(I)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    invoke-static {}, Ld/a;->a()V

    .line 87
    .line 88
    .line 89
    :cond_6
    move v8, p0

    .line 90
    move v9, v2

    .line 91
    move v2, p1

    .line 92
    goto :goto_1

    .line 93
    :cond_7
    if-ne p0, v2, :cond_1

    .line 94
    .line 95
    sget-object p0, Lh/h;->i:Lh/c;

    .line 96
    .line 97
    invoke-virtual {p0}, Lh/c;->b()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_8

    .line 102
    .line 103
    sget-object p0, Lh/h;->c:Ljava/lang/String;

    .line 104
    .line 105
    const-string v0, "EVENT_TYPE_STATUS_CHECKING with charging"

    .line 106
    .line 107
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object p0, Lh/h;->j:Lb/d;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lb/d;->i(I)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_8

    .line 117
    .line 118
    invoke-static {}, Ld/a;->a()V

    .line 119
    .line 120
    .line 121
    :cond_8
    sget-object p0, Lh/h;->i:Lh/c;

    .line 122
    .line 123
    invoke-virtual {p0}, Lh/c;->d()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    sget p0, Lh/h;->H:I

    .line 128
    .line 129
    sub-int v0, p0, v6

    .line 130
    .line 131
    sget p0, Lh/h;->G:I

    .line 132
    .line 133
    sub-int p0, v4, p0

    .line 134
    .line 135
    sget-object v1, Lh/h;->h:Lh/a;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lh/a;->a(I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    move v8, p0

    .line 142
    move v2, p1

    .line 143
    move v9, v1

    .line 144
    :goto_1
    sput v6, Lh/h;->H:I

    .line 145
    .line 146
    new-instance v1, Lc/f;

    .line 147
    .line 148
    mul-int/lit8 v7, v0, 0x64

    .line 149
    .line 150
    const/4 v5, 0x0

    .line 151
    invoke-direct/range {v1 .. v9}, Lc/f;-><init>(IIIIIIII)V

    .line 152
    .line 153
    .line 154
    sget-object p0, Lh/h;->k:Lc/d;

    .line 155
    .line 156
    invoke-virtual {p0, v1}, Lc/d;->M(Lc/f;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private static v(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lh/h;->l:Lg/b;

    .line 5
    .line 6
    invoke-virtual {p0}, Lg/b;->g()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lg/b;->e()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0, p0}, Lh/h;->t(II)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lh/h;->m:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x3

    .line 12
    iput v0, p0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    .line 15
    .line 16
    const-wide/32 v1, 0x2bf20

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static y()V
    .locals 2

    .line 1
    sget-object v0, Lh/h;->i:Lh/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh/c;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x46

    .line 8
    .line 9
    if-lt v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "start_prediction_release - exe"

    .line 14
    .line 15
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lh/h;->j:Lb/d;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-virtual {v0, v1}, Lb/d;->i(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {}, Ld/a;->a()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "start_prediction_release - none"

    .line 34
    .line 35
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    .line 1
    sget-object p0, Lh/h;->i:Lh/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lh/c;->b()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lh/h;->m:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Landroid/os/Message;->what:I

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public r(IIIIIIII)V
    .locals 0

    .line 1
    new-instance p0, Lc/f;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p8}, Lc/f;-><init>(IIIIIIII)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lh/h;->k:Lc/d;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lc/d;->M(Lc/f;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    const/16 p0, 0x9

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lh/h;->t(II)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lh/h;->p()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lh/h;->k:Lc/d;

    .line 14
    .line 15
    invoke-virtual {p0}, Lc/d;->P()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh/h;->s()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lh/h;->w()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lh/h;->j()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
