.class public Lcom/samsung/android/hqm/HqmManagerService;
.super Landroid/os/ISemHqmManager$Stub;
.source "HqmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/c;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String;

.field private static o:Landroid/content/Context;

.field private static p:Lcom/samsung/android/hqm/HqmManagerService;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/HandlerThread;

.field private c:La/g;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:J

.field m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/hqm/HqmManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/ISemHqmManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->b:Landroid/os/HandlerThread;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->d:I

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->e:I

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->f:I

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->g:I

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->h:I

    .line 25
    .line 26
    const/4 v1, 0x7

    .line 27
    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->i:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->j:I

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    iput v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->k:I

    .line 34
    .line 35
    const-wide/16 v2, 0x1388

    .line 36
    .line 37
    iput-wide v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->l:J

    .line 38
    .line 39
    new-instance v2, Lcom/samsung/android/hqm/b;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/samsung/android/hqm/b;-><init>(Lcom/samsung/android/hqm/HqmManagerService;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->m:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    sget-object v2, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 47
    .line 48
    const-string v3, "Start"

    .line 49
    .line 50
    invoke-static {v2, v3}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object p1, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->w()V

    .line 56
    .line 57
    .line 58
    sget-boolean p1, Ld/a;->i:Z

    .line 59
    .line 60
    const-string v3, "Hqm - Disable"

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    const-string p1, "Hqm - Enable"

    .line 65
    .line 66
    invoke-static {v2, p1}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {p1}, La/g;->y(Landroid/content/Context;)La/g;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 76
    .line 77
    invoke-virtual {p1}, La/g;->K()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    new-instance p1, Landroid/os/HandlerThread;

    .line 84
    .line 85
    const-string v1, "Hqm Thread1"

    .line 86
    .line 87
    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->b:Landroid/os/HandlerThread;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lcom/samsung/android/hqm/a;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->b:Landroid/os/HandlerThread;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/hqm/a;-><init>(Lcom/samsung/android/hqm/HqmManagerService;Landroid/os/Looper;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->p()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_0
    invoke-static {v2, v3}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sput-boolean v1, Lc/k;->q:Z

    .line 116
    .line 117
    sget p0, Lc/b;->E:I

    .line 118
    .line 119
    sput p0, Lc/k;->G:I

    .line 120
    .line 121
    sput-boolean v1, Lc/k;->r:Z

    .line 122
    .line 123
    sput-boolean v1, Lc/k;->s:Z

    .line 124
    .line 125
    sput-boolean v1, Lc/k;->t:Z

    .line 126
    .line 127
    return-void

    .line 128
    :cond_1
    invoke-static {v2, v3}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-boolean v1, Lc/k;->q:Z

    .line 132
    .line 133
    sget p0, Lc/b;->E:I

    .line 134
    .line 135
    sput p0, Lc/k;->G:I

    .line 136
    .line 137
    sput-boolean v1, Lc/k;->r:Z

    .line 138
    .line 139
    sput-boolean v1, Lc/k;->s:Z

    .line 140
    .line 141
    sput-boolean v1, Lc/k;->t:Z

    .line 142
    .line 143
    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->l(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->o(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g(Lcom/samsung/android/hqm/HqmManagerService;Lcom/samsung/android/hqm/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->s(Lcom/samsung/android/hqm/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic h(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic i(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic j(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private l(Landroid/content/Intent;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkSecurityInfo"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Result"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-string v1, "-1"

    .line 16
    .line 17
    const-string v3, "ro.boot.warranty_bit"

    .line 18
    .line 19
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v3, "ro.crypto.state"

    .line 24
    .line 25
    const-string v4, "none"

    .line 26
    .line 27
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v5, "ro.crypto.type"

    .line 32
    .line 33
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "O"

    .line 38
    .line 39
    const-string v6, "C"

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    if-ne p1, v7, :cond_0

    .line 43
    .line 44
    move-object v7, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v7, -0x1

    .line 47
    if-ne p1, v7, :cond_1

    .line 48
    .line 49
    const-string v7, "S"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v7, v5

    .line 53
    :goto_0
    const-string v8, "0"

    .line 54
    .line 55
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object v5, v6

    .line 63
    :goto_1
    const/4 v6, 0x3

    .line 64
    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, ":"

    .line 77
    .line 78
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, ","

    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    sput-object p1, Lc/k;->Q:Ljava/lang/String;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 117
    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0, p1}, La/g;->b0(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string p1, "checkSecurityInfo "

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    sget-object p1, Lc/k;->Q:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {v0, p0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public static m()Lcom/samsung/android/hqm/HqmManagerService;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->p:Lcom/samsung/android/hqm/HqmManagerService;

    .line 2
    .line 3
    return-object v0
.end method

.method private n(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string p0, "Hqm Basic Setting :"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "  enable="

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lc/k;->q:Z

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v0, "  usingDVS="

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget-boolean v0, Lc/k;->r:Z

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "  usingDQS="

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    sget-boolean v0, Lc/k;->s:Z

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v0, "  usingCFS="

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    sget-boolean v0, Lc/k;->t:Z

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v0, "  DQA="

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    sget-boolean v0, Lc/k;->x:Z

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v0, "  Server="

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    sget v0, Lc/k;->G:I

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string p0, ""

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method private o(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "MODE"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "LOG"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v1, "NON"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "HQM disable"

    .line 26
    .line 27
    invoke-static {v1, v2}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget v1, Lc/b;->E:I

    .line 31
    .line 32
    sput v1, Lc/k;->G:I

    .line 33
    .line 34
    :cond_0
    sput-object v0, Lc/k;->S:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1, v0}, La/g;->a0(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, p1}, La/g;->i(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "ACTION_DQA_SEND_REQ"

    .line 4
    .line 5
    invoke-static {p0, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v0, "com.samsung.android.dqagent.ACTION_DQA_SEND_REQ"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x20

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v0, "com.samsung.android.dqagent"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v1, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    .line 30
    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private r()V
    .locals 6

    .line 1
    sget-boolean p0, Lc/k;->A:Z

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v1, "com.samsung.android.dqagent.ACTION_DQA_SETTING_INFO"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget v1, Lc/k;->G:I

    .line 11
    .line 12
    sget v2, Lc/b;->I:I

    .line 13
    .line 14
    const-string v3, "PUT"

    .line 15
    .line 16
    const-string v4, "AUT"

    .line 17
    .line 18
    if-ne v1, v2, :cond_3

    .line 19
    .line 20
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v5, "sendDqaModeSettingIntent : "

    .line 28
    .line 29
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget-object v5, Lc/k;->O:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-boolean v2, Lc/k;->B:Z

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    sget p0, Lc/b;->F:I

    .line 51
    .line 52
    sput p0, Lc/k;->G:I

    .line 53
    .line 54
    :goto_0
    move-object v3, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget-boolean p0, Ld/d;->b:Z

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    sget-object p0, Lc/k;->O:Ljava/lang/String;

    .line 62
    .line 63
    const-string v2, "USR_"

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    const-string p0, "dqaMode = USR "

    .line 72
    .line 73
    invoke-static {v1, p0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v3, "USR"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const-string p0, "dqaMode = TST "

    .line 80
    .line 81
    invoke-static {v1, p0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v3, "TST"

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    sget v1, Lc/k;->G:I

    .line 88
    .line 89
    sget v2, Lc/b;->F:I

    .line 90
    .line 91
    if-ne v1, v2, :cond_6

    .line 92
    .line 93
    sget-boolean v1, Lc/k;->B:Z

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    sget-boolean p0, Ld/d;->b:Z

    .line 101
    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    const-string v3, "DEV"

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    const-string v3, "NON"

    .line 109
    .line 110
    :goto_1
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v2, "DQA_SETTING_INFO "

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {p0, v1}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sput-object v3, Lc/k;->H:Ljava/lang/String;

    .line 133
    .line 134
    const-string p0, "mode"

    .line 135
    .line 136
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    const/16 p0, 0x20

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    const-string p0, "com.samsung.android.dqagent"

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 150
    .line 151
    if-eqz p0, :cond_7

    .line 152
    .line 153
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 154
    .line 155
    const-string v2, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    .line 156
    .line 157
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_7
    return-void
.end method

.method private s(Lcom/samsung/android/hqm/c;)Z
    .locals 14

    .line 1
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "sendHWParamToHQM - msg "

    .line 4
    .line 5
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    iget v3, p1, Lcom/samsung/android/hqm/c;->a:I

    .line 15
    .line 16
    iget-object v4, p1, Lcom/samsung/android/hqm/c;->b:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p1, Lcom/samsung/android/hqm/c;->e:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v6, p1, Lcom/samsung/android/hqm/c;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v7, p1, Lcom/samsung/android/hqm/c;->d:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v8, p1, Lcom/samsung/android/hqm/c;->c:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v9, p1, Lcom/samsung/android/hqm/c;->g:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v10, p1, Lcom/samsung/android/hqm/c;->h:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v11, p1, Lcom/samsung/android/hqm/c;->i:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v12, p1, Lcom/samsung/android/hqm/c;->j:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v13, p1, Lcom/samsung/android/hqm/c;->k:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual/range {v2 .. v13}, La/g;->U(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method private t()V
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "sendHWUpdateIntent()"

    .line 4
    .line 5
    invoke-static {p0, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/high16 v0, 0x1000000

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "sendHwStatusAckIntent()"

    .line 4
    .line 5
    invoke-static {p0, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v0, "com.sec.android.intent.action.HQM_HW_STATUS_ACK"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "sendHwStatusRefreshReqIntent()"

    .line 4
    .line 5
    invoke-static {p0, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v0, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private w()V
    .locals 0

    .line 1
    invoke-static {}, Ld/a;->a()Ld/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ld/a;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object p1, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string p1, "Permission Denial: can\'t dump HqmManagerService from from pid="

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ", uid="

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, " without permission "

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    sget-object p1, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "dump - start"

    .line 59
    .line 60
    invoke-static {p1, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    if-eqz p3, :cond_7

    .line 65
    .line 66
    array-length v0, p3

    .line 67
    const/4 v1, 0x1

    .line 68
    if-le v0, v1, :cond_7

    .line 69
    .line 70
    aget-object v0, p3, p1

    .line 71
    .line 72
    const-string v2, "HWParam"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    move v0, p1

    .line 85
    move v4, v0

    .line 86
    move v5, v4

    .line 87
    :cond_1
    :goto_0
    add-int/2addr p1, v1

    .line 88
    :try_start_0
    array-length v6, p3

    .line 89
    if-lt p1, v6, :cond_5

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    const-wide/16 v6, -0x1

    .line 100
    .line 101
    invoke-virtual {p1, v6, v7}, La/g;->i0(J)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 110
    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    invoke-virtual {p1, p2, v1}, La/g;->J(Ljava/io/PrintWriter;Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/hqm/HqmManagerService;->n(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    :try_start_1
    aget-object v6, p3, p1

    .line 125
    .line 126
    sget v7, Lc/k;->G:I

    .line 127
    .line 128
    sget v8, Lc/b;->G:I

    .line 129
    .line 130
    if-eq v7, v8, :cond_6

    .line 131
    .line 132
    const-string v7, "trigger"

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_6

    .line 139
    .line 140
    move v0, v1

    .line 141
    move v4, v0

    .line 142
    goto :goto_0

    .line 143
    :cond_6
    const-string v7, "-D"

    .line 144
    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz v6, :cond_1

    .line 150
    .line 151
    move v0, v1

    .line 152
    move v5, v0

    .line 153
    goto :goto_0

    .line 154
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_7
    iget-object p3, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 159
    .line 160
    if-eqz p3, :cond_8

    .line 161
    .line 162
    invoke-virtual {p3, p2, p1}, La/g;->J(Ljava/io/PrintWriter;Z)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_8
    invoke-direct {p0, p2}, Lcom/samsung/android/hqm/HqmManagerService;->n(Ljava/io/PrintWriter;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public getCFServerEnable()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->getHqmEnable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-boolean p0, Lc/k;->t:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public getDVServerEnable()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->getHqmEnable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-boolean p0, Lc/k;->r:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public getHqmEnable()Z
    .locals 0

    .line 1
    sget-boolean p0, Ld/a;->i:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-boolean p0, Lc/k;->q:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method p()V
    .locals 6

    .line 1
    new-instance v2, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "com.sec.android.intent.action.ACT_HQM_UPDATE_REQ"

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "com.sec.android.intent.action.ACT_HQM_TEST_DIVISION"

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "com.samsung.android.dqagent.ACTION_DQA_EXTRA_INFO"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "com.sec.intent.action.SYSSCOPESTATUS"

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->m:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x2

    .line 42
    const-string v3, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    .line 43
    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p6, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-boolean v1, Lc/k;->q:Z

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    const-string v2, "HQM disable"

    invoke-static {v1, v2}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    const-string v2, "sendHWParamServer - start"

    invoke-static {v1, v2}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    if-nez v1, :cond_2

    return v0

    .line 5
    :cond_2
    const-string v11, ""

    const-string v12, "none"

    const-string v8, ""

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v12}, La/g;->U(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 6
    :cond_3
    :goto_0
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    const-string v2, "unformatted data"

    invoke-static {v1, v2}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-boolean v1, Lc/k;->q:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    const-string v1, "HQM disable"

    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendHWParamToHQM - start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x2

    move/from16 v3, p1

    if-ne v3, v1, :cond_2

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v3

    .line 5
    :goto_0
    new-instance v5, Lcom/samsung/android/hqm/c;

    const-string v16, ""

    const/16 v17, 0x0

    const-string v15, ""

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v5 .. v17}, Lcom/samsung/android/hqm/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/n;)V

    .line 6
    iget-object v1, v0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    .line 7
    iput v2, v1, Landroid/os/Message;->what:I

    .line 8
    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object v0, v0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method public sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    move-object/from16 v3, p3

    .line 1
    sget-boolean v0, Lc/k;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    const-string p1, "HQM disable"

    invoke-static {p0, p1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendHWParamToHQMWithAppID - start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    if-nez p10, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p1

    .line 5
    :goto_0
    new-instance v0, Lcom/samsung/android/hqm/c;

    const-string v11, ""

    const/4 v12, 0x0

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/hqm/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/n;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x6

    .line 7
    iput v1, p1, Landroid/os/Message;->what:I

    .line 8
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p0, 0x1

    return p0

    .line 10
    :cond_4
    :goto_1
    const-string p0, "unformatted data"

    invoke-static {v0, p0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public sendHWParamToHQMwithFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    move-object/from16 v3, p3

    .line 1
    sget-boolean v0, Lc/k;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    const-string p1, "HQM disable"

    invoke-static {p0, p1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendHWParamToHQMWithFile - start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    if-eqz p10, :cond_4

    if-nez p11, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p1

    .line 5
    :goto_0
    new-instance v0, Lcom/samsung/android/hqm/c;

    const/4 v12, 0x0

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/hqm/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/n;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x6

    .line 7
    iput v1, p1, Landroid/os/Message;->what:I

    .line 8
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p0, 0x1

    return p0

    .line 10
    :cond_4
    :goto_1
    const-string p0, "unformatted data"

    invoke-static {v0, p0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lc/k;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->n:Ljava/lang/String;

    .line 6
    .line 7
    const-string p1, "HQM disable"

    .line 8
    .line 9
    invoke-static {p0, p1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/g;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, La/g;->W(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
