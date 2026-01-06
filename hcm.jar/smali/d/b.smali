.class public Ld/b;
.super Ljava/lang/Object;
.source "HcmPrediction.java"


# static fields
.field private static final e:Ljava/lang/String; = "b"

.field private static f:Landroid/content/Context; = null

.field private static g:Ld/b; = null

.field private static h:Lh/h; = null

.field private static i:Lb/d; = null

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Z = false

.field public static p:Z = false

.field private static q:Lh/c;


# instance fields
.field private a:La/d;

.field private b:Lc/d;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/IActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ld/b;->a:La/d;

    .line 6
    .line 7
    iput-object v0, p0, Ld/b;->b:Lc/d;

    .line 8
    .line 9
    iput-object v0, p0, Ld/b;->c:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object v0, p0, Ld/b;->d:Landroid/app/IActivityManager;

    .line 12
    .line 13
    sget-object v0, Ld/b;->e:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "ChargePrediction Start"

    .line 16
    .line 17
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object p1, Ld/b;->f:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Ld/b;->a:La/d;

    .line 27
    .line 28
    invoke-static {p1}, Lh/c;->e(Landroid/content/Context;)Lh/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Ld/b;->q:Lh/c;

    .line 33
    .line 34
    invoke-static {p1}, Lb/d;->d(Landroid/content/Context;)Lb/d;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Ld/b;->i:Lb/d;

    .line 39
    .line 40
    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Ld/b;->b:Lc/d;

    .line 45
    .line 46
    return-void
.end method

.method private a(II)I
    .locals 4

    .line 1
    add-int/lit8 p0, p2, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lc/d;->r:[I

    .line 6
    .line 7
    sget-object v1, Ld/b;->e:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "cal_t_time from ALL-Day buffer in batt_H"

    .line 10
    .line 11
    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lc/d;->s:[I

    .line 16
    .line 17
    sget-object v1, Ld/b;->e:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "cal_t_time from D-Day buffer in batt_H"

    .line 20
    .line 21
    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/16 v1, 0x18

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    if-ge p0, v1, :cond_2

    .line 28
    .line 29
    :goto_1
    if-ge p0, v1, :cond_2

    .line 30
    .line 31
    aget v3, v0, p0

    .line 32
    .line 33
    if-lez v3, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move p0, v2

    .line 41
    move v1, p0

    .line 42
    :goto_2
    if-ne v1, v2, :cond_6

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    if-ne p1, v1, :cond_3

    .line 46
    .line 47
    sget-object v0, Lc/d;->t:[I

    .line 48
    .line 49
    :cond_3
    const/4 v2, 0x0

    .line 50
    :goto_3
    if-gt v2, p2, :cond_6

    .line 51
    .line 52
    aget v3, v0, v2

    .line 53
    .line 54
    if-lez v3, :cond_5

    .line 55
    .line 56
    if-ne p1, v1, :cond_4

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x64

    .line 59
    .line 60
    :cond_4
    return v2

    .line 61
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_6
    return p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ld/b;
    .locals 2

    .line 1
    const-class v0, Ld/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld/b;->g:Ld/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ld/b;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Ld/b;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Ld/b;->g:Ld/b;

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
    sget-object p0, Ld/b;->g:Ld/b;
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

.method private f()V
    .locals 11

    .line 1
    sget v0, Lc/d;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v1, v0, :cond_7

    .line 5
    .line 6
    sget-boolean v0, Ld/b;->j:Z

    .line 7
    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    sget-object v0, Ld/b;->q:Lh/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lh/c;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v2, Lc/d;->l:Lc/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lc/a;->f()[I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {}, La/j;->g()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x18

    .line 27
    .line 28
    rem-int/2addr v3, v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {p0, v5, v3}, Ld/b;->b(II)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 v6, -0x1

    .line 35
    if-ne p0, v6, :cond_0

    .line 36
    .line 37
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "No matched TT time - prediction_model_1(ALL Day)"

    .line 40
    .line 41
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    if-gt v3, p0, :cond_1

    .line 46
    .line 47
    move v4, v3

    .line 48
    :goto_0
    if-ge v4, p0, :cond_4

    .line 49
    .line 50
    aget v6, v2, v4

    .line 51
    .line 52
    add-int/2addr v5, v6

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v6, v3

    .line 57
    move v7, v5

    .line 58
    :goto_1
    if-ge v6, v4, :cond_2

    .line 59
    .line 60
    aget v8, v2, v6

    .line 61
    .line 62
    add-int/2addr v7, v8

    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_2
    if-ge v5, p0, :cond_3

    .line 67
    .line 68
    aget v4, v2, v5

    .line 69
    .line 70
    add-int/2addr v7, v4

    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v5, v7

    .line 75
    :cond_4
    div-int/lit8 v5, v5, 0x64

    .line 76
    .line 77
    sget-object v2, Ld/b;->e:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "c_time:"

    .line 85
    .line 86
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v7, " t_time:"

    .line 93
    .line 94
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v8, " total_usage:"

    .line 101
    .line 102
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v9, " c_battLev:"

    .line 109
    .line 110
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sub-int v4, v0, v5

    .line 124
    .line 125
    const/4 v10, 0x5

    .line 126
    if-ge v4, v10, :cond_5

    .line 127
    .line 128
    const-string v4, "Pre1-Deteced - Should be go the P.S mode"

    .line 129
    .line 130
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    sget-object v0, Ld/b;->i:Lb/d;

    .line 167
    .line 168
    const-string v3, "ver01"

    .line 169
    .line 170
    const/16 v4, 0xa

    .line 171
    .line 172
    const-string v5, "Pre1"

    .line 173
    .line 174
    invoke-virtual {v0, v5, v3, v4, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sput-boolean v1, Ld/b;->j:Z

    .line 178
    .line 179
    const-string p0, "prediction_model_1(ALL Day) start"

    .line 180
    .line 181
    invoke-static {v2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    return-void

    .line 185
    :cond_6
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 186
    .line 187
    const-string v0, "Already predicted^^ - prediction_model_1(ALL Day)"

    .line 188
    .line 189
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_7
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v1, "Stop -NO Trained Data - prediction_model_1(ALL Day) : "

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    sget v1, Lc/d;->v:I

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    sget p0, Lc/d;->v:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-gt v0, p0, :cond_3

    .line 5
    .line 6
    sget-boolean p0, Ld/b;->k:Z

    .line 7
    .line 8
    if-nez p0, :cond_2

    .line 9
    .line 10
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "min:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, La/j;->i()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "hour:"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, La/j;->g()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {p0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, La/j;->g()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    rem-int/lit8 v1, v1, 0x18

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "prediction_model_2(ALL Day) start at : "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {p0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-nez v1, :cond_0

    .line 75
    .line 76
    const/16 v2, 0x17

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 80
    .line 81
    :goto_0
    sget-object v3, Lc/d;->p:[I

    .line 82
    .line 83
    aget v3, v3, v2

    .line 84
    .line 85
    const/16 v4, 0x3c

    .line 86
    .line 87
    if-le v3, v4, :cond_1

    .line 88
    .line 89
    const-string v3, "Pre2-Deteced - Should be go the P.S mode"

    .line 90
    .line 91
    invoke-static {p0, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    const-string v3, "c_time:"

    .line 100
    .line 101
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, " but not enter charged at:"

    .line 108
    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    sget-object v1, Lc/d;->p:[I

    .line 113
    .line 114
    aget v1, v1, v2

    .line 115
    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, "%"

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    sget-object v1, Ld/b;->i:Lb/d;

    .line 129
    .line 130
    const-string v2, "ver01"

    .line 131
    .line 132
    const/16 v3, 0xa

    .line 133
    .line 134
    const-string v4, "Pre2"

    .line 135
    .line 136
    invoke-virtual {v1, v4, v2, v3, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sput-boolean v0, Ld/b;->k:Z

    .line 140
    .line 141
    :cond_1
    return-void

    .line 142
    :cond_2
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 143
    .line 144
    const-string v0, "Already predicted^^ - prediction_model_2(ALL Day)"

    .line 145
    .line 146
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_3
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v1, "Stop -NO Trained Data - for prediction_model_2(ALL Day) : "

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    sget v1, Lc/d;->v:I

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method private h()V
    .locals 10

    .line 1
    sget v0, Lc/d;->w:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-gt v1, v0, :cond_7

    .line 5
    .line 6
    sget-boolean v0, Ld/b;->l:Z

    .line 7
    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    sget-object v0, Ld/b;->q:Lh/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lh/c;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v2, Lc/d;->l:Lc/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lc/a;->g()[I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {}, La/j;->g()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x18

    .line 27
    .line 28
    rem-int/2addr v3, v4

    .line 29
    invoke-virtual {p0, v1, v3}, Ld/b;->b(II)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne p0, v1, :cond_0

    .line 35
    .line 36
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "No matched TT time - prediction_model_3(D Day)"

    .line 39
    .line 40
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    if-gt v3, p0, :cond_1

    .line 46
    .line 47
    move v4, v3

    .line 48
    :goto_0
    if-ge v4, p0, :cond_4

    .line 49
    .line 50
    aget v5, v2, v4

    .line 51
    .line 52
    add-int/2addr v1, v5

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v6, v1

    .line 57
    move v5, v3

    .line 58
    :goto_1
    if-ge v5, v4, :cond_2

    .line 59
    .line 60
    aget v7, v2, v5

    .line 61
    .line 62
    add-int/2addr v6, v7

    .line 63
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_2
    if-ge v1, p0, :cond_3

    .line 67
    .line 68
    aget v4, v2, v1

    .line 69
    .line 70
    add-int/2addr v6, v4

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v1, v6

    .line 75
    :cond_4
    div-int/lit8 v1, v1, 0x64

    .line 76
    .line 77
    sget-object v2, Ld/b;->e:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "c_time:"

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v6, " t_time:"

    .line 93
    .line 94
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v7, " total_usage:"

    .line 101
    .line 102
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v8, " c_battLev:"

    .line 109
    .line 110
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sub-int v4, v0, v1

    .line 124
    .line 125
    const/4 v9, 0x5

    .line 126
    if-ge v4, v9, :cond_5

    .line 127
    .line 128
    const-string v4, "Pre3-Deteced - Should be go the P.S mode"

    .line 129
    .line 130
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    sget-object v0, Ld/b;->i:Lb/d;

    .line 167
    .line 168
    const-string v1, "ver01"

    .line 169
    .line 170
    const/16 v3, 0xa

    .line 171
    .line 172
    const-string v4, "Pre3"

    .line 173
    .line 174
    invoke-virtual {v0, v4, v1, v3, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const/4 p0, 0x1

    .line 178
    sput-boolean p0, Ld/b;->l:Z

    .line 179
    .line 180
    const-string p0, "prediction_model_3(D Day) start"

    .line 181
    .line 182
    invoke-static {v2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    return-void

    .line 186
    :cond_6
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 187
    .line 188
    const-string v0, "Already predicted^^ - prediction_model_3(D Day)"

    .line 189
    .line 190
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_7
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 195
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v1, "Stop -NO Trained Data - for prediction_model_3(D Day) : "

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    sget v1, Lc/d;->w:I

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    const/4 p0, 0x2

    .line 2
    sget v0, Lc/d;->w:I

    .line 3
    .line 4
    if-gt p0, v0, :cond_3

    .line 5
    .line 6
    sget-boolean p0, Ld/b;->m:Z

    .line 7
    .line 8
    if-nez p0, :cond_2

    .line 9
    .line 10
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "min:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, La/j;->i()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "hour:"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, La/j;->g()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, La/j;->g()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    rem-int/lit8 v0, v0, 0x18

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "prediction_model_4(D Day) start at : "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {p0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    const/16 v1, 0x17

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 80
    .line 81
    :goto_0
    sget-object v2, Lc/d;->q:[I

    .line 82
    .line 83
    aget v2, v2, v1

    .line 84
    .line 85
    const/16 v3, 0x3c

    .line 86
    .line 87
    if-le v2, v3, :cond_1

    .line 88
    .line 89
    const-string v2, "Pre4-Deteced - Should be go the P.S mode"

    .line 90
    .line 91
    invoke-static {p0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    const-string v2, "c_time:"

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, " but not enter charged at:"

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    sget-object v0, Lc/d;->q:[I

    .line 113
    .line 114
    aget v0, v0, v1

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, "%"

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    sget-object v0, Ld/b;->i:Lb/d;

    .line 129
    .line 130
    const-string v1, "ver01"

    .line 131
    .line 132
    const/16 v2, 0xa

    .line 133
    .line 134
    const-string v3, "Pre4"

    .line 135
    .line 136
    invoke-virtual {v0, v3, v1, v2, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/4 p0, 0x1

    .line 140
    sput-boolean p0, Ld/b;->m:Z

    .line 141
    .line 142
    :cond_1
    return-void

    .line 143
    :cond_2
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 144
    .line 145
    const-string v0, "Already predicted^^ - prediction_model_4(D Day)"

    .line 146
    .line 147
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_3
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v1, "Stop -NO Trained Data - for prediction_model_4(D Day) : "

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    sget v1, Lc/d;->w:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    sget-boolean p0, Ld/b;->n:Z

    .line 2
    .line 3
    if-nez p0, :cond_2

    .line 4
    .line 5
    sget-object p0, Ld/b;->q:Lh/c;

    .line 6
    .line 7
    invoke-virtual {p0}, Lh/c;->c()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sget-object v0, Lc/d;->u:[I

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0x11

    .line 20
    .line 21
    :goto_0
    if-gt p0, v0, :cond_1

    .line 22
    .line 23
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "Pre5-Deteced - Should be go the P.S mode"

    .line 26
    .line 27
    invoke-static {p0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "PS 5 mode triggered : batt "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Ld/b;->i:Lb/d;

    .line 48
    .line 49
    const-string v2, "ver01"

    .line 50
    .line 51
    const/16 v3, 0xa

    .line 52
    .line 53
    const-string v4, "Pre5"

    .line 54
    .line 55
    invoke-virtual {v1, v4, v2, v3, v0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    sput-boolean v0, Ld/b;->n:Z

    .line 60
    .line 61
    const-string v0, "prediction_model_5(V-Batt) start"

    .line 62
    .line 63
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :cond_2
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 68
    .line 69
    const-string v0, "Already predicted^^ - prediction_model_5"

    .line 70
    .line 71
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private k()V
    .locals 14

    .line 1
    sget v0, Lc/d;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v1, v0, :cond_7

    .line 5
    .line 6
    sget-boolean v0, Ld/b;->o:Z

    .line 7
    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    sget-object v0, Ld/b;->q:Lh/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lh/c;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v2, Lc/d;->l:Lc/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lc/a;->f()[I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {}, La/j;->g()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x18

    .line 27
    .line 28
    rem-int/2addr v3, v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-direct {p0, v5, v3}, Ld/b;->a(II)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 v6, -0x1

    .line 35
    if-ne p0, v6, :cond_0

    .line 36
    .line 37
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "No matched TT time - prediction_model_6(ALL Day)"

    .line 40
    .line 41
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    if-gt v3, p0, :cond_1

    .line 46
    .line 47
    move v4, v3

    .line 48
    :goto_0
    if-ge v4, p0, :cond_4

    .line 49
    .line 50
    aget v6, v2, v4

    .line 51
    .line 52
    add-int/2addr v5, v6

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v6, v3

    .line 57
    move v7, v5

    .line 58
    :goto_1
    if-ge v6, v4, :cond_2

    .line 59
    .line 60
    aget v8, v2, v6

    .line 61
    .line 62
    add-int/2addr v7, v8

    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_2
    if-ge v5, p0, :cond_3

    .line 67
    .line 68
    aget v4, v2, v5

    .line 69
    .line 70
    add-int/2addr v7, v4

    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v5, v7

    .line 75
    :cond_4
    div-int/lit8 v5, v5, 0x64

    .line 76
    .line 77
    sget-object v2, Ld/b;->e:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "c_time:"

    .line 85
    .line 86
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v7, " t_time:"

    .line 93
    .line 94
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v8, " total_usage:"

    .line 101
    .line 102
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v9, " c_battLev:"

    .line 109
    .line 110
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v10, " t_battLev:"

    .line 117
    .line 118
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    sget-object v11, Lc/d;->r:[I

    .line 122
    .line 123
    aget v11, v11, p0

    .line 124
    .line 125
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sub-int v4, v0, v5

    .line 136
    .line 137
    sget-object v11, Lc/d;->r:[I

    .line 138
    .line 139
    aget v11, v11, p0

    .line 140
    .line 141
    sget-object v12, Lc/d;->u:[I

    .line 142
    .line 143
    const/4 v13, 0x6

    .line 144
    aget v12, v12, v13

    .line 145
    .line 146
    add-int/2addr v11, v12

    .line 147
    if-ge v4, v11, :cond_5

    .line 148
    .line 149
    const-string v4, "Pre6-Deteced - Should be go the P.S mode"

    .line 150
    .line 151
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    sget-object v0, Lc/d;->r:[I

    .line 187
    .line 188
    aget p0, v0, p0

    .line 189
    .line 190
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    sget-object v0, Ld/b;->i:Lb/d;

    .line 198
    .line 199
    const-string v3, "ver01"

    .line 200
    .line 201
    const/16 v4, 0xa

    .line 202
    .line 203
    const-string v5, "Pre6"

    .line 204
    .line 205
    invoke-virtual {v0, v5, v3, v4, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sput-boolean v1, Ld/b;->o:Z

    .line 209
    .line 210
    const-string p0, "prediction_model_6(ALL Day) start"

    .line 211
    .line 212
    invoke-static {v2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_5
    return-void

    .line 216
    :cond_6
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 217
    .line 218
    const-string v0, "Already predicted^^ - prediction_model_6(ALL Day)"

    .line 219
    .line 220
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_7
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v1, "Stop -NO Trained Data - for prediction_model_6(ALL Day) : "

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    sget v1, Lc/d;->v:I

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method private l()V
    .locals 14

    .line 1
    sget v0, Lc/d;->w:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-gt v1, v0, :cond_7

    .line 5
    .line 6
    sget-boolean v0, Ld/b;->p:Z

    .line 7
    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    sget-object v0, Ld/b;->q:Lh/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lh/c;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v2, Lc/d;->l:Lc/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lc/a;->g()[I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {}, La/j;->g()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x18

    .line 27
    .line 28
    rem-int/2addr v3, v4

    .line 29
    invoke-direct {p0, v1, v3}, Ld/b;->a(II)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne p0, v1, :cond_0

    .line 35
    .line 36
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "No matched TT time - prediction_model_7(D Day)"

    .line 39
    .line 40
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    div-int/lit8 v1, p0, 0x64

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    if-lez v1, :cond_3

    .line 48
    .line 49
    add-int/lit8 p0, p0, -0x64

    .line 50
    .line 51
    move v1, v3

    .line 52
    move v6, v5

    .line 53
    :goto_0
    if-ge v1, v4, :cond_1

    .line 54
    .line 55
    aget v7, v2, v1

    .line 56
    .line 57
    add-int/2addr v6, v7

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    if-ge v5, p0, :cond_2

    .line 62
    .line 63
    sget-object v1, Lc/d;->l:Lc/a;

    .line 64
    .line 65
    invoke-virtual {v1}, Lc/a;->h()[I

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    aget v1, v1, v5

    .line 70
    .line 71
    add-int/2addr v6, v1

    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    sget-object v1, Lc/d;->t:[I

    .line 76
    .line 77
    sget-object v2, Ld/b;->e:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "t_time D-N ::"

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move v1, v3

    .line 101
    :goto_2
    if-ge v1, p0, :cond_4

    .line 102
    .line 103
    aget v4, v2, v1

    .line 104
    .line 105
    add-int/2addr v5, v4

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    sget-object v1, Lc/d;->s:[I

    .line 110
    .line 111
    sget-object v2, Ld/b;->e:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v6, "t_time D ::"

    .line 119
    .line 120
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    move v6, v5

    .line 134
    :goto_3
    div-int/lit8 v6, v6, 0x64

    .line 135
    .line 136
    sget-object v2, Ld/b;->e:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v5, "c_time:"

    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v7, " t_time:"

    .line 152
    .line 153
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v8, " total_usage:"

    .line 160
    .line 161
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v9, " c_battLev:"

    .line 168
    .line 169
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v10, " t_battLev:"

    .line 176
    .line 177
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    aget v11, v1, p0

    .line 181
    .line 182
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sub-int v4, v0, v6

    .line 193
    .line 194
    aget v11, v1, p0

    .line 195
    .line 196
    sget-object v12, Lc/d;->u:[I

    .line 197
    .line 198
    const/4 v13, 0x7

    .line 199
    aget v12, v12, v13

    .line 200
    .line 201
    add-int/2addr v11, v12

    .line 202
    if-ge v4, v11, :cond_5

    .line 203
    .line 204
    const-string v4, "Pre7-Deteced - Should be go the P.S mode"

    .line 205
    .line 206
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    aget p0, v1, p0

    .line 242
    .line 243
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    sget-object v0, Ld/b;->i:Lb/d;

    .line 251
    .line 252
    const-string v1, "ver01"

    .line 253
    .line 254
    const/16 v3, 0xa

    .line 255
    .line 256
    const-string v4, "Pre7"

    .line 257
    .line 258
    invoke-virtual {v0, v4, v1, v3, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const/4 p0, 0x1

    .line 262
    sput-boolean p0, Ld/b;->p:Z

    .line 263
    .line 264
    const-string p0, "prediction_model_7(D Day) start"

    .line 265
    .line 266
    invoke-static {v2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_5
    return-void

    .line 270
    :cond_6
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 271
    .line 272
    const-string v0, "Already predicted^^ - prediction_model_7(D Day)"

    .line 273
    .line 274
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_7
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 279
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    const-string v1, "Stop -NO Trained Data - for prediction_model_7(D Day) : "

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    sget v1, Lc/d;->w:I

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-void
.end method

.method private n(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ld/b;->l()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_1
    invoke-direct {p0}, Ld/b;->k()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_2
    invoke-direct {p0}, Ld/b;->j()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_3
    invoke-direct {p0}, Ld/b;->i()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_4
    invoke-direct {p0}, Ld/b;->h()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_5
    invoke-direct {p0}, Ld/b;->g()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_6
    invoke-direct {p0}, Ld/b;->f()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public b(II)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lc/d;->p:[I

    .line 4
    .line 5
    sget-object p1, Ld/b;->e:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "cal_t_time from ALL-Day buffer in charging_H"

    .line 8
    .line 9
    invoke-static {p1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p0, Lc/d;->q:[I

    .line 14
    .line 15
    sget-object p1, Ld/b;->e:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "cal_t_time from D-Day buffer in charging_H"

    .line 18
    .line 19
    invoke-static {p1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    move p1, p2

    .line 23
    :goto_1
    const/16 v0, 0x18

    .line 24
    .line 25
    const/16 v1, 0x3c

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    if-ge p1, v0, :cond_2

    .line 29
    .line 30
    aget v0, p0, p1

    .line 31
    .line 32
    if-le v0, v1, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move p1, v2

    .line 40
    move v0, p1

    .line 41
    :goto_2
    if-ne v0, v2, :cond_4

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_3
    if-ge v0, p2, :cond_4

    .line 45
    .line 46
    aget v2, p0, v0

    .line 47
    .line 48
    if-le v2, v1, :cond_3

    .line 49
    .line 50
    return v0

    .line 51
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Clear all status value"

    .line 4
    .line 5
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    sput-boolean p0, Ld/b;->j:Z

    .line 10
    .line 11
    sput-boolean p0, Ld/b;->k:Z

    .line 12
    .line 13
    sput-boolean p0, Ld/b;->l:Z

    .line 14
    .line 15
    sput-boolean p0, Ld/b;->m:Z

    .line 16
    .line 17
    sput-boolean p0, Ld/b;->n:Z

    .line 18
    .line 19
    sput-boolean p0, Ld/b;->o:Z

    .line 20
    .line 21
    sput-boolean p0, Ld/b;->p:Z

    .line 22
    .line 23
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    sget-boolean p0, Ld/b;->j:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    sget-boolean p0, Ld/b;->k:Z

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    sget-boolean p0, Ld/b;->l:Z

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    sget-boolean p0, Ld/b;->m:Z

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    sget-boolean p0, Ld/b;->n:Z

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    sget-boolean p0, Ld/b;->o:Z

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-boolean p0, Ld/b;->p:Z

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "get prev status : false"

    .line 33
    .line 34
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "get prev status : true"

    .line 42
    .line 43
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Ld/b;->i:Lb/d;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lb/d;->p(Z)V

    .line 50
    .line 51
    .line 52
    return v0
.end method

.method public m()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ld/b;->i:Lb/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lb/d;->f()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    check-cast v3, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sget-object v4, Ld/b;->e:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v6, "Run predictor "

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v4, v5}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v3}, Ld/b;->n(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    return-void
.end method
