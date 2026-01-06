.class public Lg/c;
.super Ljava/lang/Object;
.source "SmartChargeData.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Lg/c;

.field private static d:La/d;

.field private static e:La/f;

.field private static f:Lc/e;

.field private static g:[I

.field private static h:I

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lg/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lg/c;->a:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lg/c;->c:Lg/c;

    .line 11
    .line 12
    sput-object v0, Lg/c;->d:La/d;

    .line 13
    .line 14
    sput-object v0, Lg/c;->e:La/f;

    .line 15
    .line 16
    const/16 v0, 0x18

    .line 17
    .line 18
    new-array v0, v0, [I

    .line 19
    .line 20
    sput-object v0, Lg/c;->g:[I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    sput v0, Lg/c;->h:I

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lg/c;->i:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-object p1, Lg/c;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sput-object p0, Lg/c;->d:La/d;

    .line 11
    .line 12
    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sput-object p0, Lg/c;->e:La/f;

    .line 17
    .line 18
    invoke-static {p1}, Lc/e;->r(Landroid/content/Context;)Lc/e;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sput-object p0, Lg/c;->f:Lc/e;

    .line 23
    .line 24
    return-void
.end method

.method public static a()V
    .locals 11

    .line 1
    sget-object v0, Lg/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "calAvgChargeInfo"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lg/c;->k()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :cond_0
    const/16 v4, 0x18

    .line 20
    .line 21
    if-ge v3, v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    check-cast v5, Lg/d;

    .line 30
    .line 31
    invoke-virtual {v5}, Lg/d;->a()[I

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    move v6, v2

    .line 36
    :goto_0
    if-ge v6, v4, :cond_0

    .line 37
    .line 38
    sget-object v7, Lg/c;->g:[I

    .line 39
    .line 40
    aget v8, v7, v6

    .line 41
    .line 42
    aget v9, v5, v6

    .line 43
    .line 44
    const/16 v10, 0x37

    .line 45
    .line 46
    if-lt v9, v10, :cond_1

    .line 47
    .line 48
    const/4 v9, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v9, v2

    .line 51
    :goto_1
    add-int/2addr v8, v9

    .line 52
    aput v8, v7, v6

    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sput v0, Lg/c;->h:I

    .line 64
    .line 65
    if-lez v0, :cond_3

    .line 66
    .line 67
    move v0, v2

    .line 68
    :goto_2
    if-ge v0, v4, :cond_3

    .line 69
    .line 70
    sget-object v1, Lg/c;->g:[I

    .line 71
    .line 72
    aget v3, v1, v0

    .line 73
    .line 74
    mul-int/lit8 v3, v3, 0x64

    .line 75
    .line 76
    sget v5, Lg/c;->h:I

    .line 77
    .line 78
    div-int/2addr v3, v5

    .line 79
    aput v3, v1, v0

    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    sget-boolean v0, La/k;->b:Z

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    .line 95
    .line 96
    const-string v1, "smartChgPct size="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    sget v1, Lg/c;->h:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ","

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :goto_3
    if-ge v2, v4, :cond_4

    .line 112
    .line 113
    const-string v1, " "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    sget-object v1, Lg/c;->g:[I

    .line 119
    .line 120
    aget v1, v1, v2

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    sget-object v1, Lg/c;->a:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d()V
    .locals 0

    .line 1
    return-void
.end method

.method public static e()V
    .locals 0

    .line 1
    return-void
.end method

.method public static f(I)I
    .locals 5

    .line 1
    add-int/lit8 p0, p0, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-lt p0, v1, :cond_0

    .line 7
    .line 8
    move p0, v0

    .line 9
    move v2, p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v0

    .line 12
    :cond_1
    :goto_0
    sget-object v3, Lg/c;->g:[I

    .line 13
    .line 14
    aget v3, v3, p0

    .line 15
    .line 16
    const/16 v4, 0x55

    .line 17
    .line 18
    if-lt v3, v4, :cond_2

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    add-int/lit8 p0, p0, 0x1

    .line 23
    .line 24
    if-lt p0, v1, :cond_1

    .line 25
    .line 26
    move p0, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return v2
.end method

.method public static g(I)Lg/d;
    .locals 5

    .line 1
    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lg/d;

    .line 17
    .line 18
    invoke-virtual {v3}, Lg/d;->b()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-ne v4, p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    :goto_0
    if-nez v3, :cond_2

    .line 27
    .line 28
    new-instance v0, Lg/d;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lg/d;-><init>(I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lg/c;->i:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    return-object v3
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lg/c;
    .locals 2

    .line 1
    const-class v0, Lg/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lg/c;->c:Lg/c;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lg/c;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lg/c;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lg/c;->c:Lg/c;

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
    sget-object p0, Lg/c;->c:Lg/c;
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

.method public static i()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lg/d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static j()V
    .locals 0

    .line 1
    return-void
.end method

.method public static k()V
    .locals 2

    .line 1
    sget-object v0, Lg/c;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static l()V
    .locals 5

    .line 1
    sget-object v0, Lg/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "printSmartChargeInfolist"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    check-cast v3, Lg/d;

    .line 24
    .line 25
    sget-object v4, Lg/c;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3}, Lg/d;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v4, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public static m()V
    .locals 2

    .line 1
    sget-object v0, Lg/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "start_smart_charging_training"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, La/j;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sget-object v0, Lg/c;->f:Lc/e;

    .line 10
    .line 11
    const-string v1, "SMARTCHGPCT"

    .line 12
    .line 13
    sget-object v2, Lg/c;->g:[I

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, p0}, Lc/e;->u(Ljava/lang/String;[II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    sput p0, Lg/c;->h:I

    .line 20
    .line 21
    sget-boolean p0, La/k;->b:Z

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 32
    .line 33
    .line 34
    const-string v1, "smartChgPct size="

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    sget v1, Lg/c;->h:I

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ","

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :goto_0
    const/16 v1, 0x18

    .line 50
    .line 51
    if-ge v0, v1, :cond_0

    .line 52
    .line 53
    const-string v1, " "

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v1, Lg/c;->g:[I

    .line 59
    .line 60
    aget v1, v1, v0

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lg/c;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v0, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public n()V
    .locals 6

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, La/j;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    sget-object v0, Lg/c;->f:Lc/e;

    .line 10
    .line 11
    sget v2, Lg/c;->h:I

    .line 12
    .line 13
    sget-object v3, Lg/c;->g:[I

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    const-string v1, "SMARTCHGPCT"

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v5}, Lc/e;->g(Ljava/lang/String;I[III)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
