.class public Ld/a;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final f:Ljava/lang/String; = "a"

.field private static g:Ld/a; = null

.field private static h:Ld/b; = null

.field public static i:Z = false

.field private static final j:Ljava/lang/String; = "ro.product.vendor.device"


# instance fields
.field private a:I

.field private b:I

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Ld/a;->a:I

    .line 7
    .line 8
    iput v0, p0, Ld/a;->b:I

    .line 9
    .line 10
    const-string v0, "ro.product.vendor.device"

    .line 11
    .line 12
    const-string v1, "none"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ld/a;->c:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "hqm_"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Ld/a;->c:Ljava/lang/String;

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
    iput-object v0, p0, Ld/a;->d:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "in_house"

    .line 42
    .line 43
    iput-object v0, p0, Ld/a;->e:Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method

.method public static a()Ld/a;
    .locals 1

    .line 1
    sget-object v0, Ld/a;->g:Ld/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ld/a;

    .line 6
    .line 7
    invoke-direct {v0}, Ld/a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ld/a;->g:Ld/a;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Ld/a;->g:Ld/a;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Ld/a;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Ld/a;->d:Ljava/lang/String;

    .line 5
    .line 6
    sput-object v0, Lc/k;->U:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Ld/a;->e:Ljava/lang/String;

    .line 9
    .line 10
    sput-object v0, Lc/k;->V:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "jdm"

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget p0, p0, Ld/a;->b:I

    .line 21
    .line 22
    sput p0, Lc/k;->W:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p0, p0, Ld/a;->a:I

    .line 26
    .line 27
    sput p0, Lc/k;->W:I

    .line 28
    .line 29
    :goto_0
    sget-object p0, Ld/a;->f:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "xml file name : "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget-object v1, Lc/k;->U:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p0, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "manufacturingType : "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    sget-object v1, Lc/k;->V:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p0, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v1, "log level : "

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    sget v1, Lc/k;->W:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {p0, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object p0, Ld/a;->h:Ld/b;

    .line 98
    .line 99
    if-nez p0, :cond_1

    .line 100
    .line 101
    invoke-static {}, Ld/b;->b()Ld/b;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    sput-object p0, Ld/a;->h:Ld/b;

    .line 106
    .line 107
    :cond_1
    sget-object p0, Ld/a;->h:Ld/b;

    .line 108
    .line 109
    if-eqz p0, :cond_2

    .line 110
    .line 111
    sget v0, Lc/k;->W:I

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ld/b;->c(I)V

    .line 114
    .line 115
    .line 116
    :cond_2
    return-void
.end method
