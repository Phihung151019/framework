.class public Lc/k;
.super Ljava/lang/Object;
.source "HWParamSetting.java"


# static fields
.field public static A:Z = false

.field public static B:Z = false

.field public static C:Z = false

.field public static D:Z = false

.field public static E:Ljava/lang/String; = "none"

.field public static F:Ljava/lang/String; = "C"

.field public static G:I = 0x0

.field public static H:Ljava/lang/String; = null

.field public static I:Ljava/lang/String; = null

.field public static J:Ljava/lang/String; = null

.field public static K:Ljava/lang/String; = null

.field public static L:Ljava/lang/String; = null

.field public static M:Ljava/lang/String; = null

.field public static N:Ljava/lang/String; = null

.field public static O:Ljava/lang/String; = null

.field public static P:Ljava/lang/String; = null

.field public static Q:Ljava/lang/String; = null

.field public static R:Ljava/lang/String; = null

.field public static S:Ljava/lang/String; = null

.field public static T:Ljava/lang/String; = null

.field public static U:Ljava/lang/String; = null

.field public static V:Ljava/lang/String; = null

.field public static W:I = 0x0

.field public static X:Ljava/lang/String; = null

.field public static Y:Ljava/lang/String; = null

.field private static Z:Ljava/lang/String; = null

.field private static a0:Ljava/lang/String; = null

.field private static b0:Ljava/lang/String; = null

.field private static c0:Ljava/lang/String; = null

.field private static d0:Ljava/lang/String; = null

.field private static e:Lc/k; = null

.field private static e0:Ljava/lang/String; = null

.field private static f:Landroid/content/Context; = null

.field private static f0:Ljava/lang/String; = null

.field private static final g:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field public static final g0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field public static h0:Landroid/os/HqmStatsImpl; = null

.field private static final i:Ljava/lang/String; = "/sys/class/sec/mmc/un"

.field public static i0:Ljava/util/LinkedHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "La/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field public static j0:Ljava/util/LinkedHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "La/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field private static final l:Ljava/lang/String; = "/sys/block/mmcblk0/device/name"

.field private static final m:Ljava/lang/String; = "ro.boot.revision"

.field private static final n:Ljava/lang/String; = "ro.soc.model"

.field private static final o:Ljava/lang/String; = "ro.hardware.chipname"

.field public static final p:Ljava/lang/String; = "debug.field.monitor"

.field public static q:Z = false

.field public static r:Z = false

.field public static s:Z = false

.field public static t:Z = false

.field public static u:Z = false

.field public static v:Z = false

.field public static w:Z = false

.field public static x:Z = false

.field public static y:Z = false

.field public static z:Ljava/lang/String; = "RETAIL"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lc/b;->E:I

    .line 2
    .line 3
    sput v0, Lc/k;->G:I

    .line 4
    .line 5
    const-string v0, "NONE"

    .line 6
    .line 7
    sput-object v0, Lc/k;->H:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    sput-object v0, Lc/k;->I:Ljava/lang/String;

    .line 12
    .line 13
    sput-object v0, Lc/k;->J:Ljava/lang/String;

    .line 14
    .line 15
    sput-object v0, Lc/k;->K:Ljava/lang/String;

    .line 16
    .line 17
    sput-object v0, Lc/k;->L:Ljava/lang/String;

    .line 18
    .line 19
    sput-object v0, Lc/k;->M:Ljava/lang/String;

    .line 20
    .line 21
    sput-object v0, Lc/k;->N:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "DEV"

    .line 24
    .line 25
    sput-object v1, Lc/k;->O:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "none"

    .line 28
    .line 29
    sput-object v1, Lc/k;->P:Ljava/lang/String;

    .line 30
    .line 31
    sput-object v1, Lc/k;->Q:Ljava/lang/String;

    .line 32
    .line 33
    sput-object v1, Lc/k;->R:Ljava/lang/String;

    .line 34
    .line 35
    sput-object v1, Lc/k;->S:Ljava/lang/String;

    .line 36
    .line 37
    sput-object v1, Lc/k;->T:Ljava/lang/String;

    .line 38
    .line 39
    sput-object v0, Lc/k;->U:Ljava/lang/String;

    .line 40
    .line 41
    sput-object v0, Lc/k;->V:Ljava/lang/String;

    .line 42
    .line 43
    const/16 v0, 0xa

    .line 44
    .line 45
    sput v0, Lc/k;->W:I

    .line 46
    .line 47
    sput-object v1, Lc/k;->X:Ljava/lang/String;

    .line 48
    .line 49
    sput-object v1, Lc/k;->Y:Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "com.samsung.android.dqagent"

    .line 52
    .line 53
    sput-object v0, Lc/k;->Z:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "com.salab.act"

    .line 56
    .line 57
    sput-object v0, Lc/k;->a0:Ljava/lang/String;

    .line 58
    .line 59
    const-string v0, "com.salab.issuetracker"

    .line 60
    .line 61
    sput-object v0, Lc/k;->b0:Ljava/lang/String;

    .line 62
    .line 63
    const-string v0, "com.tbox.hookie"

    .line 64
    .line 65
    sput-object v0, Lc/k;->c0:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "com.reliabilityteam.batterydrainer"

    .line 68
    .line 69
    sput-object v0, Lc/k;->d0:Ljava/lang/String;

    .line 70
    .line 71
    const-string v0, "com.samsung.rms.retailagent.global"

    .line 72
    .line 73
    sput-object v0, Lc/k;->e0:Ljava/lang/String;

    .line 74
    .line 75
    const-string v0, "io.ismconnect.att.devicealive"

    .line 76
    .line 77
    sput-object v0, Lc/k;->f0:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lc/k;->g0:Ljava/util/ArrayList;

    .line 85
    .line 86
    new-instance v0, Landroid/os/HqmStatsImpl;

    .line 87
    .line 88
    invoke-direct {v0}, Landroid/os/HqmStatsImpl;-><init>()V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lc/k;->h0:Landroid/os/HqmStatsImpl;

    .line 92
    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lc/k;->i0:Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lc/k;->j0:Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lc/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc/k;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    iput-object v0, p0, Lc/k;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v0, Lc/j;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lc/j;-><init>(Lc/k;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lc/k;->d:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    sput-object p1, Lc/k;->f:Landroid/content/Context;

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lc/k;->c:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 41
    .line 42
    sget-object v0, Lc/k;->a0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    sget-object v0, Lc/k;->b0:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    sget-object v0, Lc/k;->c0:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 62
    .line 63
    sget-object v0, Lc/k;->d0:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lc/k;->c:Ljava/util/ArrayList;

    .line 69
    .line 70
    sget-object v0, Lc/k;->e0:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lc/k;->c:Ljava/util/ArrayList;

    .line 76
    .line 77
    sget-object v0, Lc/k;->f0:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lc/k;->l()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method static bridge synthetic a(Lc/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lc/k;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/k;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lc/k;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lc/k;->f0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lc/k;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0xa200

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lc/k;->a:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Apk Install : "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :catch_0
    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "Apk Not Install : "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "ro.boot.revision"

    .line 2
    .line 3
    const-string v0, "none"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lc/k;
    .locals 2

    .line 1
    const-class v0, Lc/k;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lc/k;->e:Lc/k;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lc/k;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lc/k;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lc/k;->e:Lc/k;

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
    sget-object p0, Lc/k;->e:Lc/k;
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

.method private i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getUniqueNumber"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "/sys/class/sec/ufs/un"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lc/k;->j(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lc/k;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "/sys/class/scsi_host/host0/unique_number"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lc/k;->j(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lc/k;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v0, "/sys/class/sec/mmc/un"

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lc/k;->j(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v1, v2, :cond_2

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lc/k;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "/sys/block/mmcblk0/device/unique_number"

    .line 49
    .line 50
    invoke-direct {p0, v0}, Lc/k;->j(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ne v1, v2, :cond_3

    .line 55
    .line 56
    invoke-direct {p0, v0}, Lc/k;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string p0, ""

    .line 62
    .line 63
    :goto_0
    if-nez p0, :cond_4

    .line 64
    .line 65
    const-string p0, "none"

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "read IOException"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 5
    .line 6
    new-instance v3, Ljava/io/FileReader;

    .line 7
    .line 8
    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    move-object v1, v2

    .line 27
    goto :goto_4

    .line 28
    :catch_0
    move-exception p1

    .line 29
    move-object v6, v2

    .line 30
    move-object v2, v1

    .line 31
    move-object v1, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :catch_1
    move-exception p1

    .line 38
    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p0, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :catchall_1
    move-exception p1

    .line 48
    goto :goto_4

    .line 49
    :catch_2
    move-exception p1

    .line 50
    move-object v2, v1

    .line 51
    :goto_1
    :try_start_3
    iget-object v3, p0, Lc/k;->a:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v5, "read Exception "

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v3, p1}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_3
    move-exception p1

    .line 84
    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p0, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_2
    move-object v1, v2

    .line 93
    :goto_3
    return-object v1

    .line 94
    :goto_4
    if-eqz v1, :cond_2

    .line 95
    .line 96
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :catch_4
    move-exception v1

    .line 101
    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p0, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_5
    throw p1
.end method

.method private l()V
    .locals 7

    .line 1
    new-instance v3, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "package"

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    move v4, v2

    .line 29
    :goto_0
    if-ge v4, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    check-cast v5, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v5, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lc/k;->c:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    move v4, v2

    .line 50
    :goto_1
    if-ge v4, v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    check-cast v5, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v5, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    sget-object v0, Lc/k;->f:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v1, p0, Lc/k;->d:Landroid/content/BroadcastReceiver;

    .line 67
    .line 68
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x2

    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public f()V
    .locals 9

    .line 1
    sget-object v0, Lc/k;->Z:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lc/k;->e(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lc/k;->x:Z

    .line 8
    .line 9
    iget-object v0, p0, Lc/k;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :goto_0
    const-string v5, "."

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    if-ge v4, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v3}, Lc/k;->e(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/2addr v0, v6

    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lc/k;->X:Ljava/lang/String;

    .line 47
    .line 48
    move v3, v7

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v3, v7

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    iget-object v0, p0, Lc/k;->c:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    move v4, v2

    .line 59
    move v7, v4

    .line 60
    :goto_2
    if-ge v7, v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    check-cast v4, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p0, v4}, Lc/k;->e(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_3

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr v0, v6

    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lc/k;->Y:Ljava/lang/String;

    .line 86
    .line 87
    sget-object v0, Lc/k;->f0:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    const-string v0, "RETAIL_A"

    .line 96
    .line 97
    sput-object v0, Lc/k;->z:Ljava/lang/String;

    .line 98
    .line 99
    :cond_2
    move v4, v8

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move v4, v8

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    :goto_3
    if-nez v4, :cond_5

    .line 104
    .line 105
    sget-object v0, Lc/k;->f:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "verizonwireless_store_demo_mode"

    .line 112
    .line 113
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ne v0, v6, :cond_5

    .line 118
    .line 119
    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "store_demo_mode : "

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {p0, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p0, "RETAIL_V"

    .line 142
    .line 143
    sput-object p0, Lc/k;->z:Ljava/lang/String;

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    move v6, v4

    .line 147
    :goto_4
    sput-boolean v3, Lc/k;->A:Z

    .line 148
    .line 149
    sput-boolean v6, Lc/k;->y:Z

    .line 150
    .line 151
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/k;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lc/k;->L:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lc/k;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sput-object p0, Lc/k;->J:Ljava/lang/String;

    .line 12
    .line 13
    const-string p0, "ro.soc.model"

    .line 14
    .line 15
    const-string v0, "none"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sput-object p0, Lc/k;->R:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const-string p0, "ro.hardware.chipname"

    .line 30
    .line 31
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sput-object p0, Lc/k;->R:Ljava/lang/String;

    .line 36
    .line 37
    :cond_0
    return-void
.end method
