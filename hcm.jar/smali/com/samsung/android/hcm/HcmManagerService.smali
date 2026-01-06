.class public Lcom/samsung/android/hcm/HcmManagerService;
.super Landroid/os/ISemHcmManager$Stub;
.source "HcmManagerService.java"


# static fields
.field private static A:Z = false

.field private static B:Z = false

.field private static C:Z = false

.field private static final D:I = 0x1

.field private static final o:Ljava/lang/String;

.field private static p:Landroid/content/Context;

.field private static q:Le/a;

.field private static r:Lh/h;

.field private static s:Lc/e;

.field private static t:Lc/d;

.field private static u:La/i;

.field private static v:Lb/d;

.field private static w:Lb/b;

.field private static x:Lg/c;

.field private static y:Lg/b;

.field private static z:La/b;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/HandlerThread;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:J

.field private final l:J

.field private m:La/d;

.field n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/hcm/HcmManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->q:Le/a;

    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    .line 13
    .line 14
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->s:Lc/e;

    .line 15
    .line 16
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    .line 17
    .line 18
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->u:La/i;

    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->v:Lb/d;

    .line 21
    .line 22
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->w:Lb/b;

    .line 23
    .line 24
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->x:Lg/c;

    .line 25
    .line 26
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->y:Lg/b;

    .line 27
    .line 28
    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->z:La/b;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/samsung/android/hcm/HcmManagerService;->A:Z

    .line 32
    .line 33
    sput-boolean v0, Lcom/samsung/android/hcm/HcmManagerService;->B:Z

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    xor-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    sput-boolean v0, Lcom/samsung/android/hcm/HcmManagerService;->C:Z

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/ISemHcmManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    .line 8
    .line 9
    const/16 v1, 0x65

    .line 10
    .line 11
    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->c:I

    .line 12
    .line 13
    const/16 v1, 0x12d

    .line 14
    .line 15
    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->d:I

    .line 16
    .line 17
    const/16 v1, 0x12e

    .line 18
    .line 19
    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->e:I

    .line 20
    .line 21
    const/16 v1, 0x1f5

    .line 22
    .line 23
    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->f:I

    .line 24
    .line 25
    const/16 v1, 0x1f6

    .line 26
    .line 27
    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->g:I

    .line 28
    .line 29
    const/16 v1, 0x259

    .line 30
    .line 31
    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->h:I

    .line 32
    .line 33
    const/16 v1, 0x321

    .line 34
    .line 35
    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->i:I

    .line 36
    .line 37
    const/16 v1, 0x322

    .line 38
    .line 39
    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->j:I

    .line 40
    .line 41
    const-wide/16 v1, 0x3e8

    .line 42
    .line 43
    iput-wide v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->k:J

    .line 44
    .line 45
    const-wide/32 v1, 0xea60

    .line 46
    .line 47
    .line 48
    iput-wide v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->l:J

    .line 49
    .line 50
    iput-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    .line 51
    .line 52
    new-instance v0, Lcom/samsung/android/hcm/b;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/samsung/android/hcm/b;-><init>(Lcom/samsung/android/hcm/HcmManagerService;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->n:Landroid/content/BroadcastReceiver;

    .line 58
    .line 59
    sput-object p1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x1

    .line 66
    if-ne v0, v1, :cond_0

    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    sput-boolean v1, Lcom/samsung/android/hcm/HcmManagerService;->A:Z

    .line 70
    .line 71
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    .line 72
    .line 73
    const-string v2, "HCM Start"

    .line 74
    .line 75
    invoke-static {v0, v2}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Landroid/os/HandlerThread;

    .line 79
    .line 80
    const-string v3, "Hcm Main Thread"

    .line 81
    .line 82
    invoke-direct {v2, v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    iput-object v2, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v1}, Lh/h;->m(Landroid/content/Context;)Lh/h;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    .line 97
    .line 98
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    .line 103
    .line 104
    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v1}, Lc/e;->r(Landroid/content/Context;)Lc/e;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->s:Lc/e;

    .line 111
    .line 112
    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    .line 119
    .line 120
    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v1}, La/i;->p(Landroid/content/Context;)La/i;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->u:La/i;

    .line 127
    .line 128
    new-instance v1, Landroid/os/Handler;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, La/i;->s(Landroid/os/Handler;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {p1, v1}, Lb/d;->e(Landroid/content/Context;Landroid/os/Looper;)Lb/d;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->v:Lb/d;

    .line 153
    .line 154
    invoke-static {p1}, Lb/b;->a(Landroid/content/Context;)Lb/b;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->w:Lb/b;

    .line 159
    .line 160
    invoke-static {}, La/b;->b()La/b;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->z:La/b;

    .line 165
    .line 166
    invoke-static {p1}, Lg/c;->h(Landroid/content/Context;)Lg/c;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->x:Lg/c;

    .line 171
    .line 172
    invoke-static {p1}, Lg/b;->l(Landroid/content/Context;)Lg/b;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    sput-object p1, Lcom/samsung/android/hcm/HcmManagerService;->y:Lg/b;

    .line 177
    .line 178
    new-instance p1, Lcom/samsung/android/hcm/a;

    .line 179
    .line 180
    iget-object v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-direct {p1, p0, v1}, Lcom/samsung/android/hcm/a;-><init>(Lcom/samsung/android/hcm/HcmManagerService;Landroid/os/Looper;)V

    .line 187
    .line 188
    .line 189
    iput-object p1, p0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    .line 190
    .line 191
    invoke-direct {p0}, Lcom/samsung/android/hcm/HcmManagerService;->i()V

    .line 192
    .line 193
    .line 194
    const-string p1, "HcmManagerService is created."

    .line 195
    .line 196
    invoke-static {v0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p0}, Lcom/samsung/android/hcm/HcmManagerService;->j()V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/hcm/HcmManagerService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/hcm/HcmManagerService;)La/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/hcm/HcmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/hcm/HcmManagerService;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic e()Lc/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic f()Lb/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->w:Lb/b;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic g()Lg/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->y:Lg/b;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic h()Lh/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    .line 2
    .line 3
    return-object v0
.end method

.method private i()V
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
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.DATE_CHANGED"

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->n:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private declared-synchronized j()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "sys.boot_completed"

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    sget-boolean v0, Lcom/samsung/android/hcm/HcmManagerService;->B:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "START SERVICE"

    .line 19
    .line 20
    invoke-static {v0, v2}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    .line 24
    .line 25
    const-string v2, "MAIN"

    .line 26
    .line 27
    const-string v3, "START SERVICE"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-boolean v1, Lcom/samsung/android/hcm/HcmManagerService;->B:Z

    .line 33
    .line 34
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    .line 35
    .line 36
    invoke-virtual {v0}, Lh/h;->x()V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    .line 40
    .line 41
    invoke-virtual {v0}, Lc/d;->l()V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->x:Lg/c;

    .line 45
    .line 46
    invoke-virtual {v0}, Lg/c;->b()V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, La/i;->t(Z)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->v:Lb/d;

    .line 53
    .line 54
    invoke-virtual {v0}, Lb/d;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    sget-object v3, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump HcmManagerService from from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " without permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    sget-boolean v3, Lcom/samsung/android/hcm/HcmManagerService;->A:Z

    if-nez v3, :cond_1

    .line 6
    const-string v0, "HCM is not enabled"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object v3, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    const-string v4, "dump - start"

    invoke-static {v3, v4}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Dump start"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    .line 9
    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_16

    .line 10
    aget-object v4, v2, v3

    .line 11
    const-string v6, "TEST"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 13
    :try_start_0
    array-length v8, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v8, :cond_2

    .line 14
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 15
    :cond_2
    :try_start_1
    aget-object v8, v2, v4

    .line 16
    const-string v9, "runestone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 17
    iget-object v3, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v8, 0x65

    .line 18
    iput v8, v3, Landroid/os/Message;->what:I

    .line 19
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 20
    :cond_3
    const-string v9, "db_size"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 21
    sget-object v3, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    invoke-virtual {v3, v1}, Lc/d;->J(Ljava/io/PrintWriter;)V

    goto/16 :goto_5

    .line 22
    :cond_4
    const-string v9, "db"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 23
    iget-object v3, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v8, 0x12d

    .line 24
    iput v8, v3, Landroid/os/Message;->what:I

    .line 25
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 26
    :cond_5
    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 27
    iget-object v3, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v8, 0x1f5

    .line 28
    iput v8, v3, Landroid/os/Message;->what:I

    .line 29
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 30
    :cond_6
    const-string v9, "umbl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x4

    const-string v11, "0"

    if-eqz v9, :cond_8

    .line 31
    :try_start_2
    array-length v8, v2

    if-ne v8, v10, :cond_7

    add-int/lit8 v8, v3, 0x2

    .line 32
    aget-object v11, v2, v8

    add-int/lit8 v3, v3, 0x3

    .line 33
    aget-object v3, v2, v3

    goto :goto_1

    :cond_7
    move-object v3, v11

    .line 34
    :goto_1
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/16 v9, 0x12e

    .line 35
    iput v9, v8, Landroid/os/Message;->what:I

    .line 36
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    iget-object v3, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 38
    :cond_8
    const-string v9, "psmode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 39
    array-length v8, v2

    if-ne v8, v10, :cond_9

    add-int/lit8 v8, v3, 0x2

    .line 40
    aget-object v11, v2, v8

    add-int/lit8 v3, v3, 0x3

    .line 41
    aget-object v3, v2, v3

    goto :goto_2

    :cond_9
    move-object v3, v11

    .line 42
    :goto_2
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/16 v9, 0x259

    .line 43
    iput v9, v8, Landroid/os/Message;->what:I

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    iget-object v3, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 46
    :cond_a
    const-string v9, "printdb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 47
    sget-object v3, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    invoke-virtual {v3, v1}, Lc/d;->I(Ljava/io/PrintWriter;)V

    goto/16 :goto_5

    .line 48
    :cond_b
    const-string v9, "adddb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 49
    array-length v8, v2

    const/16 v9, 0xa

    if-ne v8, v9, :cond_15

    add-int/lit8 v8, v3, 0x2

    .line 50
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v3, 0x3

    .line 51
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v8, v3, 0x4

    .line 52
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v8, v3, 0x5

    .line 53
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v8, v3, 0x6

    .line 54
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v8, v3, 0x7

    .line 55
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v8, v3, 0x8

    .line 56
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v3, v3, 0x9

    .line 57
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 58
    sget-object v9, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    invoke-virtual/range {v9 .. v17}, Lh/h;->r(IIIIIIII)V

    goto/16 :goto_5

    .line 59
    :cond_c
    const-string v9, "ftraining"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 60
    sget-object v3, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    invoke-virtual {v3, v5}, Lc/d;->O(Z)V

    .line 61
    invoke-static {}, Lh/h;->q()V

    goto/16 :goto_5

    .line 62
    :cond_d
    const-string v9, "time"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 63
    invoke-static {}, La/j;->g()I

    move-result v3

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hour = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 65
    :cond_e
    const-string v9, "ipc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 66
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/16 v9, 0x1f6

    .line 67
    iput v9, v8, Landroid/os/Message;->what:I

    .line 68
    array-length v9, v2

    if-ne v9, v10, :cond_f

    add-int/lit8 v9, v3, 0x2

    .line 69
    aget-object v9, v2, v9

    add-int/lit8 v3, v3, 0x3

    .line 70
    aget-object v3, v2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 71
    :cond_f
    const-string v9, ""

    move-object v3, v9

    :goto_3
    if-eqz v9, :cond_10

    .line 72
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v3, :cond_10

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_11

    .line 74
    :cond_10
    const-string v9, "dm"

    .line 75
    const-string v3, "normal"

    .line 76
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v3, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 78
    :cond_12
    const-string v9, "smartchg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 79
    array-length v8, v2

    if-ne v8, v10, :cond_13

    add-int/lit8 v8, v3, 0x2

    .line 80
    aget-object v11, v2, v8

    add-int/lit8 v3, v3, 0x3

    .line 81
    aget-object v3, v2, v3

    goto :goto_4

    :cond_13
    move-object v3, v11

    .line 82
    :goto_4
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/16 v9, 0x321

    .line 83
    iput v9, v8, Landroid/os/Message;->what:I

    .line 84
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    iget-object v3, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 86
    :cond_14
    const-string v3, "smartchg_db"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 87
    iget-object v3, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v8, 0x322

    .line 88
    iput v8, v3, Landroid/os/Message;->what:I

    .line 89
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_15
    :goto_5
    move v3, v4

    goto/16 :goto_0

    .line 90
    :goto_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw v0

    .line 92
    :cond_16
    const-string v2, "Ver : 20210802-S1"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/samsung/android/hcm/HcmManagerService;->z:La/b;

    if-eqz v2, :cond_17

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FuncLevel : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/hcm/HcmManagerService;->z:La/b;

    invoke-virtual {v4}, La/b;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    :cond_17
    sget-object v2, Lcom/samsung/android/hcm/HcmManagerService;->u:La/i;

    if-eqz v2, :cond_18

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApmSwitch : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->o()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSM : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->q()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    :cond_18
    const-string v2, "printHistoryLog"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, v0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    if-eqz v0, :cond_19

    .line 100
    invoke-virtual {v0, v1, v3}, La/d;->c(Ljava/io/PrintWriter;Z)V

    :cond_19
    return-void
.end method

.method public getHcmEnable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
