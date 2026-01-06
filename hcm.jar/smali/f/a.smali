.class public Lf/a;
.super Ljava/lang/Object;
.source "QfinderEvaluate.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:La/d;

.field private static c:Lf/a;

.field private static d:Lc/d;

.field private static e:La/f;

.field private static f:Landroid/content/Context;


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
    sput-object p0, Lf/a;->b:La/d;

    .line 9
    .line 10
    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sput-object p0, Lf/a;->d:Lc/d;

    .line 15
    .line 16
    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sput-object p0, Lf/a;->e:La/f;

    .line 21
    .line 22
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lf/a;
    .locals 2

    .line 1
    const-class v0, Lf/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lf/a;->c:Lf/a;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lf/a;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lf/a;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lf/a;->c:Lf/a;

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
    sget-object p0, Lf/a;->c:Lf/a;
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

.method public static b(IIII)V
    .locals 3

    .line 1
    sget-object v0, Lf/a;->e:La/f;

    const-string v1, "QFEM"

    const-string v2, "ph"

    invoke-virtual {v0, v1, v2}, La/f;->f(Ljava/lang/String;Ljava/lang/String;)La/e;

    move-result-object v0

    .line 2
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p0}, La/e;->b(Ljava/lang/String;I)V

    .line 3
    const-string p0, "CTIME"

    invoke-virtual {v0, p0, p1}, La/e;->b(Ljava/lang/String;I)V

    .line 4
    const-string p0, "ETIME"

    invoke-virtual {v0, p0, p2}, La/e;->b(Ljava/lang/String;I)V

    .line 5
    const-string p0, "DATE"

    invoke-virtual {v0, p0, p3}, La/e;->b(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0}, La/e;->e()V

    return-void
.end method

.method public static c()V
    .locals 6

    .line 1
    sget-object v0, Lf/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "* Qfinder_evaluation_start: start"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lf/a;->d:Lc/d;

    .line 9
    .line 10
    invoke-virtual {v1}, Lc/d;->c()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object v1, Lf/a;->d:Lc/d;

    .line 17
    .line 18
    invoke-virtual {v1}, Lc/d;->B()V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v1, Lf/a;->d:Lc/d;

    .line 22
    .line 23
    invoke-virtual {v1}, Lc/d;->z()[I

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "the date : "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v3, Lf/a;->d:Lc/d;

    .line 38
    .line 39
    invoke-virtual {v3}, Lc/d;->c()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "best all idx : "

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    sget-object v3, Lf/a;->d:Lc/d;

    .line 64
    .line 65
    invoke-virtual {v3}, Lc/d;->a()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "best the date idx : "

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    sget-object v3, Lf/a;->d:Lc/d;

    .line 90
    .line 91
    invoke-virtual {v3}, Lc/d;->b()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lf/a;->d:Lc/d;

    .line 106
    .line 107
    invoke-virtual {v0}, Lc/d;->a()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    sget-object v2, Lf/a;->d:Lc/d;

    .line 112
    .line 113
    invoke-virtual {v2}, Lc/d;->b()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    const/4 v3, -0x1

    .line 118
    if-eq v0, v3, :cond_5

    .line 119
    .line 120
    aget v4, v1, v0

    .line 121
    .line 122
    const/4 v5, 0x5

    .line 123
    if-eq v4, v3, :cond_2

    .line 124
    .line 125
    if-gt v4, v5, :cond_2

    .line 126
    .line 127
    if-nez v4, :cond_1

    .line 128
    .line 129
    const/4 v4, 0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    const/4 v4, 0x2

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    const/4 v4, 0x0

    .line 134
    :goto_0
    if-eq v2, v3, :cond_4

    .line 135
    .line 136
    if-nez v4, :cond_4

    .line 137
    .line 138
    aget v1, v1, v2

    .line 139
    .line 140
    if-eq v1, v3, :cond_4

    .line 141
    .line 142
    if-gt v1, v5, :cond_4

    .line 143
    .line 144
    if-nez v1, :cond_3

    .line 145
    .line 146
    const/4 v4, 0x3

    .line 147
    goto :goto_1

    .line 148
    :cond_3
    const/4 v4, 0x4

    .line 149
    :cond_4
    :goto_1
    sget-object v1, Lf/a;->d:Lc/d;

    .line 150
    .line 151
    invoke-virtual {v1}, Lc/d;->c()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-static {v4, v2, v0, v1}, Lf/a;->b(IIII)V

    .line 156
    .line 157
    .line 158
    :cond_5
    return-void
.end method
