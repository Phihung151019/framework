.class public Lc/a;
.super Ljava/lang/Object;
.source "BattUsageSlotInfo.java"


# static fields
.field private static final m:Ljava/lang/String; = "a"

.field private static final n:Z = false


# instance fields
.field private final a:I

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:[I

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3c

    .line 5
    .line 6
    iput v0, p0, Lc/a;->a:I

    .line 7
    .line 8
    const/16 v0, 0x18

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    iput-object v1, p0, Lc/a;->b:[I

    .line 13
    .line 14
    new-array v1, v0, [I

    .line 15
    .line 16
    iput-object v1, p0, Lc/a;->c:[I

    .line 17
    .line 18
    new-array v1, v0, [I

    .line 19
    .line 20
    iput-object v1, p0, Lc/a;->d:[I

    .line 21
    .line 22
    new-array v1, v0, [I

    .line 23
    .line 24
    iput-object v1, p0, Lc/a;->e:[I

    .line 25
    .line 26
    new-array v1, v0, [I

    .line 27
    .line 28
    iput-object v1, p0, Lc/a;->f:[I

    .line 29
    .line 30
    new-array v1, v0, [I

    .line 31
    .line 32
    iput-object v1, p0, Lc/a;->g:[I

    .line 33
    .line 34
    new-array v1, v0, [I

    .line 35
    .line 36
    iput-object v1, p0, Lc/a;->h:[I

    .line 37
    .line 38
    new-array v1, v0, [I

    .line 39
    .line 40
    iput-object v1, p0, Lc/a;->i:[I

    .line 41
    .line 42
    new-array v0, v0, [I

    .line 43
    .line 44
    iput-object v0, p0, Lc/a;->j:[I

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lc/a;->k:I

    .line 48
    .line 49
    iput-object p1, p0, Lc/a;->l:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/f;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lc/f;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc/a;->i()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    :goto_0
    sget-object v3, Lc/a;->m:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v5, "Debug buildingAvgBattUsage targetDay : "

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    move v4, v3

    .line 41
    :goto_1
    if-ge v4, v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lc/f;

    .line 48
    .line 49
    sget-object v6, Lc/a;->m:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v5}, Lc/f;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v6, v5}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_1
    add-int/lit8 v4, v1, -0x1

    .line 65
    .line 66
    :goto_2
    if-ltz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lc/f;

    .line 73
    .line 74
    invoke-virtual {v5}, Lc/f;->d()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-ne v5, v2, :cond_2

    .line 79
    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_3
    const/4 v2, 0x0

    .line 87
    if-lt v4, v1, :cond_4

    .line 88
    .line 89
    sget-object p1, Lc/a;->m:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "Error idx : "

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v3, " size : "

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {p1, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    monitor-exit p0

    .line 120
    return-object v2

    .line 121
    :cond_4
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    const/4 v5, -0x1

    .line 127
    move v7, v3

    .line 128
    move v6, v5

    .line 129
    :goto_4
    if-ltz v4, :cond_8

    .line 130
    .line 131
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    check-cast v8, Lc/f;

    .line 136
    .line 137
    invoke-virtual {v8}, Lc/f;->d()I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eq v6, v9, :cond_5

    .line 142
    .line 143
    invoke-virtual {v8}, Lc/f;->d()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 148
    .line 149
    :cond_5
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    const/4 v8, 0x3

    .line 153
    if-lt v7, v8, :cond_7

    .line 154
    .line 155
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1}, Lc/a;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p0, v1, v0}, Lc/a;->b(Ljava/util/ArrayList;I)V

    .line 163
    .line 164
    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 168
    .line 169
    .line 170
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x2

    .line 176
    .line 177
    move v7, v3

    .line 178
    move v6, v5

    .line 179
    :cond_7
    add-int/2addr v4, v5

    .line 180
    goto :goto_4

    .line 181
    :cond_8
    monitor-exit p0

    .line 182
    return-object v2

    .line 183
    :goto_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    throw p1
.end method

.method public declared-synchronized b(Ljava/util/ArrayList;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/f;",
            ">;I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lc/a;->o()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move v6, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v6, 0x7

    .line 18
    if-ne v2, v6, :cond_1

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    add-int/lit8 v6, v2, 0x1

    .line 23
    .line 24
    :goto_0
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "Debug buildingBattUsageLis null"

    .line 29
    .line 30
    invoke-static {v0, v2}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_2
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lc/f;

    .line 43
    .line 44
    invoke-virtual {v7}, Lc/f;->d()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-ne v8, v2, :cond_3

    .line 49
    .line 50
    sget-object v8, Lc/a;->m:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v10, "buildingBattUsageList - piList is matched with dayOfWeek with "

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v8, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v2, v4

    .line 75
    :goto_1
    invoke-virtual {v7}, Lc/f;->d()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-ne v7, v6, :cond_4

    .line 80
    .line 81
    sget-object v7, Lc/a;->m:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v9, "buildingBattUsageList - piList is matched with dayOfWeek_N with "

    .line 89
    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-static {v7, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v6, 0x1

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move v6, v4

    .line 106
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const/4 v8, -0x1

    .line 111
    const-wide v9, 0x7fffffffffffffffL

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    move-wide v10, v9

    .line 117
    move v9, v8

    .line 118
    :goto_3
    if-ge v4, v7, :cond_c

    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    check-cast v12, Lc/f;

    .line 127
    .line 128
    invoke-virtual {v12}, Lc/f;->h()I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    int-to-long v13, v13

    .line 133
    sub-long v10, v13, v10

    .line 134
    .line 135
    invoke-virtual {v12}, Lc/f;->c()I

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    move/from16 p2, v6

    .line 140
    .line 141
    const/16 v16, 0x1

    .line 142
    .line 143
    int-to-long v5, v15

    .line 144
    const/4 v15, 0x2

    .line 145
    if-eq v8, v15, :cond_7

    .line 146
    .line 147
    const/4 v15, 0x4

    .line 148
    if-ne v8, v15, :cond_5

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_5
    move/from16 v18, v2

    .line 152
    .line 153
    move/from16 v17, v3

    .line 154
    .line 155
    :cond_6
    :goto_4
    move/from16 v19, v4

    .line 156
    .line 157
    goto/16 :goto_8

    .line 158
    .line 159
    :cond_7
    :goto_5
    rem-int v8, v9, v3

    .line 160
    .line 161
    sub-int v8, v9, v8

    .line 162
    .line 163
    add-int v15, v8, v3

    .line 164
    .line 165
    add-int/lit8 v15, v15, -0x1

    .line 166
    .line 167
    :goto_6
    const-wide/16 v17, 0x0

    .line 168
    .line 169
    cmp-long v17, v10, v17

    .line 170
    .line 171
    if-lez v17, :cond_5

    .line 172
    .line 173
    move/from16 v18, v2

    .line 174
    .line 175
    move/from16 v17, v3

    .line 176
    .line 177
    int-to-long v2, v9

    .line 178
    add-long/2addr v2, v10

    .line 179
    move-wide/from16 v19, v2

    .line 180
    .line 181
    int-to-long v2, v15

    .line 182
    cmp-long v2, v19, v2

    .line 183
    .line 184
    if-gtz v2, :cond_9

    .line 185
    .line 186
    iget-object v2, v1, Lc/a;->b:[I

    .line 187
    .line 188
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    aget v8, v2, v3

    .line 193
    .line 194
    move-object v15, v2

    .line 195
    move/from16 v19, v3

    .line 196
    .line 197
    int-to-long v2, v8

    .line 198
    add-long/2addr v2, v5

    .line 199
    long-to-int v2, v2

    .line 200
    aput v2, v15, v19

    .line 201
    .line 202
    iget-object v2, v1, Lc/a;->c:[I

    .line 203
    .line 204
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    aget v8, v2, v3

    .line 209
    .line 210
    move-object v15, v2

    .line 211
    move/from16 v19, v3

    .line 212
    .line 213
    int-to-long v2, v8

    .line 214
    add-long/2addr v2, v10

    .line 215
    long-to-int v2, v2

    .line 216
    aput v2, v15, v19

    .line 217
    .line 218
    if-eqz v18, :cond_8

    .line 219
    .line 220
    iget-object v2, v1, Lc/a;->e:[I

    .line 221
    .line 222
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    aget v8, v2, v3

    .line 227
    .line 228
    move-object v15, v2

    .line 229
    move/from16 v19, v3

    .line 230
    .line 231
    int-to-long v2, v8

    .line 232
    add-long/2addr v2, v5

    .line 233
    long-to-int v2, v2

    .line 234
    aput v2, v15, v19

    .line 235
    .line 236
    iget-object v2, v1, Lc/a;->f:[I

    .line 237
    .line 238
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    aget v8, v2, v3

    .line 243
    .line 244
    move-object v15, v2

    .line 245
    move/from16 v19, v3

    .line 246
    .line 247
    int-to-long v2, v8

    .line 248
    add-long/2addr v2, v10

    .line 249
    long-to-int v2, v2

    .line 250
    aput v2, v15, v19

    .line 251
    .line 252
    :cond_8
    if-eqz p2, :cond_6

    .line 253
    .line 254
    iget-object v2, v1, Lc/a;->h:[I

    .line 255
    .line 256
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    aget v8, v2, v3

    .line 261
    .line 262
    move-object v15, v2

    .line 263
    move/from16 v19, v3

    .line 264
    .line 265
    int-to-long v2, v8

    .line 266
    add-long/2addr v2, v5

    .line 267
    long-to-int v2, v2

    .line 268
    aput v2, v15, v19

    .line 269
    .line 270
    iget-object v2, v1, Lc/a;->i:[I

    .line 271
    .line 272
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    aget v5, v2, v3

    .line 277
    .line 278
    int-to-long v5, v5

    .line 279
    add-long/2addr v5, v10

    .line 280
    long-to-int v5, v5

    .line 281
    aput v5, v2, v3

    .line 282
    .line 283
    goto/16 :goto_4

    .line 284
    .line 285
    :cond_9
    sub-int/2addr v15, v9

    .line 286
    add-int/lit8 v15, v15, 0x1

    .line 287
    .line 288
    int-to-long v2, v15

    .line 289
    mul-long v19, v5, v2

    .line 290
    .line 291
    move-wide/from16 v21, v2

    .line 292
    .line 293
    div-long v2, v19, v10

    .line 294
    .line 295
    long-to-int v2, v2

    .line 296
    iget-object v3, v1, Lc/a;->b:[I

    .line 297
    .line 298
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 299
    .line 300
    .line 301
    move-result v19

    .line 302
    aget v20, v3, v19

    .line 303
    .line 304
    add-int v20, v20, v2

    .line 305
    .line 306
    aput v20, v3, v19

    .line 307
    .line 308
    iget-object v3, v1, Lc/a;->c:[I

    .line 309
    .line 310
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 311
    .line 312
    .line 313
    move-result v19

    .line 314
    aget v20, v3, v19

    .line 315
    .line 316
    add-int v20, v20, v15

    .line 317
    .line 318
    aput v20, v3, v19

    .line 319
    .line 320
    if-eqz v18, :cond_a

    .line 321
    .line 322
    iget-object v3, v1, Lc/a;->e:[I

    .line 323
    .line 324
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 325
    .line 326
    .line 327
    move-result v15

    .line 328
    aget v0, v3, v15

    .line 329
    .line 330
    move-object/from16 v20, v3

    .line 331
    .line 332
    move/from16 v19, v4

    .line 333
    .line 334
    int-to-long v3, v0

    .line 335
    add-long/2addr v3, v5

    .line 336
    long-to-int v0, v3

    .line 337
    aput v0, v20, v15

    .line 338
    .line 339
    iget-object v0, v1, Lc/a;->f:[I

    .line 340
    .line 341
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    aget v4, v0, v3

    .line 346
    .line 347
    move v15, v3

    .line 348
    int-to-long v3, v4

    .line 349
    add-long/2addr v3, v10

    .line 350
    long-to-int v3, v3

    .line 351
    aput v3, v0, v15

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_a
    move/from16 v19, v4

    .line 355
    .line 356
    :goto_7
    if-eqz p2, :cond_b

    .line 357
    .line 358
    iget-object v0, v1, Lc/a;->h:[I

    .line 359
    .line 360
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    aget v4, v0, v3

    .line 365
    .line 366
    move v15, v3

    .line 367
    int-to-long v3, v4

    .line 368
    add-long/2addr v3, v5

    .line 369
    long-to-int v3, v3

    .line 370
    aput v3, v0, v15

    .line 371
    .line 372
    iget-object v0, v1, Lc/a;->i:[I

    .line 373
    .line 374
    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    aget v4, v0, v3

    .line 379
    .line 380
    move-object v9, v0

    .line 381
    int-to-long v0, v4

    .line 382
    add-long/2addr v0, v10

    .line 383
    long-to-int v0, v0

    .line 384
    aput v0, v9, v3

    .line 385
    .line 386
    :cond_b
    add-int v8, v8, v17

    .line 387
    .line 388
    rem-int/lit16 v9, v8, 0x5a0

    .line 389
    .line 390
    add-int v3, v9, v17

    .line 391
    .line 392
    add-int/lit8 v15, v3, -0x1

    .line 393
    .line 394
    sub-long v10, v10, v21

    .line 395
    .line 396
    int-to-long v0, v2

    .line 397
    sub-long/2addr v5, v0

    .line 398
    move-object/from16 v1, p0

    .line 399
    .line 400
    move-object/from16 v0, p1

    .line 401
    .line 402
    move v8, v9

    .line 403
    move/from16 v3, v17

    .line 404
    .line 405
    move/from16 v2, v18

    .line 406
    .line 407
    move/from16 v4, v19

    .line 408
    .line 409
    goto/16 :goto_6

    .line 410
    .line 411
    :goto_8
    invoke-virtual {v12}, Lc/f;->h()I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    invoke-static {v0}, La/j;->h(I)I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-virtual {v12}, Lc/f;->h()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    invoke-static {v1}, La/j;->k(I)I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    mul-int/lit8 v0, v0, 0x3c

    .line 428
    .line 429
    add-int v9, v0, v1

    .line 430
    .line 431
    invoke-virtual {v12}, Lc/f;->f()I

    .line 432
    .line 433
    .line 434
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    move-object/from16 v1, p0

    .line 436
    .line 437
    move-object/from16 v0, p1

    .line 438
    .line 439
    move/from16 v6, p2

    .line 440
    .line 441
    move-wide v10, v13

    .line 442
    move/from16 v3, v17

    .line 443
    .line 444
    move/from16 v2, v18

    .line 445
    .line 446
    move/from16 v4, v19

    .line 447
    .line 448
    goto/16 :goto_3

    .line 449
    .line 450
    :cond_c
    monitor-exit p0

    .line 451
    return-void

    .line 452
    :goto_9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    throw v0
.end method

.method public declared-synchronized c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/f;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lc/f;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc/a;->i()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-int/2addr v1, v2

    .line 14
    :goto_0
    sget-object v3, Lc/a;->m:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "Debug targetDay : "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x4

    .line 41
    const/4 v6, 0x0

    .line 42
    if-ge v4, v5, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "PowerInfo size : "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v3, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-object v6

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_1
    add-int/lit8 v3, v4, -0x1

    .line 70
    .line 71
    const/4 v5, -0x1

    .line 72
    move v7, v5

    .line 73
    :goto_1
    if-ltz v3, :cond_5

    .line 74
    .line 75
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Lc/f;

    .line 80
    .line 81
    invoke-virtual {v8}, Lc/f;->d()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-ne v8, v1, :cond_3

    .line 86
    .line 87
    if-gez v7, :cond_2

    .line 88
    .line 89
    add-int/lit8 v5, v3, 0x1

    .line 90
    .line 91
    move v7, v5

    .line 92
    :cond_2
    move v5, v2

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    if-ne v5, v2, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    const/4 v3, 0x0

    .line 101
    :goto_3
    if-ltz v7, :cond_8

    .line 102
    .line 103
    if-lt v7, v4, :cond_6

    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lc/f;

    .line 112
    .line 113
    invoke-virtual {v1}, Lc/f;->h()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    add-int/lit8 v4, v3, 0x1

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lc/f;

    .line 124
    .line 125
    invoke-virtual {v4}, Lc/f;->h()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    add-int/lit8 v6, v7, -0x1

    .line 130
    .line 131
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    check-cast v8, Lc/f;

    .line 136
    .line 137
    invoke-virtual {v8}, Lc/f;->h()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Lc/f;

    .line 146
    .line 147
    invoke-virtual {v7}, Lc/f;->h()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    rem-int/lit16 v10, v5, 0x5a0

    .line 152
    .line 153
    sub-int v14, v5, v10

    .line 154
    .line 155
    sub-int v2, v14, v2

    .line 156
    .line 157
    sub-int/2addr v5, v14

    .line 158
    new-instance v10, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    new-instance v11, Lc/f;

    .line 164
    .line 165
    invoke-virtual {v1}, Lc/f;->f()I

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    invoke-virtual {v1}, Lc/f;->d()I

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    invoke-virtual {v1}, Lc/f;->i()I

    .line 174
    .line 175
    .line 176
    move-result v15

    .line 177
    invoke-virtual {v1}, Lc/f;->a()I

    .line 178
    .line 179
    .line 180
    move-result v16

    .line 181
    invoke-virtual {v1}, Lc/f;->c()I

    .line 182
    .line 183
    .line 184
    move-result v17

    .line 185
    invoke-virtual {v1}, Lc/f;->e()I

    .line 186
    .line 187
    .line 188
    move-result v18

    .line 189
    invoke-virtual {v1}, Lc/f;->g()I

    .line 190
    .line 191
    .line 192
    move-result v19

    .line 193
    invoke-direct/range {v11 .. v19}, Lc/f;-><init>(IIIIIIII)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    new-instance v12, Lc/f;

    .line 200
    .line 201
    invoke-virtual {v4}, Lc/f;->f()I

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    invoke-virtual {v4}, Lc/f;->d()I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    invoke-virtual {v4}, Lc/f;->h()I

    .line 210
    .line 211
    .line 212
    move-result v15

    .line 213
    invoke-virtual {v4}, Lc/f;->i()I

    .line 214
    .line 215
    .line 216
    move-result v16

    .line 217
    invoke-virtual {v4}, Lc/f;->a()I

    .line 218
    .line 219
    .line 220
    move-result v17

    .line 221
    invoke-virtual {v4}, Lc/f;->c()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    int-to-float v1, v1

    .line 226
    int-to-float v11, v5

    .line 227
    mul-float/2addr v1, v11

    .line 228
    add-int/2addr v2, v5

    .line 229
    int-to-float v2, v2

    .line 230
    div-float/2addr v1, v2

    .line 231
    float-to-int v1, v1

    .line 232
    invoke-virtual {v4}, Lc/f;->e()I

    .line 233
    .line 234
    .line 235
    move-result v19

    .line 236
    invoke-virtual {v4}, Lc/f;->g()I

    .line 237
    .line 238
    .line 239
    move-result v20

    .line 240
    move/from16 v18, v1

    .line 241
    .line 242
    invoke-direct/range {v12 .. v20}, Lc/f;-><init>(IIIIIIII)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    add-int/lit8 v3, v3, 0x2

    .line 249
    .line 250
    :goto_4
    if-gt v3, v6, :cond_7

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Lc/f;

    .line 257
    .line 258
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    add-int/lit8 v3, v3, 0x1

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_7
    rem-int/lit16 v0, v9, 0x5a0

    .line 265
    .line 266
    sub-int v14, v9, v0

    .line 267
    .line 268
    add-int/lit8 v0, v14, -0x1

    .line 269
    .line 270
    sub-int v1, v0, v8

    .line 271
    .line 272
    sub-int/2addr v9, v0

    .line 273
    new-instance v11, Lc/f;

    .line 274
    .line 275
    invoke-virtual {v7}, Lc/f;->f()I

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    invoke-virtual {v7}, Lc/f;->d()I

    .line 280
    .line 281
    .line 282
    move-result v13

    .line 283
    invoke-virtual {v7}, Lc/f;->i()I

    .line 284
    .line 285
    .line 286
    move-result v15

    .line 287
    invoke-virtual {v7}, Lc/f;->a()I

    .line 288
    .line 289
    .line 290
    move-result v16

    .line 291
    invoke-virtual {v7}, Lc/f;->c()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    int-to-float v0, v0

    .line 296
    int-to-float v2, v1

    .line 297
    mul-float/2addr v0, v2

    .line 298
    add-int/2addr v1, v9

    .line 299
    int-to-float v1, v1

    .line 300
    div-float/2addr v0, v1

    .line 301
    float-to-int v0, v0

    .line 302
    invoke-virtual {v7}, Lc/f;->e()I

    .line 303
    .line 304
    .line 305
    move-result v18

    .line 306
    invoke-virtual {v7}, Lc/f;->g()I

    .line 307
    .line 308
    .line 309
    move-result v19

    .line 310
    move/from16 v17, v0

    .line 311
    .line 312
    invoke-direct/range {v11 .. v19}, Lc/f;-><init>(IIIIIIII)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .line 317
    .line 318
    monitor-exit p0

    .line 319
    return-object v10

    .line 320
    :cond_8
    :goto_5
    :try_start_2
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    .line 321
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v2, "PowerInfo data Errors, endIdx : "

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v2, " size : "

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    .line 349
    .line 350
    monitor-exit p0

    .line 351
    return-object v6

    .line 352
    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    throw v0
.end method

.method public declared-synchronized d(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/f;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lc/f;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    add-int/lit8 v2, v1, -0x1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lc/f;

    .line 15
    .line 16
    invoke-virtual {v3}, Lc/f;->d()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    move v4, v2

    .line 21
    :goto_0
    const/4 v5, -0x1

    .line 22
    if-ltz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lc/f;

    .line 29
    .line 30
    invoke-virtual {v6}, Lc/f;->d()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eq v7, v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v6}, Lc/f;->d()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v3, v5

    .line 48
    :goto_1
    sget-object v4, Lc/a;->m:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v7, "Debug targetDay : "

    .line 56
    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v4, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x4

    .line 71
    const/4 v7, 0x0

    .line 72
    if-ge v1, v6, :cond_2

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "PowerInfo size : "

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v4, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-object v7

    .line 96
    :cond_2
    move v4, v5

    .line 97
    :goto_2
    if-ltz v2, :cond_6

    .line 98
    .line 99
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lc/f;

    .line 104
    .line 105
    invoke-virtual {v6}, Lc/f;->d()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    const/4 v8, 0x1

    .line 110
    if-ne v6, v3, :cond_4

    .line 111
    .line 112
    if-gez v4, :cond_3

    .line 113
    .line 114
    add-int/lit8 v4, v2, 0x1

    .line 115
    .line 116
    :cond_3
    move v5, v8

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    if-ne v5, v8, :cond_5

    .line 119
    .line 120
    :goto_3
    move v10, v2

    .line 121
    goto :goto_5

    .line 122
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    const/4 v2, 0x0

    .line 126
    goto :goto_3

    .line 127
    :goto_5
    if-ltz v4, :cond_9

    .line 128
    .line 129
    if-lt v4, v1, :cond_7

    .line 130
    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_7
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lc/f;

    .line 138
    .line 139
    invoke-virtual {v1}, Lc/f;->h()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    add-int/lit8 v5, v10, 0x1

    .line 144
    .line 145
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    move-object v11, v5

    .line 150
    check-cast v11, Lc/f;

    .line 151
    .line 152
    invoke-virtual {v11}, Lc/f;->h()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    add-int/lit8 v12, v4, -0x1

    .line 157
    .line 158
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Lc/f;

    .line 163
    .line 164
    invoke-virtual {v6}, Lc/f;->h()I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    move-object v14, v4

    .line 173
    check-cast v14, Lc/f;

    .line 174
    .line 175
    invoke-virtual {v14}, Lc/f;->h()I

    .line 176
    .line 177
    .line 178
    move-result v15

    .line 179
    rem-int/lit16 v4, v5, 0x5a0

    .line 180
    .line 181
    sub-int v4, v5, v4

    .line 182
    .line 183
    sub-int v16, v4, v2

    .line 184
    .line 185
    sub-int/2addr v5, v4

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    move-object v6, v1

    .line 192
    new-instance v1, Lc/f;

    .line 193
    .line 194
    move-object v7, v2

    .line 195
    invoke-virtual {v6}, Lc/f;->f()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    move v8, v5

    .line 200
    invoke-virtual {v6}, Lc/f;->i()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    move-object v9, v6

    .line 205
    invoke-virtual {v9}, Lc/f;->a()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    move-object/from16 v17, v7

    .line 210
    .line 211
    invoke-virtual {v9}, Lc/f;->c()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    move/from16 v18, v8

    .line 216
    .line 217
    invoke-virtual {v9}, Lc/f;->e()I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    invoke-virtual {v9}, Lc/f;->g()I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    move-object/from16 v19, v17

    .line 226
    .line 227
    move-object/from16 v17, v11

    .line 228
    .line 229
    move-object/from16 v11, v19

    .line 230
    .line 231
    move/from16 v19, v10

    .line 232
    .line 233
    move/from16 v10, v18

    .line 234
    .line 235
    invoke-direct/range {v1 .. v9}, Lc/f;-><init>(IIIIIIII)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    new-instance v20, Lc/f;

    .line 242
    .line 243
    invoke-virtual/range {v17 .. v17}, Lc/f;->f()I

    .line 244
    .line 245
    .line 246
    move-result v21

    .line 247
    invoke-virtual/range {v17 .. v17}, Lc/f;->d()I

    .line 248
    .line 249
    .line 250
    move-result v22

    .line 251
    invoke-virtual/range {v17 .. v17}, Lc/f;->h()I

    .line 252
    .line 253
    .line 254
    move-result v23

    .line 255
    invoke-virtual/range {v17 .. v17}, Lc/f;->i()I

    .line 256
    .line 257
    .line 258
    move-result v24

    .line 259
    invoke-virtual/range {v17 .. v17}, Lc/f;->a()I

    .line 260
    .line 261
    .line 262
    move-result v25

    .line 263
    invoke-virtual/range {v17 .. v17}, Lc/f;->c()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    int-to-float v1, v1

    .line 268
    int-to-float v2, v10

    .line 269
    mul-float/2addr v1, v2

    .line 270
    add-int v2, v16, v10

    .line 271
    .line 272
    int-to-float v2, v2

    .line 273
    div-float/2addr v1, v2

    .line 274
    float-to-int v1, v1

    .line 275
    invoke-virtual/range {v17 .. v17}, Lc/f;->e()I

    .line 276
    .line 277
    .line 278
    move-result v27

    .line 279
    invoke-virtual/range {v17 .. v17}, Lc/f;->g()I

    .line 280
    .line 281
    .line 282
    move-result v28

    .line 283
    move/from16 v26, v1

    .line 284
    .line 285
    invoke-direct/range {v20 .. v28}, Lc/f;-><init>(IIIIIIII)V

    .line 286
    .line 287
    .line 288
    move-object/from16 v1, v20

    .line 289
    .line 290
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    add-int/lit8 v10, v19, 0x2

    .line 294
    .line 295
    :goto_6
    if-gt v10, v12, :cond_8

    .line 296
    .line 297
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    check-cast v1, Lc/f;

    .line 302
    .line 303
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    add-int/lit8 v10, v10, 0x1

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_8
    rem-int/lit16 v0, v15, 0x5a0

    .line 310
    .line 311
    sub-int v4, v15, v0

    .line 312
    .line 313
    add-int/lit8 v0, v4, -0x1

    .line 314
    .line 315
    sub-int v1, v0, v13

    .line 316
    .line 317
    sub-int/2addr v15, v0

    .line 318
    new-instance v0, Lc/f;

    .line 319
    .line 320
    invoke-virtual {v14}, Lc/f;->f()I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-virtual {v14}, Lc/f;->d()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    invoke-virtual {v14}, Lc/f;->i()I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    invoke-virtual {v14}, Lc/f;->a()I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    invoke-virtual {v14}, Lc/f;->c()I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    int-to-float v7, v7

    .line 341
    int-to-float v8, v1

    .line 342
    mul-float/2addr v7, v8

    .line 343
    add-int/2addr v1, v15

    .line 344
    int-to-float v1, v1

    .line 345
    div-float/2addr v7, v1

    .line 346
    float-to-int v7, v7

    .line 347
    invoke-virtual {v14}, Lc/f;->e()I

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    invoke-virtual {v14}, Lc/f;->g()I

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    move-object v1, v0

    .line 356
    invoke-direct/range {v1 .. v9}, Lc/f;-><init>(IIIIIIII)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .line 361
    .line 362
    monitor-exit p0

    .line 363
    return-object v11

    .line 364
    :cond_9
    :goto_7
    :try_start_2
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    .line 365
    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    const-string v3, "PowerInfo data Errors, endIdx : "

    .line 372
    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v3, " size : "

    .line 380
    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    .line 393
    .line 394
    monitor-exit p0

    .line 395
    return-object v7

    .line 396
    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    throw v0
.end method

.method public declared-synchronized e()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    const/high16 v2, 0x42700000    # 60.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0x18

    .line 8
    .line 9
    if-ge v1, v4, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v4, p0, Lc/a;->c:[I

    .line 12
    .line 13
    aget v4, v4, v1

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lc/a;->b:[I

    .line 18
    .line 19
    aget v3, v3, v1

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    int-to-float v4, v4

    .line 23
    div-float/2addr v3, v4

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_6

    .line 27
    :cond_0
    :goto_1
    iget-object v4, p0, Lc/a;->d:[I

    .line 28
    .line 29
    mul-float/2addr v3, v2

    .line 30
    float-to-int v2, v3

    .line 31
    aput v2, v4, v1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v0

    .line 37
    :goto_2
    if-ge v1, v4, :cond_3

    .line 38
    .line 39
    iget-object v5, p0, Lc/a;->f:[I

    .line 40
    .line 41
    aget v5, v5, v1

    .line 42
    .line 43
    if-lez v5, :cond_2

    .line 44
    .line 45
    iget-object v6, p0, Lc/a;->e:[I

    .line 46
    .line 47
    aget v6, v6, v1

    .line 48
    .line 49
    int-to-float v6, v6

    .line 50
    int-to-float v5, v5

    .line 51
    div-float/2addr v6, v5

    .line 52
    goto :goto_3

    .line 53
    :cond_2
    move v6, v3

    .line 54
    :goto_3
    iget-object v5, p0, Lc/a;->g:[I

    .line 55
    .line 56
    mul-float/2addr v6, v2

    .line 57
    float-to-int v6, v6

    .line 58
    aput v6, v5, v1

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_4
    if-ge v0, v4, :cond_5

    .line 64
    .line 65
    iget-object v1, p0, Lc/a;->i:[I

    .line 66
    .line 67
    aget v1, v1, v0

    .line 68
    .line 69
    if-lez v1, :cond_4

    .line 70
    .line 71
    iget-object v5, p0, Lc/a;->h:[I

    .line 72
    .line 73
    aget v5, v5, v0

    .line 74
    .line 75
    int-to-float v5, v5

    .line 76
    int-to-float v1, v1

    .line 77
    div-float/2addr v5, v1

    .line 78
    goto :goto_5

    .line 79
    :cond_4
    move v5, v3

    .line 80
    :goto_5
    iget-object v1, p0, Lc/a;->j:[I

    .line 81
    .line 82
    mul-float/2addr v5, v2

    .line 83
    float-to-int v5, v5

    .line 84
    aput v5, v1, v0

    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw v0

    .line 91
    :cond_5
    monitor-exit p0

    .line 92
    return-void
.end method

.method public f()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->d:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public g()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->g:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public h()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->j:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public i()I
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x7

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public j()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->c:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public k()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->f:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public l()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->i:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public m(I)I
    .locals 0

    .line 1
    rem-int/lit8 p0, p1, 0x3c

    .line 2
    .line 3
    sub-int/2addr p1, p0

    .line 4
    div-int/lit8 p1, p1, 0x3c

    .line 5
    .line 6
    return p1
.end method

.method public n()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public o()I
    .locals 0

    .line 1
    const/16 p0, 0x3c

    .line 2
    .line 3
    return p0
.end method

.method public p()I
    .locals 0

    .line 1
    iget p0, p0, Lc/a;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public q()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->b:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public r()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->e:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public s()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->h:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public declared-synchronized t()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    const/16 v2, 0x18

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lc/a;->b:[I

    .line 9
    .line 10
    aput v0, v2, v1

    .line 11
    .line 12
    iget-object v2, p0, Lc/a;->c:[I

    .line 13
    .line 14
    aput v0, v2, v1

    .line 15
    .line 16
    iget-object v2, p0, Lc/a;->d:[I

    .line 17
    .line 18
    aput v0, v2, v1

    .line 19
    .line 20
    iget-object v2, p0, Lc/a;->e:[I

    .line 21
    .line 22
    aput v0, v2, v1

    .line 23
    .line 24
    iget-object v2, p0, Lc/a;->f:[I

    .line 25
    .line 26
    aput v0, v2, v1

    .line 27
    .line 28
    iget-object v2, p0, Lc/a;->g:[I

    .line 29
    .line 30
    aput v0, v2, v1

    .line 31
    .line 32
    iget-object v2, p0, Lc/a;->h:[I

    .line 33
    .line 34
    aput v0, v2, v1

    .line 35
    .line 36
    iget-object v2, p0, Lc/a;->i:[I

    .line 37
    .line 38
    aput v0, v2, v1

    .line 39
    .line 40
    iget-object v2, p0, Lc/a;->j:[I

    .line 41
    .line 42
    aput v0, v2, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0

    .line 50
    :cond_0
    monitor-exit p0

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BattUsageSlotInfo  name ="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public declared-synchronized u()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "Print "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " avgUsage"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    move v1, v0

    .line 35
    :goto_0
    const/16 v2, 0x18

    .line 36
    .line 37
    if-ge v1, v2, :cond_0

    .line 38
    .line 39
    sget-object v2, Lc/a;->m:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "avgUsage["

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 52
    .line 53
    const-string v5, "%02d"

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, "] = "

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lc/a;->d:[I

    .line 76
    .line 77
    aget v4, v4, v1

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_0
    sget-object v1, Lc/a;->m:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "Print "

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v4, " avgUsageByDay"

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move v1, v0

    .line 127
    :goto_1
    if-ge v1, v2, :cond_1

    .line 128
    .line 129
    sget-object v3, Lc/a;->m:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v5, "avgUsageByDay["

    .line 137
    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 142
    .line 143
    const-string v6, "%02d"

    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v5, "] = "

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v5, p0, Lc/a;->g:[I

    .line 166
    .line 167
    aget v5, v5, v1

    .line 168
    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_1
    sget-object v1, Lc/a;->m:Ljava/lang/String;

    .line 183
    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v4, "Print "

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v4, " avgUsageByDay_N"

    .line 202
    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-static {v1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_2
    if-ge v0, v2, :cond_2

    .line 214
    .line 215
    sget-object v1, Lc/a;->m:Ljava/lang/String;

    .line 216
    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v4, "avgUsageByDay_N["

    .line 223
    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 228
    .line 229
    const-string v5, "%02d"

    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v4, "] = "

    .line 247
    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v4, p0, Lc/a;->j:[I

    .line 252
    .line 253
    aget v4, v4, v0

    .line 254
    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-static {v1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .line 264
    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_2
    monitor-exit p0

    .line 269
    return-void

    .line 270
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    throw v0
.end method

.method public declared-synchronized v()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "Print "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " Batt Usage"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    const/16 v1, 0x18

    .line 35
    .line 36
    if-ge v0, v1, :cond_0

    .line 37
    .line 38
    sget-object v1, Lc/a;->m:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "usage["

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    const-string v4, "%02d"

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "] = "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lc/a;->b:[I

    .line 75
    .line 76
    aget v3, v3, v0

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/a;->k:I

    .line 2
    .line 3
    return-void
.end method
