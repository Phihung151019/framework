.class public Lb/d;
.super Lb/a;
.source "PredictionController.java"


# static fields
.field private static final A:I = 0x7

.field private static final B:J = 0x36ee80L

.field private static final C:Ljava/lang/Runnable;

.field private static final d:Ljava/lang/String; = "d"

.field private static e:Lh/c; = null

.field private static f:Landroid/content/Context; = null

.field private static g:Landroid/os/Handler; = null

.field private static h:Lb/b; = null

.field private static i:La/f; = null

.field private static j:Lb/d; = null

.field private static k:Lc/e; = null

.field private static l:La/d; = null

.field private static m:Landroid/telephony/TelephonyManager; = null

.field private static n:La/b; = null

.field private static o:I = 0x0

.field private static p:Z = true

.field private static q:Ljava/lang/String; = "None"

.field private static r:La/i; = null

.field private static s:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:I = 0x1

.field private static final v:I = 0x2

.field private static final w:I = 0x3

.field private static final x:I = 0x4

.field private static final y:I = 0x5

.field private static final z:I = 0x6


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb/d;->s:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lb/d;->t:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Lb/c;

    .line 16
    .line 17
    invoke-direct {v0}, Lb/c;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lb/d;->C:Ljava/lang/Runnable;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb/d;->c:Ljava/util/HashMap;

    .line 10
    .line 11
    sget-object v0, Lb/d;->d:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "PredictionController Start"

    .line 14
    .line 15
    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lb/d;->l:La/d;

    .line 23
    .line 24
    invoke-static {p1}, Lc/e;->r(Landroid/content/Context;)Lc/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lb/d;->k:Lc/e;

    .line 29
    .line 30
    invoke-static {p1}, Lh/c;->e(Landroid/content/Context;)Lh/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lb/d;->e:Lh/c;

    .line 35
    .line 36
    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lb/d;->i:La/f;

    .line 41
    .line 42
    invoke-static {p1}, Lb/b;->a(Landroid/content/Context;)Lb/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lb/d;->h:Lb/b;

    .line 47
    .line 48
    invoke-static {p1}, La/i;->p(Landroid/content/Context;)La/i;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lb/d;->r:La/i;

    .line 53
    .line 54
    const-string v0, "phone"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 61
    .line 62
    sput-object p1, Lb/d;->m:Landroid/telephony/TelephonyManager;

    .line 63
    .line 64
    invoke-static {}, La/b;->b()La/b;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sput-object p1, Lb/d;->n:La/b;

    .line 69
    .line 70
    invoke-direct {p0}, Lb/d;->g()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lb/d;->k()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method static bridge synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb/d;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lb/d;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lb/d;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lb/d;
    .locals 2

    .line 1
    const-class v0, Lb/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lb/d;->j:Lb/d;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lb/d;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lb/d;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lb/d;->j:Lb/d;

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
    sget-object p0, Lb/d;->j:Lb/d;
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

.method public static declared-synchronized e(Landroid/content/Context;Landroid/os/Looper;)Lb/d;
    .locals 2

    .line 1
    const-class v0, Lb/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lb/d;->j:Lb/d;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lb/d;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lb/d;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lb/d;->j:Lb/d;

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
    sget-object p0, Lb/d;->g:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    new-instance p0, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    sput-object p0, Lb/d;->g:Landroid/os/Handler;

    .line 28
    .line 29
    :cond_1
    sget-object p0, Lb/d;->j:Lb/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method private g()V
    .locals 1

    .line 1
    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v0, 0x7

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method private j()V
    .locals 15

    .line 1
    iget-object v0, p0, Lb/d;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lb/d;->d:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "prediction list is null "

    .line 8
    .line 9
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object p0, Lb/d;->d:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "prediction list is empty "

    .line 22
    .line 23
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    sget-object v0, Lb/d;->i:La/f;

    .line 28
    .line 29
    const-string v1, "PSPR"

    .line 30
    .line 31
    const-string v2, "ph"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, La/f;->f(Ljava/lang/String;Ljava/lang/String;)La/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lb/d;->c:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x1

    .line 48
    move v3, v2

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    iget-object v5, p0, Lb/d;->c:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lb/e;

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v6, "NAME"

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v7, "VER"

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v8, "ACT"

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v9, "ATIME"

    .line 126
    .line 127
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v10, "ABATT"

    .line 143
    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    new-instance v10, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v11, "ARES"

    .line 160
    .line 161
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    new-instance v11, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v12, "DTIME"

    .line 177
    .line 178
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    new-instance v12, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v13, "DBATT"

    .line 194
    .line 195
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    new-instance v13, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v14, "DRES"

    .line 211
    .line 212
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-virtual {v4}, Lb/e;->h()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    invoke-virtual {v0, v5, v14}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Lb/e;->i()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v0, v6, v5}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Lb/e;->a()I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    invoke-virtual {v0, v7, v5}, La/e;->b(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Lb/e;->d()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    invoke-virtual {v0, v8, v5}, La/e;->b(Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Lb/e;->b()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    invoke-virtual {v0, v9, v5}, La/e;->b(Ljava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Lb/e;->c()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-virtual {v0, v10, v5}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Lb/e;->g()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-virtual {v0, v11, v5}, La/e;->b(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Lb/e;->e()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    invoke-virtual {v0, v12, v5}, La/e;->b(Ljava/lang/String;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Lb/e;->f()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {v0, v13, v4}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    add-int/2addr v3, v2

    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_2
    invoke-virtual {v0}, La/e;->e()V

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method private k()V
    .locals 6

    .line 1
    sget-object p0, Lb/d;->n:La/b;

    .line 2
    .line 3
    invoke-virtual {p0}, La/b;->a()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    sput p0, Lb/d;->o:I

    .line 8
    .line 9
    sget-object p0, Lb/d;->d:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "HCM Level : "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    sget v1, Lb/d;->o:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    move v2, v1

    .line 41
    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    check-cast v3, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sget v4, Lb/d;->o:I

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    shl-int/2addr v5, v3

    .line 59
    and-int/2addr v4, v5

    .line 60
    if-lez v4, :cond_0

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v5, "Pre"

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    sget-object v4, Lb/d;->s:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    sget-object p0, Lb/d;->s:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :goto_1
    if-ge v1, v0, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    check-cast v2, Ljava/lang/String;

    .line 100
    .line 101
    sget-object v3, Lb/d;->d:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v5, "Enable Function : "

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v3, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    return-void
.end method

.method public static l()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lb/d;->p:Z

    .line 3
    .line 4
    sget-object v0, Lb/d;->d:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "set sendIpcToAppFlag = "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-boolean v2, Lb/d;->p:Z

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lb/d;->g:Landroid/os/Handler;

    .line 29
    .line 30
    sget-object v1, Lb/d;->C:Ljava/lang/Runnable;

    .line 31
    .line 32
    const-wide/32 v2, 0x36ee80

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public f()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public i(I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lb/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "try releasePrediction"

    .line 6
    .line 7
    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lb/d;->h()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v0, "blocked releasePrediction"

    .line 18
    .line 19
    invoke-static {v1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    invoke-static {}, La/i;->q()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v4, 0x2

    .line 28
    const-string v5, "Pre"

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-ne v2, v4, :cond_1

    .line 32
    .line 33
    invoke-static {}, La/i;->o()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v2, v6, :cond_1

    .line 38
    .line 39
    sget-object v2, Lb/d;->l:La/d;

    .line 40
    .line 41
    const-string v4, "Intent send!! Disable power save mode."

    .line 42
    .line 43
    invoke-virtual {v2, v5, v4}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lb/d;->o(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v2, v0, Lb/d;->c:Ljava/util/HashMap;

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    const-string v0, "prediction list is null "

    .line 57
    .line 58
    invoke-static {v1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v3

    .line 62
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    const-string v0, "prediction list is empty "

    .line 69
    .line 70
    invoke-static {v1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v3

    .line 74
    :cond_3
    invoke-static {}, La/j;->i()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sget-object v2, Lb/d;->e:Lh/c;

    .line 79
    .line 80
    invoke-virtual {v2}, Lh/c;->c()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget-object v3, v0, Lb/d;->c:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/String;

    .line 105
    .line 106
    iget-object v7, v0, Lb/d;->c:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lb/e;

    .line 113
    .line 114
    invoke-virtual {v7, v1}, Lb/e;->p(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v2}, Lb/e;->n(I)V

    .line 118
    .line 119
    .line 120
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v7, v8}, Lb/e;->o(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object v8, Lb/d;->s:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v7}, Lb/e;->h()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_4

    .line 138
    .line 139
    sget-object v8, Lb/d;->d:Ljava/lang/String;

    .line 140
    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v10, "Disable power save mode with "

    .line 147
    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Lb/e;->h()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-static {v8, v7}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v8, "releasePrediction : "

    .line 171
    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    sget-object v7, Lb/d;->d:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v7, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object v7, Lb/d;->l:La/d;

    .line 188
    .line 189
    invoke-virtual {v7, v5, v4}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_5
    sget-object v8, Lb/d;->k:Lc/e;

    .line 194
    .line 195
    const-string v14, ""

    .line 196
    .line 197
    const/4 v15, 0x2

    .line 198
    const-string v9, ""

    .line 199
    .line 200
    const-string v10, ""

    .line 201
    .line 202
    const/4 v11, 0x0

    .line 203
    const/4 v12, 0x0

    .line 204
    const/4 v13, 0x0

    .line 205
    invoke-virtual/range {v8 .. v15}, Lc/e;->d(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    invoke-direct {v0}, Lb/d;->j()V

    .line 209
    .line 210
    .line 211
    iget-object v0, v0, Lb/d;->c:Ljava/util/HashMap;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 214
    .line 215
    .line 216
    const-string v0, "Release"

    .line 217
    .line 218
    sput-object v0, Lb/d;->q:Ljava/lang/String;

    .line 219
    .line 220
    sget-object v1, Lb/d;->r:La/i;

    .line 221
    .line 222
    move/from16 v2, p1

    .line 223
    .line 224
    invoke-virtual {v1, v0, v2}, La/i;->u(Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    return v6
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, La/j;->i()I

    move-result v3

    .line 2
    sget-object v0, Lb/d;->e:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v4

    .line 3
    invoke-static {}, Lb/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lb/d;->d:Ljava/lang/String;

    const-string p1, "blocked setPrediction"

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lb/e;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lb/e;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lb/d;->c:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lb/e;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lb/d;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Alread have prediction : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lb/e;->h()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lb/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lb/e;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Lb/d;->r:La/i;

    invoke-virtual {p1}, La/i;->r()Z

    move-result p1

    const-string p2, "Pre"

    if-nez p1, :cond_3

    .line 11
    invoke-static {}, La/i;->o()I

    move-result p1

    if-lez p1, :cond_3

    sget-object p1, Lb/d;->s:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Intent send!! Enable power save mode with "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    sget-object p4, Lb/d;->l:La/d;

    invoke-virtual {p4, p2, p1}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p4, Lb/d;->d:Ljava/lang/String;

    invoke-static {p4, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lb/d;->o(Z)V

    goto :goto_1

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent skip!! Enable power save mode with "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    sget-object p1, Lb/d;->l:La/d;

    invoke-virtual {p1, p2, p0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setPrediction : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    sget-object p1, Lb/d;->l:La/d;

    invoke-virtual {p1, p2, p0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object p1, Lb/d;->d:Ljava/lang/String;

    invoke-static {p1, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lb/d;->k:Lc/e;

    const/4 v7, 0x3

    move-object v6, v5

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lc/e;->d(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 23
    sput-object v1, Lb/d;->q:Ljava/lang/String;

    .line 24
    sget-object p0, Lb/d;->r:La/i;

    invoke-virtual {p0, v1, v5}, La/i;->u(Ljava/lang/String;I)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    sget-object v0, Lb/d;->k:Lc/e;

    .line 2
    .line 3
    iget-object p0, p0, Lb/d;->c:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lc/e;->s(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 1
    sget-object p0, Lb/d;->h:Lb/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lb/b;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    sget-object p1, Lb/d;->r:La/i;

    .line 5
    .line 6
    invoke-virtual {p1}, La/i;->r()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    invoke-static {}, La/i;->o()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lb/d;->h:Lb/b;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lb/b;->c(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget-object p1, Lb/d;->r:La/i;

    .line 25
    .line 26
    invoke-virtual {p1}, La/i;->r()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, p0, :cond_1

    .line 31
    .line 32
    invoke-static {}, La/i;->o()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-lez p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Lb/d;->h:Lb/b;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lb/b;->c(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
