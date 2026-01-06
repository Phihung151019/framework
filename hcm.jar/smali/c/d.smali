.class public Lc/d;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b;
    }
.end annotation


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field private static C:I = 0x0

.field private static D:I = 0x0

.field private static E:I = 0x0

.field private static F:I = 0x0

.field private static G:I = 0x0

.field private static H:I = 0x0

.field private static I:I = 0x0

.field private static J:[I = null

.field private static K:[I = null

.field private static L:[I = null

.field private static M:[I = null

.field private static N:[I = null

.field private static O:[[I = null

.field private static P:[I = null

.field private static Q:[I = null

.field private static R:[[I = null

.field private static S:Z = false

.field private static T:[I = null

.field private static U:[I = null

.field private static V:[I = null

.field private static W:I = 0x0

.field private static X:I = 0x0

.field private static Y:I = 0x0

.field private static Z:I = 0x0

.field private static a0:I = 0x0

.field private static b0:I = 0x0

.field private static c0:I = 0x0

.field private static final e:Ljava/lang/String; = "d"

.field private static f:Landroid/content/Context;

.field private static g:Lc/d;

.field private static h:Lc/e;

.field private static i:Lg/c;

.field private static j:Lg/b;

.field private static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Lc/a;

.field public static m:Lc/a;

.field private static n:[I

.field private static o:[I

.field public static p:[I

.field public static q:[I

.field public static r:[I

.field public static s:[I

.field public static t:[I

.field public static u:[I

.field public static v:I

.field public static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# instance fields
.field private a:La/d;

.field private b:La/f;

.field private final c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lc/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc/d;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lc/d;->l:Lc/a;

    .line 10
    .line 11
    sput-object v0, Lc/d;->m:Lc/a;

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    new-array v1, v0, [I

    .line 16
    .line 17
    sput-object v1, Lc/d;->n:[I

    .line 18
    .line 19
    new-array v1, v0, [I

    .line 20
    .line 21
    sput-object v1, Lc/d;->o:[I

    .line 22
    .line 23
    new-array v1, v0, [I

    .line 24
    .line 25
    sput-object v1, Lc/d;->p:[I

    .line 26
    .line 27
    new-array v1, v0, [I

    .line 28
    .line 29
    sput-object v1, Lc/d;->q:[I

    .line 30
    .line 31
    new-array v1, v0, [I

    .line 32
    .line 33
    sput-object v1, Lc/d;->r:[I

    .line 34
    .line 35
    new-array v1, v0, [I

    .line 36
    .line 37
    sput-object v1, Lc/d;->s:[I

    .line 38
    .line 39
    new-array v1, v0, [I

    .line 40
    .line 41
    sput-object v1, Lc/d;->t:[I

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    new-array v1, v1, [I

    .line 46
    .line 47
    sput-object v1, Lc/d;->u:[I

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    sput v1, Lc/d;->v:I

    .line 51
    .line 52
    sput v1, Lc/d;->w:I

    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    sput v2, Lc/d;->x:I

    .line 56
    .line 57
    sput v2, Lc/d;->y:I

    .line 58
    .line 59
    sput v2, Lc/d;->z:I

    .line 60
    .line 61
    sput v2, Lc/d;->A:I

    .line 62
    .line 63
    sput v2, Lc/d;->B:I

    .line 64
    .line 65
    sput v2, Lc/d;->C:I

    .line 66
    .line 67
    sput v2, Lc/d;->D:I

    .line 68
    .line 69
    sput v2, Lc/d;->E:I

    .line 70
    .line 71
    sput v2, Lc/d;->F:I

    .line 72
    .line 73
    sput v1, Lc/d;->G:I

    .line 74
    .line 75
    sput v1, Lc/d;->H:I

    .line 76
    .line 77
    sput v1, Lc/d;->I:I

    .line 78
    .line 79
    const/16 v3, 0x19

    .line 80
    .line 81
    new-array v3, v3, [I

    .line 82
    .line 83
    sput-object v3, Lc/d;->J:[I

    .line 84
    .line 85
    const/16 v3, 0x14

    .line 86
    .line 87
    new-array v4, v3, [I

    .line 88
    .line 89
    sput-object v4, Lc/d;->K:[I

    .line 90
    .line 91
    new-array v3, v3, [I

    .line 92
    .line 93
    sput-object v3, Lc/d;->L:[I

    .line 94
    .line 95
    new-array v3, v0, [I

    .line 96
    .line 97
    sput-object v3, Lc/d;->M:[I

    .line 98
    .line 99
    new-array v3, v0, [I

    .line 100
    .line 101
    sput-object v3, Lc/d;->N:[I

    .line 102
    .line 103
    const/4 v3, 0x2

    .line 104
    new-array v4, v3, [I

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    const/16 v6, 0x12c

    .line 108
    .line 109
    aput v6, v4, v5

    .line 110
    .line 111
    aput v0, v4, v1

    .line 112
    .line 113
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 114
    .line 115
    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, [[I

    .line 120
    .line 121
    sput-object v4, Lc/d;->O:[[I

    .line 122
    .line 123
    new-array v4, v0, [I

    .line 124
    .line 125
    sput-object v4, Lc/d;->P:[I

    .line 126
    .line 127
    new-array v4, v0, [I

    .line 128
    .line 129
    sput-object v4, Lc/d;->Q:[I

    .line 130
    .line 131
    new-array v3, v3, [I

    .line 132
    .line 133
    aput v6, v3, v5

    .line 134
    .line 135
    aput v0, v3, v1

    .line 136
    .line 137
    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, [[I

    .line 142
    .line 143
    sput-object v3, Lc/d;->R:[[I

    .line 144
    .line 145
    sput-boolean v1, Lc/d;->S:Z

    .line 146
    .line 147
    new-array v3, v0, [I

    .line 148
    .line 149
    sput-object v3, Lc/d;->T:[I

    .line 150
    .line 151
    new-array v3, v0, [I

    .line 152
    .line 153
    sput-object v3, Lc/d;->U:[I

    .line 154
    .line 155
    new-array v0, v0, [I

    .line 156
    .line 157
    sput-object v0, Lc/d;->V:[I

    .line 158
    .line 159
    sput v2, Lc/d;->W:I

    .line 160
    .line 161
    sput v2, Lc/d;->X:I

    .line 162
    .line 163
    sput v1, Lc/d;->Y:I

    .line 164
    .line 165
    sput v2, Lc/d;->Z:I

    .line 166
    .line 167
    invoke-static {}, La/j;->i()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    sput v0, Lc/d;->a0:I

    .line 172
    .line 173
    invoke-static {}, La/j;->i()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    sput v0, Lc/d;->b0:I

    .line 178
    .line 179
    const v0, 0x7fffffff

    .line 180
    .line 181
    .line 182
    sput v0, Lc/d;->c0:I

    .line 183
    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc/d;->a:La/d;

    .line 6
    .line 7
    iput-object v0, p0, Lc/d;->b:La/f;

    .line 8
    .line 9
    const/16 v0, 0x14

    .line 10
    .line 11
    iput v0, p0, Lc/d;->c:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lc/d;->d:Ljava/util/HashMap;

    .line 19
    .line 20
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "DataManager Start"

    .line 23
    .line 24
    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object p1, Lc/d;->f:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lc/d;->a:La/d;

    .line 34
    .line 35
    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lc/d;->b:La/f;

    .line 40
    .line 41
    invoke-static {p1}, Lc/e;->r(Landroid/content/Context;)Lc/e;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sput-object p0, Lc/d;->h:Lc/e;

    .line 46
    .line 47
    invoke-static {p1}, Lg/c;->h(Landroid/content/Context;)Lg/c;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sput-object p0, Lc/d;->i:Lg/c;

    .line 52
    .line 53
    invoke-static {p1}, Lg/b;->l(Landroid/content/Context;)Lg/b;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sput-object p0, Lc/d;->j:Lg/b;

    .line 58
    .line 59
    sget-object p0, Lc/d;->J:[I

    .line 60
    .line 61
    const/4 p1, -0x1

    .line 62
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lc/d;->u:[I

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Lc/a;

    .line 72
    .line 73
    const-string v0, "DailyBattUsageSlot"

    .line 74
    .line 75
    invoke-direct {p0, v0}, Lc/a;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sput-object p0, Lc/d;->m:Lc/a;

    .line 79
    .line 80
    new-instance p0, Lc/a;

    .line 81
    .line 82
    const-string v0, "AvgBattUsageSlot"

    .line 83
    .line 84
    invoke-direct {p0, v0}, Lc/a;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sput-object p0, Lc/d;->l:Lc/a;

    .line 88
    .line 89
    sget-object v0, Lc/d;->h:Lc/e;

    .line 90
    .line 91
    invoke-static {}, La/j;->m()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, p0, v1}, Lc/e;->j(Lc/a;I)V

    .line 96
    .line 97
    .line 98
    sget-object p0, Lc/d;->l:Lc/a;

    .line 99
    .line 100
    invoke-virtual {p0}, Lc/a;->u()V

    .line 101
    .line 102
    .line 103
    sget-object p0, Lc/d;->h:Lc/e;

    .line 104
    .line 105
    sget-object v0, Lc/d;->p:[I

    .line 106
    .line 107
    array-length v1, v0

    .line 108
    const-string v2, "ECHGSLOT"

    .line 109
    .line 110
    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    sput p0, Lc/d;->v:I

    .line 115
    .line 116
    sget-object p0, Lc/d;->h:Lc/e;

    .line 117
    .line 118
    sget-object v0, Lc/d;->r:[I

    .line 119
    .line 120
    array-length v1, v0

    .line 121
    const-string v2, "EBATTSLOT"

    .line 122
    .line 123
    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    sput p0, Lc/d;->v:I

    .line 128
    .line 129
    sget-object p0, Lc/d;->h:Lc/e;

    .line 130
    .line 131
    sget-object v0, Lc/d;->q:[I

    .line 132
    .line 133
    array-length v1, v0

    .line 134
    const-string v2, "DCHGSLOT"

    .line 135
    .line 136
    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    sput p0, Lc/d;->w:I

    .line 141
    .line 142
    sget-object p0, Lc/d;->h:Lc/e;

    .line 143
    .line 144
    sget-object v0, Lc/d;->s:[I

    .line 145
    .line 146
    array-length v1, v0

    .line 147
    const-string v2, "DBATTSLOT"

    .line 148
    .line 149
    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    sput p0, Lc/d;->w:I

    .line 154
    .line 155
    sget-object p0, Lc/d;->h:Lc/e;

    .line 156
    .line 157
    sget-object v0, Lc/d;->t:[I

    .line 158
    .line 159
    array-length v1, v0

    .line 160
    const-string v2, "DNBATTSLOT"

    .line 161
    .line 162
    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    sput p0, Lc/d;->w:I

    .line 167
    .line 168
    sget-object p0, Lc/d;->T:[I

    .line 169
    .line 170
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, La/j;->a()I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    sput p0, Lc/d;->c0:I

    .line 178
    .line 179
    return-void
.end method

.method public static H(III)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const-string v2, "] :"

    .line 4
    .line 5
    if-ge v0, p1, :cond_1

    .line 6
    .line 7
    const-string v3, "]["

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-ne p2, v4, :cond_0

    .line 11
    .line 12
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v6, "chg_his_buffer["

    .line 20
    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v2, Lc/d;->O:[[I

    .line 37
    .line 38
    aget-object v2, v2, p0

    .line 39
    .line 40
    aget v2, v2, v0

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v4, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v2, Lc/d;->O:[[I

    .line 53
    .line 54
    aget-object v2, v2, p0

    .line 55
    .line 56
    aget v2, v2, v0

    .line 57
    .line 58
    :goto_1
    add-int/2addr v1, v2

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v6, "chg_his_buffer_N["

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    sget-object v2, Lc/d;->R:[[I

    .line 85
    .line 86
    aget-object v2, v2, p0

    .line 87
    .line 88
    aget v2, v2, v0

    .line 89
    .line 90
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v4, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v2, Lc/d;->R:[[I

    .line 101
    .line 102
    aget-object v2, v2, p0

    .line 103
    .line 104
    aget v2, v2, v0

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    sget-object p2, Lc/d;->e:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v3, "sum ["

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    div-int/2addr v1, p1

    .line 139
    return v1
.end method

.method public static Q(IIII)I
    .locals 3

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 1
    sget-object v2, Lc/d;->O:[[I

    aget-object v2, v2, p0

    aget v2, v2, v0

    :goto_1
    sub-int/2addr v2, p2

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 2
    :cond_1
    sget-object v2, Lc/d;->R:[[I

    aget-object v2, v2, p0

    aget v2, v2, v0

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    int-to-double p2, v1

    int-to-double p0, p1

    div-double/2addr p2, p0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private i(I)V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    :goto_0
    sget-object p1, Lc/d;->o:[I

    .line 3
    .line 4
    array-length p1, p1

    .line 5
    if-ge p0, p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lc/d;->e:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "Charging time "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " : "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v1, Lc/d;->o:[I

    .line 28
    .line 29
    aget v1, v1, p0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public static declared-synchronized s(Landroid/content/Context;)Lc/d;
    .locals 2

    .line 1
    const-class v0, Lc/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lc/d;->g:Lc/d;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lc/d;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lc/d;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lc/d;->g:Lc/d;

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
    sget-object p0, Lc/d;->g:Lc/d;
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

.method private y()I
    .locals 1

    .line 1
    invoke-static {}, La/j;->b()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x7

    .line 9
    return p0

    .line 10
    :cond_0
    sub-int/2addr p0, v0

    .line 11
    return p0
.end method


# virtual methods
.method public A()Z
    .locals 0

    .line 1
    sget-boolean p0, Lc/d;->S:Z

    .line 2
    .line 3
    return p0
.end method

.method public B()V
    .locals 4

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
    invoke-static {}, La/j;->i()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit16 v0, v0, -0x5a0

    .line 14
    .line 15
    invoke-static {v0}, La/j;->c(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lc/d;->Y:I

    .line 20
    .line 21
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "load_Qfinder_Db- theDate :: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget v2, Lc/d;->Y:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lc/d;->h:Lc/e;

    .line 46
    .line 47
    sget-object v1, Lc/d;->U:[I

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    const-string v3, "QALLAVG"

    .line 51
    .line 52
    invoke-virtual {v0, v3, p0, v1, v2}, Lc/e;->l(Ljava/lang/String;I[II)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    sput p0, Lc/d;->W:I

    .line 57
    .line 58
    sget-object p0, Lc/d;->h:Lc/e;

    .line 59
    .line 60
    sget v0, Lc/d;->Y:I

    .line 61
    .line 62
    sget-object v1, Lc/d;->V:[I

    .line 63
    .line 64
    array-length v2, v1

    .line 65
    const-string v3, "QDDAYAVG"

    .line 66
    .line 67
    invoke-virtual {p0, v3, v0, v1, v2}, Lc/e;->l(Ljava/lang/String;I[II)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    sput p0, Lc/d;->X:I

    .line 72
    .line 73
    return-void
.end method

.method public C(III)V
    .locals 5

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
    :goto_0
    if-lez p3, :cond_3

    .line 10
    .line 11
    invoke-static {p1}, La/j;->h(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p1}, La/j;->c(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p2}, La/j;->h(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p2}, La/j;->c(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v1, p0, :cond_0

    .line 28
    .line 29
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "This data is today\'s."

    .line 32
    .line 33
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-static {v1}, Lg/c;->g(I)Lg/d;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-ne v0, v2, :cond_2

    .line 42
    .line 43
    if-ne v1, v3, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x3c

    .line 46
    .line 47
    if-le p3, v1, :cond_1

    .line 48
    .line 49
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p2, "Error delta > 60, deltaTime = "

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    invoke-virtual {v4}, Lg/d;->a()[I

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    aget v2, v1, v0

    .line 77
    .line 78
    add-int/2addr v2, p3

    .line 79
    aput v2, v1, v0

    .line 80
    .line 81
    invoke-virtual {v4, v1}, Lg/d;->c([I)V

    .line 82
    .line 83
    .line 84
    const/4 p3, 0x0

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    add-int/lit8 v1, p1, 0x3c

    .line 87
    .line 88
    rem-int/lit8 v2, p1, 0x3c

    .line 89
    .line 90
    sub-int/2addr v1, v2

    .line 91
    sub-int p1, v1, p1

    .line 92
    .line 93
    sub-int/2addr p3, p1

    .line 94
    invoke-virtual {v4}, Lg/d;->a()[I

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    aget v3, v2, v0

    .line 99
    .line 100
    add-int/2addr v3, p1

    .line 101
    aput v3, v2, v0

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Lg/d;->c([I)V

    .line 104
    .line 105
    .line 106
    move p1, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    return-void
.end method

.method public D()V
    .locals 11

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    invoke-direct {p0}, Lc/d;->y()I

    .line 6
    .line 7
    .line 8
    move-result v10

    .line 9
    invoke-virtual {p0}, Lc/d;->e()V

    .line 10
    .line 11
    .line 12
    iget-object v4, p0, Lc/d;->b:La/f;

    .line 13
    .line 14
    sget-object p0, Lc/d;->f:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p0}, La/i;->p(Landroid/content/Context;)La/i;

    .line 17
    .line 18
    .line 19
    invoke-static {}, La/i;->o()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    sget-object v6, Lc/d;->n:[I

    .line 24
    .line 25
    sget-object p0, Lc/d;->m:Lc/a;

    .line 26
    .line 27
    invoke-virtual {p0}, Lc/a;->q()[I

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    const/16 v9, 0x18

    .line 32
    .line 33
    const/16 v7, 0x18

    .line 34
    .line 35
    invoke-virtual/range {v4 .. v10}, La/f;->i(I[II[III)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lc/d;->h:Lc/e;

    .line 39
    .line 40
    sget-object p0, Lc/d;->l:Lc/a;

    .line 41
    .line 42
    invoke-virtual {p0}, Lc/a;->f()[I

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x3

    .line 48
    const-string v1, "BATTAVG"

    .line 49
    .line 50
    invoke-virtual/range {v0 .. v5}, Lc/e;->a(Ljava/lang/String;[IIII)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lc/d;->h:Lc/e;

    .line 54
    .line 55
    sget-object p0, Lc/d;->l:Lc/a;

    .line 56
    .line 57
    invoke-virtual {p0}, Lc/a;->g()[I

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v1, "BATTAVGBYDAY"

    .line 62
    .line 63
    invoke-virtual/range {v0 .. v5}, Lc/e;->a(Ljava/lang/String;[IIII)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lc/d;->h:Lc/e;

    .line 67
    .line 68
    sget-object p0, Lc/d;->l:Lc/a;

    .line 69
    .line 70
    invoke-virtual {p0}, Lc/a;->h()[I

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v1, "BATTAVGBYDAY_N"

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v5}, Lc/e;->a(Ljava/lang/String;[IIII)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public E()V
    .locals 12

    .line 1
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "makeDailyChargingPattern"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, La/j;->i()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, La/j;->c(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v1, Lc/d;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    move v5, v4

    .line 25
    :cond_0
    :goto_0
    if-ge v5, v2, :cond_6

    .line 26
    .line 27
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    check-cast v6, Lc/f;

    .line 34
    .line 35
    invoke-virtual {v6}, Lc/f;->h()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-static {v7}, La/j;->d(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Lc/f;->f()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const/4 v9, 0x1

    .line 47
    if-ne v8, v9, :cond_1

    .line 48
    .line 49
    move v4, v7

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v6}, Lc/f;->f()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    const/4 v9, 0x2

    .line 56
    if-eq v8, v9, :cond_2

    .line 57
    .line 58
    invoke-virtual {v6}, Lc/f;->f()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/16 v9, 0x9

    .line 63
    .line 64
    if-ne v8, v9, :cond_0

    .line 65
    .line 66
    :cond_2
    if-le v4, v7, :cond_3

    .line 67
    .line 68
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    .line 69
    .line 70
    const-string v6, "can\'t handle, reverse order."

    .line 71
    .line 72
    invoke-static {v4, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    if-nez v4, :cond_4

    .line 77
    .line 78
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    .line 79
    .line 80
    const-string v6, "can\'t handle, CHARGING_FINISH twice in a row."

    .line 81
    .line 82
    invoke-static {v4, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    invoke-static {v4}, La/j;->c(I)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-ne v8, v0, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    sub-int v8, v7, v4

    .line 94
    .line 95
    sget-object v9, Lc/d;->e:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v10, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v11, "makeChgSlotData, ev="

    .line 103
    .line 104
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Lc/f;->f()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v6, " ["

    .line 115
    .line 116
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {v4}, La/j;->d(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v6, " - "

    .line 127
    .line 128
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {v7}, La/j;->d(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v6, "] "

    .line 139
    .line 140
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v9, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v4, v7, v8}, Lc/d;->C(III)V

    .line 154
    .line 155
    .line 156
    :goto_1
    move v4, v3

    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_6
    :goto_2
    invoke-static {}, Lg/c;->l()V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lg/c;->a()V

    .line 163
    .line 164
    .line 165
    sget-object p0, Lc/d;->i:Lg/c;

    .line 166
    .line 167
    invoke-virtual {p0}, Lg/c;->n()V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lg/c;->c()V

    .line 171
    .line 172
    .line 173
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 174
    .line 175
    const-string v0, "makeDailyChargingPattern - end"

    .line 176
    .line 177
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public F()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lc/d;->y()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    const/16 v3, 0x18

    .line 14
    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    sget-object v3, Lc/d;->n:[I

    .line 18
    .line 19
    aput v1, v3, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    sub-int/2addr v0, v2

    .line 26
    const/4 v4, -0x1

    .line 27
    move v7, v1

    .line 28
    move v6, v2

    .line 29
    move v2, v7

    .line 30
    :goto_1
    const-string v8, " / "

    .line 31
    .line 32
    if-lez v0, :cond_7

    .line 33
    .line 34
    sget-object v9, Lc/d;->k:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Lc/f;

    .line 41
    .line 42
    invoke-virtual {v9}, Lc/f;->d()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-ne v10, v5, :cond_5

    .line 47
    .line 48
    invoke-virtual {v9}, Lc/f;->f()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v10, 0x3

    .line 53
    if-eq v4, v10, :cond_3

    .line 54
    .line 55
    invoke-virtual {v9}, Lc/f;->f()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v10, 0x4

    .line 60
    if-eq v4, v10, :cond_3

    .line 61
    .line 62
    invoke-virtual {v9}, Lc/f;->f()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v10, 0x5

    .line 67
    if-ne v4, v10, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    invoke-virtual {v9}, Lc/f;->f()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/16 v8, 0x14

    .line 75
    .line 76
    if-ne v4, v6, :cond_2

    .line 77
    .line 78
    if-ge v2, v8, :cond_4

    .line 79
    .line 80
    invoke-virtual {v9}, Lc/f;->h()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {v4}, La/j;->j(I)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    sget-object v8, Lc/d;->K:[I

    .line 89
    .line 90
    add-int/lit8 v10, v2, 0x1

    .line 91
    .line 92
    mul-int/lit16 v4, v4, 0x3e8

    .line 93
    .line 94
    invoke-virtual {v9}, Lc/f;->a()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    add-int/2addr v4, v9

    .line 99
    aput v4, v8, v2

    .line 100
    .line 101
    move v4, v6

    .line 102
    move v2, v10

    .line 103
    goto :goto_3

    .line 104
    :cond_2
    invoke-virtual {v9}, Lc/f;->f()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    const/4 v10, 0x2

    .line 109
    if-ne v4, v10, :cond_4

    .line 110
    .line 111
    if-ge v7, v8, :cond_4

    .line 112
    .line 113
    invoke-virtual {v9}, Lc/f;->h()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-static {v4}, La/j;->j(I)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    sget-object v8, Lc/d;->L:[I

    .line 122
    .line 123
    add-int/lit8 v10, v7, 0x1

    .line 124
    .line 125
    mul-int/lit16 v4, v4, 0x3e8

    .line 126
    .line 127
    invoke-virtual {v9}, Lc/f;->a()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    add-int/2addr v4, v9

    .line 132
    aput v4, v8, v7

    .line 133
    .line 134
    move v4, v6

    .line 135
    move v7, v10

    .line 136
    goto :goto_3

    .line 137
    :cond_3
    :goto_2
    invoke-virtual {v9}, Lc/f;->h()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-static {v4}, La/j;->h(I)I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    sget-object v10, Lc/d;->n:[I

    .line 146
    .line 147
    aget v11, v10, v9

    .line 148
    .line 149
    add-int/2addr v11, v6

    .line 150
    aput v11, v10, v9

    .line 151
    .line 152
    sget-object v10, Lc/d;->e:Ljava/lang/String;

    .line 153
    .line 154
    new-instance v11, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-static {v4}, La/j;->d(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v10, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    move v4, v6

    .line 180
    goto :goto_3

    .line 181
    :cond_5
    if-ne v4, v6, :cond_6

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :cond_7
    :goto_4
    if-ge v1, v3, :cond_8

    .line 189
    .line 190
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    .line 191
    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v6, "active slot : "

    .line 198
    .line 199
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    sget-object v6, Lc/d;->n:[I

    .line 209
    .line 210
    aget v6, v6, v1

    .line 211
    .line 212
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {v0, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_8
    iget-object v0, p0, Lc/d;->b:La/f;

    .line 226
    .line 227
    sget-object v1, Lc/d;->K:[I

    .line 228
    .line 229
    sget-object v3, Lc/d;->L:[I

    .line 230
    .line 231
    move v4, v7

    .line 232
    invoke-virtual/range {v0 .. v5}, La/f;->g([II[III)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method public G(II)V
    .locals 4

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    new-array v2, v0, [I

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lc/d;->u(II)V

    .line 10
    .line 11
    .line 12
    sget p2, Lc/d;->z:I

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq p2, v3, :cond_2

    .line 16
    .line 17
    sget p2, Lc/d;->C:I

    .line 18
    .line 19
    if-ne p2, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1, v1}, Lc/d;->x(I[I)[I

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, p1, v2, v1}, Lc/d;->v(I[II)[I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x2

    .line 32
    if-ne p1, v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x64

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0, v2}, Lc/d;->v(I[II)[I

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    invoke-virtual {p0, p1, p2, v1, v0}, Lc/d;->T(I[I[I[I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    sget-object p2, Lc/d;->e:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, "There is no Data to make table!!"

    .line 47
    .line 48
    invoke-static {p2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    sput p2, Lc/d;->v:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    sput p2, Lc/d;->w:I

    .line 58
    .line 59
    :goto_1
    invoke-virtual {p0, p1, v1, v2, v0}, Lc/d;->T(I[I[I[I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public I(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    sget-object p0, Lc/d;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Lc/f;

    .line 17
    .line 18
    invoke-virtual {v2}, Lc/f;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public J(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    sget-object p0, Lc/d;->h:Lc/e;

    .line 2
    .line 3
    invoke-static {}, La/j;->m()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lc/e;->n(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    int-to-long v0, p0

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "DB-size:"

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public K(I)V
    .locals 3

    .line 1
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "readPowerInfo"

    .line 4
    .line 5
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lc/d;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lc/d;->h:Lc/e;

    .line 14
    .line 15
    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {}, La/j;->m()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {}, La/j;->a()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v0, v1, v2, p1}, Lc/e;->k(Ljava/util/ArrayList;III)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lc/d;->k:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-ge v0, p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    check-cast v1, Lc/f;

    .line 44
    .line 45
    sget-object v2, Lc/d;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1}, Lc/f;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v2, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public declared-synchronized L(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lc/d;->b0:I

    .line 3
    .line 4
    invoke-static {v0}, La/j;->h(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    if-ltz p1, :cond_1

    .line 11
    .line 12
    if-ge v0, p1, :cond_1

    .line 13
    .line 14
    sub-int v1, p1, v0

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    const/16 v2, 0x18

    .line 19
    .line 20
    if-gt v1, v2, :cond_1

    .line 21
    .line 22
    :goto_0
    if-ge v0, p1, :cond_1

    .line 23
    .line 24
    sget-object v1, Lc/d;->T:[I

    .line 25
    .line 26
    aget v2, v1, v0

    .line 27
    .line 28
    if-gez v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public M(Lc/f;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lc/d;->a:La/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lc/f;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DataMgr"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lc/d;->h:Lc/e;

    .line 13
    .line 14
    invoke-static {}, La/j;->m()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Lc/e;->n(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v0, -0x1

    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/16 v0, 0x2328

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-ge p0, v0, :cond_1

    .line 30
    .line 31
    sget-object p0, Lc/d;->h:Lc/e;

    .line 32
    .line 33
    invoke-static {}, La/j;->m()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, p1, v0, v1, v1}, Lc/e;->b(Lc/f;III)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    sget-object p0, Lc/d;->h:Lc/e;

    .line 42
    .line 43
    invoke-static {}, La/j;->m()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v2, 0x3

    .line 48
    invoke-virtual {p0, p1, v0, v1, v2}, Lc/e;->b(Lc/f;III)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public N(I)V
    .locals 3

    .line 1
    sget p0, Lc/d;->a0:I

    .line 2
    .line 3
    invoke-static {p0}, La/j;->h(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    sget p1, Lc/d;->a0:I

    .line 8
    .line 9
    rem-int/lit8 p1, p1, 0x3c

    .line 10
    .line 11
    rsub-int/lit8 p1, p1, 0x3c

    .line 12
    .line 13
    sget-object v0, Lc/d;->T:[I

    .line 14
    .line 15
    aget v1, v0, p0

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-gez v1, :cond_0

    .line 19
    .line 20
    aput v2, v0, p0

    .line 21
    .line 22
    :cond_0
    aget v1, v0, p0

    .line 23
    .line 24
    add-int/2addr v1, p1

    .line 25
    aput v1, v0, p0

    .line 26
    .line 27
    :goto_0
    add-int/lit8 p0, p0, 0x1

    .line 28
    .line 29
    const/16 p1, 0x18

    .line 30
    .line 31
    if-ge p0, p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Lc/d;->T:[I

    .line 34
    .line 35
    aget v0, p1, p0

    .line 36
    .line 37
    if-gez v0, :cond_1

    .line 38
    .line 39
    aput v2, p1, p0

    .line 40
    .line 41
    :cond_1
    aget v0, p1, p0

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x3c

    .line 44
    .line 45
    aput v0, p1, p0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method public O(Z)V
    .locals 3

    .line 1
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "DataManager setNeedDailyPattern : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lc/d;->d()V

    .line 27
    .line 28
    .line 29
    :cond_0
    sput-boolean p1, Lc/d;->S:Z

    .line 30
    .line 31
    return-void
.end method

.method public declared-synchronized P()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, La/j;->i()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {v0}, La/j;->c(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget-object v1, Lc/d;->g:Lc/d;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lc/d;->m(Z)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lc/d;->g:Lc/d;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lc/d;->n(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public R()V
    .locals 0

    .line 1
    return-void
.end method

.method public S(III[I[I)V
    .locals 8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1
    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "QALLAVG"

    move v2, p2

    move v5, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    .line 2
    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p5

    const-string v1, "QALLSD"

    move-object v3, p5

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    return-void

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 3
    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "QNDAYAVG"

    move v2, p2

    move v5, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    .line 4
    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p5

    const-string v1, "QNDDAYSD"

    move-object v3, p5

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 5
    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "QDDAYAVG"

    move v2, p2

    move v5, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    :cond_2
    return-void
.end method

.method public T(I[I[I[I)V
    .locals 8

    .line 1
    invoke-static {}, La/j;->i()I

    move-result v5

    if-nez p1, :cond_0

    .line 2
    sget-object v0, Lc/d;->h:Lc/e;

    sget v2, Lc/d;->v:I

    array-length v4, p2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "ECHGSLOT"

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    .line 3
    sget-object v0, Lc/d;->h:Lc/e;

    sget v2, Lc/d;->v:I

    array-length v4, p3

    const-string v1, "EBATTSLOT"

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    return-void

    :cond_0
    move-object v3, p2

    move-object p0, p3

    .line 4
    sget-object v0, Lc/d;->h:Lc/e;

    sget v2, Lc/d;->w:I

    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "DCHGSLOT"

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    .line 5
    sget-object v0, Lc/d;->h:Lc/e;

    sget v2, Lc/d;->w:I

    array-length v4, p0

    const-string v1, "DBATTSLOT"

    move-object v3, p0

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    .line 6
    sget-object v0, Lc/d;->h:Lc/e;

    sget v2, Lc/d;->w:I

    array-length v4, p4

    const-string v1, "DNBATTSLOT"

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    return-void
.end method

.method public a()I
    .locals 0

    .line 1
    sget p0, Lc/d;->W:I

    .line 2
    .line 3
    return p0
.end method

.method public b()I
    .locals 0

    .line 1
    sget p0, Lc/d;->X:I

    .line 2
    .line 3
    return p0
.end method

.method public c()I
    .locals 0

    .line 1
    sget p0, Lc/d;->Y:I

    .line 2
    .line 3
    return p0
.end method

.method public d()V
    .locals 11

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, La/j;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lc/d;->Y:I

    .line 10
    .line 11
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Update_Qfinder_ToDb- theDate :: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget v2, Lc/d;->Y:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lc/d;->h:Lc/e;

    .line 36
    .line 37
    sget v1, Lc/d;->Y:I

    .line 38
    .line 39
    sget-object v2, Lc/d;->U:[I

    .line 40
    .line 41
    array-length v3, v2

    .line 42
    const-string v4, "QALLAVG"

    .line 43
    .line 44
    invoke-virtual {v0, v4, v1, v2, v3}, Lc/e;->l(Ljava/lang/String;I[II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sput v0, Lc/d;->W:I

    .line 49
    .line 50
    sget-object v0, Lc/d;->h:Lc/e;

    .line 51
    .line 52
    sget v1, Lc/d;->Y:I

    .line 53
    .line 54
    sget-object v2, Lc/d;->V:[I

    .line 55
    .line 56
    array-length v3, v2

    .line 57
    const-string v4, "QNDAYAVG"

    .line 58
    .line 59
    invoke-virtual {v0, v4, v1, v2, v3}, Lc/e;->l(Ljava/lang/String;I[II)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    sput v7, Lc/d;->X:I

    .line 64
    .line 65
    const/4 v0, -0x1

    .line 66
    if-eq v7, v0, :cond_0

    .line 67
    .line 68
    sget v8, Lc/d;->Y:I

    .line 69
    .line 70
    sget-object v9, Lc/d;->V:[I

    .line 71
    .line 72
    sget-object v10, Lc/d;->U:[I

    .line 73
    .line 74
    const/4 v6, 0x4

    .line 75
    move-object v5, p0

    .line 76
    invoke-virtual/range {v5 .. v10}, Lc/d;->S(III[I[I)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "buildingDailyTimeTable()"

    .line 4
    .line 5
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "building Lastday batt Usage data"

    .line 9
    .line 10
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lc/d;->m:Lc/a;

    .line 14
    .line 15
    sget-object v1, Lc/d;->k:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc/a;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v1, Lc/d;->m:Lc/a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lc/a;->t()V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lc/d;->m:Lc/a;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v0, v2}, Lc/a;->b(Ljava/util/ArrayList;I)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lc/d;->m:Lc/a;

    .line 35
    .line 36
    invoke-virtual {v0}, Lc/a;->v()V

    .line 37
    .line 38
    .line 39
    :cond_0
    const-string v0, "building average batt Usage data"

    .line 40
    .line 41
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lc/d;->l:Lc/a;

    .line 45
    .line 46
    invoke-virtual {p0}, Lc/a;->t()V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lc/d;->l:Lc/a;

    .line 50
    .line 51
    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lc/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    sget-object p0, Lc/d;->l:Lc/a;

    .line 57
    .line 58
    invoke-virtual {p0}, Lc/a;->e()V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lc/d;->l:Lc/a;

    .line 62
    .line 63
    invoke-virtual {p0}, Lc/a;->u()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public declared-synchronized f(II)V
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lc/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/b;-><init>(Lc/d;Lc/c;)V

    .line 2
    new-instance v2, Lc/b;

    invoke-direct {v2, p0, v1}, Lc/b;-><init>(Lc/d;Lc/c;)V

    .line 3
    sget-object v3, Lc/d;->e:Ljava/lang/String;

    const-string v4, "calCpuRuntimeComputing list"

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5
    iget-object v8, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/b;

    .line 6
    sget-object v9, Lc/d;->e:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lc/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    :goto_0
    if-ge v4, v5, :cond_2

    .line 7
    invoke-static {v8}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    aget v9, v9, v4

    if-ltz v9, :cond_1

    .line 8
    invoke-static {v0}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    aget v10, v9, v4

    invoke-static {v8}, Lc/b;->d(Lc/b;)[I

    move-result-object v11

    aget v11, v11, v4

    add-int/2addr v10, v11

    aput v10, v9, v4

    .line 9
    invoke-static {v0}, Lc/b;->a(Lc/b;)[I

    move-result-object v9

    aget v10, v9, v4

    add-int/2addr v10, v7

    aput v10, v9, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v8}, Lc/b;->b(Lc/b;)I

    move-result v4

    if-ne v4, p1, :cond_0

    :goto_2
    if-ge v6, v5, :cond_0

    .line 11
    invoke-static {v8}, Lc/b;->d(Lc/b;)[I

    move-result-object v4

    aget v4, v4, v6

    if-ltz v4, :cond_3

    .line 12
    invoke-static {v2}, Lc/b;->d(Lc/b;)[I

    move-result-object v4

    aget v9, v4, v6

    invoke-static {v8}, Lc/b;->d(Lc/b;)[I

    move-result-object v10

    aget v10, v10, v6

    add-int/2addr v9, v10

    aput v9, v4, v6

    .line 13
    invoke-static {v2}, Lc/b;->a(Lc/b;)[I

    move-result-object v4

    aget v9, v4, v6

    add-int/2addr v9, v7

    aput v9, v4, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 14
    :cond_4
    sget-object p1, Lc/d;->e:Ljava/lang/String;

    const-string v3, "crDateAvgAll"

    invoke-static {p1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v3, "crDateAvgDow"

    invoke-static {p1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7fffffff

    move v3, p1

    move v4, v6

    :goto_3
    if-ge v4, v5, :cond_9

    .line 20
    invoke-static {v0}, Lc/b;->a(Lc/b;)[I

    move-result-object v8

    aget v8, v8, v4

    if-lez v8, :cond_5

    .line 21
    invoke-static {v0}, Lc/b;->d(Lc/b;)[I

    move-result-object v8

    invoke-static {v0}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    aget v9, v9, v4

    mul-int/lit8 v9, v9, 0xa

    invoke-static {v0}, Lc/b;->a(Lc/b;)[I

    move-result-object v10

    aget v10, v10, v4

    div-int/2addr v9, v10

    aput v9, v8, v4

    .line 22
    :cond_5
    invoke-static {v0}, Lc/b;->a(Lc/b;)[I

    move-result-object v8

    aget v8, v8, v4

    if-le p1, v8, :cond_6

    .line 23
    invoke-static {v0}, Lc/b;->a(Lc/b;)[I

    move-result-object p1

    aget p1, p1, v4

    .line 24
    :cond_6
    invoke-static {v2}, Lc/b;->a(Lc/b;)[I

    move-result-object v8

    aget v8, v8, v4

    if-lez v8, :cond_7

    .line 25
    invoke-static {v2}, Lc/b;->d(Lc/b;)[I

    move-result-object v8

    invoke-static {v2}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    aget v9, v9, v4

    mul-int/lit8 v9, v9, 0xa

    invoke-static {v2}, Lc/b;->a(Lc/b;)[I

    move-result-object v10

    aget v10, v10, v4

    div-int/2addr v9, v10

    aput v9, v8, v4

    .line 26
    :cond_7
    invoke-static {v2}, Lc/b;->a(Lc/b;)[I

    move-result-object v8

    aget v8, v8, v4

    if-le v3, v8, :cond_8

    .line 27
    invoke-static {v2}, Lc/b;->a(Lc/b;)[I

    move-result-object v3

    aget v3, v3, v4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    const/4 v4, 0x7

    if-lt p1, v4, :cond_a

    move p1, v7

    goto :goto_4

    :cond_a
    move p1, v6

    :goto_4
    const/4 v4, 0x4

    if-lt v3, v4, :cond_b

    goto :goto_5

    :cond_b
    move v7, v6

    .line 28
    :goto_5
    sget-object v3, Lc/d;->e:Ljava/lang/String;

    const-string v4, "print average"

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "crDateAvgAll Avg: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "crDateAvgDow Avg: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc/b;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v3, Lc/b;

    invoke-direct {v3, p0, v1}, Lc/b;-><init>(Lc/d;Lc/c;)V

    if-eqz p1, :cond_10

    .line 32
    iget-object p1, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 33
    iget-object v8, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b;

    goto :goto_6

    .line 34
    :cond_c
    iget-object p1, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 35
    iget-object v8, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b;

    move v8, v6

    :goto_7
    if-ge v8, v5, :cond_d

    .line 36
    invoke-static {v4}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    aget v9, v9, v8

    if-ltz v9, :cond_e

    .line 37
    invoke-static {v4}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    aget v9, v9, v8

    mul-int/lit8 v9, v9, 0xa

    invoke-static {v0}, Lc/b;->d(Lc/b;)[I

    move-result-object v10

    aget v10, v10, v8

    sub-int/2addr v9, v10

    .line 38
    invoke-static {v3}, Lc/b;->d(Lc/b;)[I

    move-result-object v10

    aget v11, v10, v8

    mul-int/2addr v9, v9

    add-int/2addr v11, v9

    aput v11, v10, v8

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_f
    move p1, v6

    :goto_8
    if-ge p1, v5, :cond_10

    .line 39
    invoke-static {v3}, Lc/b;->d(Lc/b;)[I

    move-result-object v4

    invoke-static {v3}, Lc/b;->d(Lc/b;)[I

    move-result-object v8

    aget v8, v8, p1

    int-to-double v8, v8

    invoke-static {v0}, Lc/b;->a(Lc/b;)[I

    move-result-object v10

    aget v10, v10, p1

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    aput v8, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 40
    :cond_10
    sget-object p1, Lc/d;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "crDateAllStd : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/b;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lc/b;

    invoke-direct {p1, p0, v1}, Lc/b;-><init>(Lc/d;Lc/c;)V

    if-eqz v7, :cond_14

    .line 42
    iget-object v1, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 43
    iget-object v7, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b;

    move v7, v6

    :goto_9
    if-ge v7, v5, :cond_11

    .line 44
    invoke-static {v4}, Lc/b;->d(Lc/b;)[I

    move-result-object v8

    aget v8, v8, v7

    if-ltz v8, :cond_12

    .line 45
    invoke-static {v4}, Lc/b;->d(Lc/b;)[I

    move-result-object v8

    aget v8, v8, v7

    mul-int/lit8 v8, v8, 0xa

    invoke-static {v2}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    aget v9, v9, v7

    sub-int/2addr v8, v9

    .line 46
    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    aget v10, v9, v7

    mul-int/2addr v8, v8

    add-int/2addr v10, v8

    aput v10, v9, v7

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    if-ge v6, v5, :cond_14

    .line 47
    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    move-result-object v1

    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    move-result-object v4

    aget v4, v4, v6

    int-to-double v7, v4

    invoke-static {v2}, Lc/b;->a(Lc/b;)[I

    move-result-object v4

    aget v4, v4, v6

    int-to-double v9, v4

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v4, v7

    aput v4, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 48
    :cond_14
    sget-object v1, Lc/d;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crDateDowStd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0, v3}, Lc/d;->g(Lc/b;Lc/b;)I

    move-result v7

    .line 50
    invoke-virtual {p0, v2, p1}, Lc/d;->g(Lc/b;Lc/b;)I

    move-result v1

    .line 51
    invoke-static {v0}, Lc/b;->d(Lc/b;)[I

    move-result-object v9

    invoke-static {v3}, Lc/b;->d(Lc/b;)[I

    move-result-object v10

    const/4 v6, 0x3

    move-object v5, p0

    move/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Lc/d;->S(III[I[I)V

    .line 52
    invoke-static {v2}, Lc/b;->d(Lc/b;)[I

    move-result-object v12

    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    move-result-object v13

    const/4 v9, 0x5

    move-object v8, p0

    move/from16 v11, p2

    move v10, v1

    invoke-virtual/range {v8 .. v13}, Lc/d;->S(III[I[I)V

    .line 53
    iget-object p1, p0, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :goto_b
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized g(Lc/b;Lc/b;)I
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/16 v1, 0x3c

    .line 4
    .line 5
    move v2, v0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const/16 v4, 0x18

    .line 8
    .line 9
    if-ge v2, v4, :cond_3

    .line 10
    .line 11
    :try_start_0
    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    aget v4, v4, v2

    .line 16
    .line 17
    if-gt v4, v1, :cond_2

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    aget v1, v1, v2

    .line 26
    .line 27
    move v3, v0

    .line 28
    goto :goto_2

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    aget v4, v4, v2

    .line 36
    .line 37
    if-ne v4, v1, :cond_1

    .line 38
    .line 39
    invoke-static {p2}, Lc/b;->d(Lc/b;)[I

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    aget v4, v4, v2

    .line 44
    .line 45
    invoke-static {p2}, Lc/b;->d(Lc/b;)[I

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    aget v5, v5, v3

    .line 50
    .line 51
    if-ge v4, v5, :cond_2

    .line 52
    .line 53
    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    aget v1, v1, v2

    .line 58
    .line 59
    :goto_1
    move v3, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-static {p1}, Lc/b;->d(Lc/b;)[I

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    aget v1, v1, v2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    sget-object p1, Lc/d;->e:Ljava/lang/String;

    .line 72
    .line 73
    const-string p2, "---print best --"

    .line 74
    .line 75
    invoke-static {p1, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v0, "crDateAvg best idx: "

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {p1, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return v3

    .line 100
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p1
.end method

.method public declared-synchronized h()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, La/j;->b()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v2, Lc/d;->e:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "calCpuRuntimeStats - start"

    .line 11
    .line 12
    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, La/j;->i()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/lit16 v3, v3, -0x5a0

    .line 20
    .line 21
    invoke-static {v3}, La/j;->c(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {}, La/j;->i()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int/lit16 v4, v4, 0x5a0

    .line 30
    .line 31
    invoke-static {v4}, La/j;->c(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x7

    .line 36
    const/4 v6, 0x1

    .line 37
    if-ne v0, v5, :cond_0

    .line 38
    .line 39
    move v5, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    add-int/lit8 v5, v0, 0x1

    .line 42
    .line 43
    :goto_0
    sget-object v7, Lc/d;->k:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez v7, :cond_1

    .line 46
    .line 47
    const-string v0, "Debug calCpuRuntimeStats null"

    .line 48
    .line 49
    invoke-static {v2, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto/16 :goto_d

    .line 56
    .line 57
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v8, "endDate = "

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-static {v2, v7}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v8, "theNDate = "

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v8, ", currentDow = "

    .line 91
    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ", targetDow = "

    .line 99
    .line 100
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v2, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    sub-int/2addr v0, v6

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    :goto_1
    if-lez v0, :cond_10

    .line 124
    .line 125
    sget-object v10, Lc/d;->k:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    check-cast v10, Lc/f;

    .line 132
    .line 133
    invoke-virtual {v10}, Lc/f;->h()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-static {v11}, La/j;->h(I)I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    invoke-static {v11}, La/j;->c(I)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-nez v7, :cond_2

    .line 146
    .line 147
    if-gt v13, v3, :cond_2

    .line 148
    .line 149
    move v7, v6

    .line 150
    :cond_2
    if-eqz v7, :cond_f

    .line 151
    .line 152
    invoke-virtual {v10}, Lc/f;->f()I

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    const/4 v15, 0x3

    .line 157
    const/4 v2, 0x0

    .line 158
    if-eq v14, v15, :cond_3

    .line 159
    .line 160
    invoke-virtual {v10}, Lc/f;->f()I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    const/4 v15, 0x4

    .line 165
    if-eq v14, v15, :cond_3

    .line 166
    .line 167
    invoke-virtual {v10}, Lc/f;->f()I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    const/4 v15, 0x5

    .line 172
    if-ne v14, v15, :cond_4

    .line 173
    .line 174
    :cond_3
    move/from16 v16, v6

    .line 175
    .line 176
    goto/16 :goto_9

    .line 177
    .line 178
    :cond_4
    invoke-virtual {v10}, Lc/f;->f()I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    const/16 v14, 0x9

    .line 183
    .line 184
    if-ne v10, v14, :cond_b

    .line 185
    .line 186
    move v10, v13

    .line 187
    :goto_2
    if-gt v10, v8, :cond_b

    .line 188
    .line 189
    iget-object v14, v1, Lc/d;->d:Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    if-eqz v14, :cond_5

    .line 200
    .line 201
    iget-object v14, v1, Lc/d;->d:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v15

    .line 207
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    check-cast v14, Lc/b;

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_5
    new-instance v14, Lc/b;

    .line 215
    .line 216
    invoke-direct {v14, v1, v2}, Lc/b;-><init>(Lc/d;Lc/c;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v11}, La/j;->f(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    invoke-static {v14, v15}, Lc/b;->f(Lc/b;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v14}, Lc/b;->c(Lc/b;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    invoke-static {v15}, La/j;->e(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v15

    .line 234
    invoke-static {v14, v15}, Lc/b;->e(Lc/b;I)V

    .line 235
    .line 236
    .line 237
    :goto_3
    if-ne v10, v13, :cond_7

    .line 238
    .line 239
    if-ne v10, v8, :cond_7

    .line 240
    .line 241
    move v15, v12

    .line 242
    :goto_4
    if-gt v15, v9, :cond_6

    .line 243
    .line 244
    invoke-static {v14}, Lc/b;->d(Lc/b;)[I

    .line 245
    .line 246
    .line 247
    move-result-object v16

    .line 248
    aget v17, v16, v15

    .line 249
    .line 250
    add-int/lit8 v17, v17, -0x1

    .line 251
    .line 252
    aput v17, v16, v15

    .line 253
    .line 254
    add-int/lit8 v15, v15, 0x1

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_6
    move/from16 v16, v6

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_7
    const/16 v15, 0x18

    .line 261
    .line 262
    if-ne v10, v13, :cond_8

    .line 263
    .line 264
    move/from16 v16, v6

    .line 265
    .line 266
    move v6, v12

    .line 267
    :goto_5
    if-ge v6, v15, :cond_a

    .line 268
    .line 269
    invoke-static {v14}, Lc/b;->d(Lc/b;)[I

    .line 270
    .line 271
    .line 272
    move-result-object v17

    .line 273
    aget v18, v17, v6

    .line 274
    .line 275
    add-int/lit8 v18, v18, -0x1

    .line 276
    .line 277
    aput v18, v17, v6

    .line 278
    .line 279
    add-int/lit8 v6, v6, 0x1

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_8
    move/from16 v16, v6

    .line 283
    .line 284
    if-ne v10, v8, :cond_9

    .line 285
    .line 286
    const/4 v6, 0x0

    .line 287
    :goto_6
    if-gt v6, v9, :cond_a

    .line 288
    .line 289
    invoke-static {v14}, Lc/b;->d(Lc/b;)[I

    .line 290
    .line 291
    .line 292
    move-result-object v15

    .line 293
    aget v17, v15, v6

    .line 294
    .line 295
    add-int/lit8 v17, v17, -0x1

    .line 296
    .line 297
    aput v17, v15, v6

    .line 298
    .line 299
    add-int/lit8 v6, v6, 0x1

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_9
    if-ge v13, v10, :cond_a

    .line 303
    .line 304
    if-ge v10, v8, :cond_a

    .line 305
    .line 306
    const/4 v6, 0x0

    .line 307
    :goto_7
    if-ge v6, v15, :cond_a

    .line 308
    .line 309
    invoke-static {v14}, Lc/b;->d(Lc/b;)[I

    .line 310
    .line 311
    .line 312
    move-result-object v17

    .line 313
    aget v18, v17, v6

    .line 314
    .line 315
    add-int/lit8 v18, v18, -0x1

    .line 316
    .line 317
    aput v18, v17, v6

    .line 318
    .line 319
    add-int/lit8 v6, v6, 0x1

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_a
    :goto_8
    iget-object v6, v1, Lc/d;->d:Ljava/util/HashMap;

    .line 323
    .line 324
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v15

    .line 328
    invoke-virtual {v6, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    add-int/lit8 v10, v10, 0x1

    .line 332
    .line 333
    move/from16 v6, v16

    .line 334
    .line 335
    goto/16 :goto_2

    .line 336
    .line 337
    :cond_b
    move/from16 v16, v6

    .line 338
    .line 339
    goto :goto_b

    .line 340
    :goto_9
    iget-object v6, v1, Lc/d;->d:Ljava/util/HashMap;

    .line 341
    .line 342
    if-eqz v6, :cond_e

    .line 343
    .line 344
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    if-eqz v6, :cond_c

    .line 353
    .line 354
    iget-object v2, v1, Lc/d;->d:Ljava/util/HashMap;

    .line 355
    .line 356
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    check-cast v2, Lc/b;

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_c
    new-instance v6, Lc/b;

    .line 368
    .line 369
    invoke-direct {v6, v1, v2}, Lc/b;-><init>(Lc/d;Lc/c;)V

    .line 370
    .line 371
    .line 372
    invoke-static {v11}, La/j;->f(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-static {v6, v2}, Lc/b;->f(Lc/b;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v6}, Lc/b;->c(Lc/b;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-static {v2}, La/j;->e(Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    invoke-static {v6, v2}, Lc/b;->e(Lc/b;I)V

    .line 388
    .line 389
    .line 390
    move-object v2, v6

    .line 391
    :goto_a
    invoke-static {v2}, Lc/b;->d(Lc/b;)[I

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    aget v8, v6, v12

    .line 396
    .line 397
    add-int/lit8 v8, v8, 0x1

    .line 398
    .line 399
    aput v8, v6, v12

    .line 400
    .line 401
    const/4 v6, 0x6

    .line 402
    if-le v8, v6, :cond_d

    .line 403
    .line 404
    invoke-static {v2}, Lc/b;->d(Lc/b;)[I

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    aput v6, v8, v12

    .line 409
    .line 410
    :cond_d
    iget-object v6, v1, Lc/d;->d:Ljava/util/HashMap;

    .line 411
    .line 412
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    :cond_e
    :goto_b
    move v9, v12

    .line 420
    move v8, v13

    .line 421
    goto :goto_c

    .line 422
    :cond_f
    move/from16 v16, v6

    .line 423
    .line 424
    :goto_c
    add-int/lit8 v0, v0, -0x1

    .line 425
    .line 426
    move/from16 v6, v16

    .line 427
    .line 428
    goto/16 :goto_1

    .line 429
    .line 430
    :cond_10
    iget-object v0, v1, Lc/d;->d:Ljava/util/HashMap;

    .line 431
    .line 432
    if-eqz v0, :cond_11

    .line 433
    .line 434
    invoke-virtual {v1, v5, v4}, Lc/d;->f(II)V

    .line 435
    .line 436
    .line 437
    :cond_11
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    .line 438
    .line 439
    const-string v2, "Debug calCpuRuntimeStats - end"

    .line 440
    .line 441
    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    .line 443
    .line 444
    monitor-exit p0

    .line 445
    return-void

    .line 446
    :goto_d
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    throw v0
.end method

.method public j(Lc/f;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lc/f;->f()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lc/f;->a()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sput p0, Lc/d;->x:I

    .line 14
    .line 15
    invoke-virtual {p1}, Lc/f;->h()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    div-int/lit8 p0, p0, 0x3c

    .line 20
    .line 21
    sput p0, Lc/d;->A:I

    .line 22
    .line 23
    invoke-virtual {p1}, Lc/f;->h()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    sput p0, Lc/d;->H:I

    .line 28
    .line 29
    sput v1, Lc/d;->E:I

    .line 30
    .line 31
    sget p0, Lc/d;->z:I

    .line 32
    .line 33
    if-ne p0, v0, :cond_0

    .line 34
    .line 35
    sget p0, Lc/d;->A:I

    .line 36
    .line 37
    sput p0, Lc/d;->z:I

    .line 38
    .line 39
    :cond_0
    sget p0, Lc/d;->A:I

    .line 40
    .line 41
    if-eq p0, v0, :cond_5

    .line 42
    .line 43
    sget p0, Lc/d;->E:I

    .line 44
    .line 45
    if-ne p0, v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {p1}, Lc/f;->f()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 v2, 0x2

    .line 52
    if-ne p0, v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {p1}, Lc/f;->h()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    sget v2, Lc/d;->H:I

    .line 59
    .line 60
    sub-int/2addr p0, v2

    .line 61
    const/16 v2, 0xa

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    if-ge p0, v2, :cond_1

    .line 65
    .line 66
    sput v3, Lc/d;->E:I

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Lc/f;->h()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    div-int/lit8 p0, p0, 0x3c

    .line 74
    .line 75
    sput p0, Lc/d;->C:I

    .line 76
    .line 77
    sput v3, Lc/d;->E:I

    .line 78
    .line 79
    sget p0, Lc/d;->A:I

    .line 80
    .line 81
    rem-int/lit8 p0, p0, 0x18

    .line 82
    .line 83
    sget v2, Lc/d;->x:I

    .line 84
    .line 85
    if-eq v2, v0, :cond_3

    .line 86
    .line 87
    sget-object v3, Lc/d;->M:[I

    .line 88
    .line 89
    aget v4, v3, p0

    .line 90
    .line 91
    const/16 v5, 0x12c

    .line 92
    .line 93
    if-ge v4, v5, :cond_2

    .line 94
    .line 95
    sget-object v5, Lc/d;->O:[[I

    .line 96
    .line 97
    aget-object v5, v5, p0

    .line 98
    .line 99
    aput v2, v5, v4

    .line 100
    .line 101
    aget v2, v3, p0

    .line 102
    .line 103
    add-int/2addr v2, v1

    .line 104
    aput v2, v3, p0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    rem-int/2addr v4, v5

    .line 108
    aput v4, v3, p0

    .line 109
    .line 110
    sget-object v4, Lc/d;->N:[I

    .line 111
    .line 112
    aget v5, v4, p0

    .line 113
    .line 114
    add-int/2addr v5, v1

    .line 115
    aput v5, v4, p0

    .line 116
    .line 117
    sget-object v4, Lc/d;->O:[[I

    .line 118
    .line 119
    aget-object v4, v4, p0

    .line 120
    .line 121
    aget v5, v3, p0

    .line 122
    .line 123
    aput v2, v4, v5

    .line 124
    .line 125
    aget v2, v3, p0

    .line 126
    .line 127
    add-int/2addr v2, v1

    .line 128
    aput v2, v3, p0

    .line 129
    .line 130
    :goto_0
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "charging slot - time s: "

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    sget v3, Lc/d;->H:I

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, "["

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    sget v4, Lc/d;->A:I

    .line 153
    .line 154
    rem-int/lit8 v4, v4, 0x18

    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v4, "] / time e "

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lc/f;->h()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    sget p1, Lc/d;->C:I

    .line 175
    .line 176
    rem-int/lit8 p1, p1, 0x18

    .line 177
    .line 178
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p1, "] / batt:"

    .line 182
    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    sget p1, Lc/d;->x:I

    .line 187
    .line 188
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sput v0, Lc/d;->x:I

    .line 199
    .line 200
    :cond_3
    sget p0, Lc/d;->A:I

    .line 201
    .line 202
    :goto_1
    sget p1, Lc/d;->C:I

    .line 203
    .line 204
    if-gt p0, p1, :cond_4

    .line 205
    .line 206
    sget-object p1, Lc/d;->o:[I

    .line 207
    .line 208
    rem-int/lit8 v0, p0, 0x18

    .line 209
    .line 210
    aget v2, p1, v0

    .line 211
    .line 212
    add-int/2addr v2, v1

    .line 213
    aput v2, p1, v0

    .line 214
    .line 215
    add-int/lit8 p0, p0, 0x1

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_4
    sget p0, Lc/d;->G:I

    .line 219
    .line 220
    add-int/2addr p0, v1

    .line 221
    sput p0, Lc/d;->G:I

    .line 222
    .line 223
    :cond_5
    return-void
.end method

.method public k(Lc/f;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lc/f;->f()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lc/f;->a()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    sput p0, Lc/d;->y:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lc/f;->h()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    div-int/lit8 p0, p0, 0x3c

    .line 19
    .line 20
    sput p0, Lc/d;->B:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lc/f;->h()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    sput p0, Lc/d;->I:I

    .line 27
    .line 28
    sput v0, Lc/d;->F:I

    .line 29
    .line 30
    :cond_0
    sget p0, Lc/d;->B:I

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    if-eq p0, v1, :cond_3

    .line 34
    .line 35
    sget p0, Lc/d;->F:I

    .line 36
    .line 37
    if-ne p0, v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lc/f;->f()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const/4 v2, 0x2

    .line 44
    if-ne p0, v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lc/f;->h()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    sget v2, Lc/d;->I:I

    .line 51
    .line 52
    sub-int/2addr p0, v2

    .line 53
    const/16 v2, 0xa

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-ge p0, v2, :cond_1

    .line 57
    .line 58
    sput v3, Lc/d;->F:I

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Lc/f;->h()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    div-int/lit8 p0, p0, 0x3c

    .line 66
    .line 67
    sput p0, Lc/d;->D:I

    .line 68
    .line 69
    sput v3, Lc/d;->F:I

    .line 70
    .line 71
    sget p0, Lc/d;->B:I

    .line 72
    .line 73
    rem-int/lit8 p0, p0, 0x18

    .line 74
    .line 75
    sget v2, Lc/d;->y:I

    .line 76
    .line 77
    if-eq v2, v1, :cond_3

    .line 78
    .line 79
    sget-object v3, Lc/d;->P:[I

    .line 80
    .line 81
    aget v4, v3, p0

    .line 82
    .line 83
    const/16 v5, 0x12c

    .line 84
    .line 85
    if-ge v4, v5, :cond_2

    .line 86
    .line 87
    sget-object v5, Lc/d;->R:[[I

    .line 88
    .line 89
    aget-object v5, v5, p0

    .line 90
    .line 91
    aput v2, v5, v4

    .line 92
    .line 93
    aget v2, v3, p0

    .line 94
    .line 95
    add-int/2addr v2, v0

    .line 96
    aput v2, v3, p0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    rem-int/2addr v4, v5

    .line 100
    aput v4, v3, p0

    .line 101
    .line 102
    sget-object v4, Lc/d;->Q:[I

    .line 103
    .line 104
    aget v5, v4, p0

    .line 105
    .line 106
    add-int/2addr v5, v0

    .line 107
    aput v5, v4, p0

    .line 108
    .line 109
    sget-object v4, Lc/d;->R:[[I

    .line 110
    .line 111
    aget-object v4, v4, p0

    .line 112
    .line 113
    aget v5, v3, p0

    .line 114
    .line 115
    aput v2, v4, v5

    .line 116
    .line 117
    aget v2, v3, p0

    .line 118
    .line 119
    add-int/2addr v2, v0

    .line 120
    aput v2, v3, p0

    .line 121
    .line 122
    :goto_0
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "charging slot N - time s: "

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    sget v2, Lc/d;->I:I

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, "["

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    sget v3, Lc/d;->B:I

    .line 145
    .line 146
    rem-int/lit8 v3, v3, 0x18

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v3, "] / time e "

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lc/f;->h()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    sget p1, Lc/d;->D:I

    .line 167
    .line 168
    rem-int/lit8 p1, p1, 0x18

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p1, "] / batt:"

    .line 174
    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    sget p1, Lc/d;->y:I

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sput v1, Lc/d;->y:I

    .line 191
    .line 192
    :cond_3
    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    sget-object p0, Lc/d;->h:Lc/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc/e;->i()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, La/j;->i()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, La/j;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sget-object v0, Lc/d;->h:Lc/e;

    .line 15
    .line 16
    sget-object v1, Lc/d;->T:[I

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    const-string v3, "SCREEN"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1, v2, p0}, Lc/e;->t(Ljava/lang/String;[III)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public declared-synchronized m(Z)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, La/j;->i()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    div-int/lit16 v1, v0, 0x5a0

    .line 7
    .line 8
    sget-object v2, Lc/d;->e:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "checkScreenTime screenOn : "

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, "["

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget v4, Lc/d;->Z:I

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, "]"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget v3, Lc/d;->c0:I

    .line 46
    .line 47
    sub-int v4, v1, v3

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    const/4 v6, 0x0

    .line 51
    const/16 v7, 0x5a0

    .line 52
    .line 53
    if-ne v4, v5, :cond_2

    .line 54
    .line 55
    sput v1, Lc/d;->c0:I

    .line 56
    .line 57
    const/16 v1, 0x18

    .line 58
    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lc/d;->N(I)V

    .line 62
    .line 63
    .line 64
    sget v3, Lc/d;->a0:I

    .line 65
    .line 66
    add-int/2addr v3, v7

    .line 67
    rem-int/lit16 v4, v3, 0x5a0

    .line 68
    .line 69
    sub-int/2addr v3, v4

    .line 70
    sput v3, Lc/d;->a0:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_0
    invoke-virtual {p0, v1}, Lc/d;->L(I)V

    .line 77
    .line 78
    .line 79
    sget v3, Lc/d;->b0:I

    .line 80
    .line 81
    add-int/2addr v3, v7

    .line 82
    rem-int/lit16 v4, v3, 0x5a0

    .line 83
    .line 84
    sub-int/2addr v3, v4

    .line 85
    sput v3, Lc/d;->b0:I

    .line 86
    .line 87
    :goto_0
    invoke-direct {p0}, Lc/d;->y()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {}, La/j;->i()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    sub-int/2addr v4, v7

    .line 96
    invoke-static {v4}, La/j;->c(I)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    sget-object v8, Lc/d;->g:Lc/d;

    .line 101
    .line 102
    invoke-virtual {v8, v4}, Lc/d;->n(I)V

    .line 103
    .line 104
    .line 105
    const-string v4, "ScreenTime Day report"

    .line 106
    .line 107
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move v2, v6

    .line 111
    :goto_1
    if-ge v2, v1, :cond_1

    .line 112
    .line 113
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    .line 114
    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v9, "screenSlot["

    .line 121
    .line 122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v9, "] : "

    .line 129
    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    sget-object v9, Lc/d;->T:[I

    .line 134
    .line 135
    aget v9, v9, v2

    .line 136
    .line 137
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v4, v8}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    iget-object v2, p0, Lc/d;->b:La/f;

    .line 151
    .line 152
    sget-object v4, Lc/d;->T:[I

    .line 153
    .line 154
    invoke-virtual {v2, v4, v1, v3}, La/f;->h([III)V

    .line 155
    .line 156
    .line 157
    sget-object v1, Lc/d;->T:[I

    .line 158
    .line 159
    const/4 v2, -0x1

    .line 160
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_2
    if-eq v3, v1, :cond_3

    .line 165
    .line 166
    sput v1, Lc/d;->c0:I

    .line 167
    .line 168
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 169
    .line 170
    sput v0, Lc/d;->a0:I

    .line 171
    .line 172
    invoke-static {v0}, La/j;->h(I)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-virtual {p0, p1}, Lc/d;->L(I)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :cond_4
    sget p1, Lc/d;->a0:I

    .line 182
    .line 183
    if-le p1, v0, :cond_5

    .line 184
    .line 185
    sget-object p1, Lc/d;->e:Ljava/lang/String;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v2, "Error "

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    sget v2, Lc/d;->a0:I

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v2, " "

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {p1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_5
    sput v0, Lc/d;->b0:I

    .line 219
    .line 220
    sub-int v1, v0, p1

    .line 221
    .line 222
    if-ge v1, v7, :cond_c

    .line 223
    .line 224
    invoke-static {p1}, La/j;->h(I)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-static {v0}, La/j;->h(I)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-ne p1, v2, :cond_7

    .line 233
    .line 234
    sget-object v0, Lc/d;->T:[I

    .line 235
    .line 236
    aget v2, v0, p1

    .line 237
    .line 238
    if-gez v2, :cond_6

    .line 239
    .line 240
    aput v6, v0, p1

    .line 241
    .line 242
    :cond_6
    aget v2, v0, p1

    .line 243
    .line 244
    add-int/2addr v2, v1

    .line 245
    aput v2, v0, p1

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_7
    sget v1, Lc/d;->a0:I

    .line 249
    .line 250
    rem-int/lit8 v1, v1, 0x3c

    .line 251
    .line 252
    rsub-int/lit8 v1, v1, 0x3c

    .line 253
    .line 254
    sget-object v3, Lc/d;->T:[I

    .line 255
    .line 256
    aget v4, v3, p1

    .line 257
    .line 258
    if-gez v4, :cond_8

    .line 259
    .line 260
    aput v6, v3, p1

    .line 261
    .line 262
    :cond_8
    aget v4, v3, p1

    .line 263
    .line 264
    add-int/2addr v4, v1

    .line 265
    aput v4, v3, p1

    .line 266
    .line 267
    add-int/2addr p1, v5

    .line 268
    :goto_3
    if-ge p1, v2, :cond_a

    .line 269
    .line 270
    sget-object v1, Lc/d;->T:[I

    .line 271
    .line 272
    aget v3, v1, p1

    .line 273
    .line 274
    if-gez v3, :cond_9

    .line 275
    .line 276
    aput v6, v1, p1

    .line 277
    .line 278
    :cond_9
    aget v3, v1, p1

    .line 279
    .line 280
    add-int/lit8 v3, v3, 0x3c

    .line 281
    .line 282
    aput v3, v1, p1

    .line 283
    .line 284
    add-int/lit8 p1, p1, 0x1

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_a
    rem-int/lit8 v0, v0, 0x3c

    .line 288
    .line 289
    sget-object p1, Lc/d;->T:[I

    .line 290
    .line 291
    aget v1, p1, v2

    .line 292
    .line 293
    if-gez v1, :cond_b

    .line 294
    .line 295
    aput v6, p1, v2

    .line 296
    .line 297
    :cond_b
    aget v1, p1, v2

    .line 298
    .line 299
    add-int/2addr v1, v0

    .line 300
    aput v1, p1, v2

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_c
    sget-object p1, Lc/d;->e:Ljava/lang/String;

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v2, "Can\'t handle, deltaTime : "

    .line 311
    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {p1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .line 324
    .line 325
    :goto_4
    monitor-exit p0

    .line 326
    return-void

    .line 327
    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    throw p1
.end method

.method public declared-synchronized n(I)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lc/d;->h:Lc/e;

    .line 3
    .line 4
    const-string v1, "QFIND_"

    .line 5
    .line 6
    invoke-static {}, La/j;->m()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const-string v3, "SCREEN"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lc/e;->o(Ljava/lang/String;ILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    sget-object v2, Lc/d;->h:Lc/e;

    .line 22
    .line 23
    const-string v3, "SCREEN"

    .line 24
    .line 25
    invoke-static {}, La/j;->m()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    sget-object v5, Lc/d;->T:[I

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    move v6, p1

    .line 33
    invoke-virtual/range {v2 .. v7}, Lc/e;->f(Ljava/lang/String;I[III)V

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x5a

    .line 37
    .line 38
    if-lt v0, p1, :cond_1

    .line 39
    .line 40
    sget-object p1, Lc/d;->h:Lc/e;

    .line 41
    .line 42
    const-string v0, "QFIND_"

    .line 43
    .line 44
    const-string v1, "SCREEN"

    .line 45
    .line 46
    invoke-static {}, La/j;->m()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Lc/e;->w(Ljava/lang/String;Ljava/lang/String;I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    long-to-int v6, v0

    .line 55
    sget-object v2, Lc/d;->h:Lc/e;

    .line 56
    .line 57
    const-string v3, "SCREEN"

    .line 58
    .line 59
    invoke-static {}, La/j;->m()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    sget-object v5, Lc/d;->T:[I

    .line 64
    .line 65
    const/4 v7, 0x2

    .line 66
    invoke-virtual/range {v2 .. v7}, Lc/e;->f(Ljava/lang/String;I[III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object p1, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p1
.end method

.method public declared-synchronized o()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lc/d;->Z:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lc/d;->m(Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lc/d;->m(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method

.method public declared-synchronized p(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    :try_start_0
    sput v0, Lc/d;->Z:I

    .line 8
    .line 9
    invoke-static {v0}, Lg/b;->o(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lc/d;->m(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p1
.end method

.method public q()V
    .locals 1

    .line 1
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "clearPowerInfo"

    .line 4
    .line 5
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lc/d;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public r(II)V
    .locals 0

    .line 1
    if-gez p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x7

    .line 4
    if-ne p1, p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "please select 1 ~ 7 value for option."

    .line 10
    .line 11
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    sget-object p0, Lc/d;->u:[I

    .line 16
    .line 17
    aput p2, p0, p1

    .line 18
    .line 19
    return-void
.end method

.method public t(I)I
    .locals 1

    .line 1
    const/4 p0, 0x7

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ge p1, p0, :cond_0

    .line 4
    .line 5
    add-int/2addr p1, v0

    .line 6
    return p1

    .line 7
    :cond_0
    return v0
.end method

.method public u(II)V
    .locals 8

    .line 1
    invoke-static {}, La/j;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, La/j;->a()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    sput v2, Lc/d;->x:I

    .line 11
    .line 12
    sput v2, Lc/d;->z:I

    .line 13
    .line 14
    sput v2, Lc/d;->A:I

    .line 15
    .line 16
    sput v2, Lc/d;->C:I

    .line 17
    .line 18
    sput v2, Lc/d;->E:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    sput v3, Lc/d;->G:I

    .line 22
    .line 23
    sput v2, Lc/d;->y:I

    .line 24
    .line 25
    sput v2, Lc/d;->B:I

    .line 26
    .line 27
    sput v2, Lc/d;->D:I

    .line 28
    .line 29
    sput v2, Lc/d;->F:I

    .line 30
    .line 31
    sget-object v2, Lc/d;->e:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v5, "getUMBL the date : "

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move v2, v3

    .line 54
    :goto_0
    sget-object v4, Lc/d;->M:[I

    .line 55
    .line 56
    array-length v5, v4

    .line 57
    if-ge v2, v5, :cond_0

    .line 58
    .line 59
    aput v3, v4, v2

    .line 60
    .line 61
    sget-object v4, Lc/d;->N:[I

    .line 62
    .line 63
    aput v3, v4, v2

    .line 64
    .line 65
    sget-object v4, Lc/d;->P:[I

    .line 66
    .line 67
    aput v3, v4, v2

    .line 68
    .line 69
    sget-object v4, Lc/d;->Q:[I

    .line 70
    .line 71
    aput v3, v4, v2

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move v2, v3

    .line 77
    :goto_1
    sget-object v4, Lc/d;->o:[I

    .line 78
    .line 79
    array-length v5, v4

    .line 80
    if-ge v2, v5, :cond_1

    .line 81
    .line 82
    aput v3, v4, v2

    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const/4 v2, 0x1

    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    :cond_2
    :goto_2
    if-ge v3, v4, :cond_8

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    check-cast v5, Lc/f;

    .line 105
    .line 106
    invoke-virtual {v5}, Lc/f;->h()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    div-int/lit8 v6, v6, 0x3c

    .line 111
    .line 112
    div-int/lit8 v6, v6, 0x18

    .line 113
    .line 114
    if-ge v6, v1, :cond_2

    .line 115
    .line 116
    invoke-virtual {p0, v5}, Lc/d;->j(Lc/f;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    if-ne p1, v2, :cond_5

    .line 121
    .line 122
    sget-object v4, Lc/d;->k:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    :cond_4
    :goto_3
    if-ge v3, v5, :cond_8

    .line 129
    .line 130
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    check-cast v6, Lc/f;

    .line 137
    .line 138
    invoke-virtual {v6}, Lc/f;->h()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    div-int/lit8 v7, v7, 0x3c

    .line 143
    .line 144
    div-int/lit8 v7, v7, 0x18

    .line 145
    .line 146
    if-ge v7, v1, :cond_4

    .line 147
    .line 148
    invoke-virtual {v6}, Lc/f;->d()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-ne v7, v0, :cond_4

    .line 153
    .line 154
    invoke-virtual {p0, v6}, Lc/d;->j(Lc/f;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    const/4 v0, 0x2

    .line 159
    if-ne p1, v0, :cond_8

    .line 160
    .line 161
    invoke-virtual {p0, p2}, Lc/d;->t(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v6, "To day: "

    .line 173
    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v6, " The Next day: "

    .line 181
    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-static {v4, v5}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-object v4, Lc/d;->k:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    :cond_6
    :goto_4
    if-ge v3, v5, :cond_8

    .line 202
    .line 203
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 208
    .line 209
    check-cast v6, Lc/f;

    .line 210
    .line 211
    invoke-virtual {v6}, Lc/f;->h()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    div-int/lit8 v7, v7, 0x3c

    .line 216
    .line 217
    div-int/lit8 v7, v7, 0x18

    .line 218
    .line 219
    if-ge v7, v1, :cond_6

    .line 220
    .line 221
    invoke-virtual {v6}, Lc/f;->d()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-ne v7, p2, :cond_7

    .line 226
    .line 227
    invoke-virtual {p0, v6}, Lc/d;->j(Lc/f;)V

    .line 228
    .line 229
    .line 230
    :cond_7
    invoke-virtual {v6}, Lc/f;->d()I

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-ne v7, v0, :cond_6

    .line 235
    .line 236
    invoke-virtual {p0, v6}, Lc/d;->k(Lc/f;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    sget v0, Lc/d;->G:I

    .line 241
    .line 242
    if-le v0, v2, :cond_9

    .line 243
    .line 244
    invoke-direct {p0, v0}, Lc/d;->i(I)V

    .line 245
    .line 246
    .line 247
    :cond_9
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    .line 248
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v1, "option : "

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string p1, " / "

    .line 263
    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method public v(I[II)[I
    .locals 8

    .line 1
    sget-object p2, Lc/d;->M:[I

    .line 2
    .line 3
    sget-object v0, Lc/d;->N:[I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object v2, Lc/d;->r:[I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-ne p3, v1, :cond_1

    .line 12
    .line 13
    sget-object v2, Lc/d;->s:[I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object v2, Lc/d;->t:[I

    .line 17
    .line 18
    sget-object p2, Lc/d;->P:[I

    .line 19
    .line 20
    sget-object v0, Lc/d;->Q:[I

    .line 21
    .line 22
    :goto_0
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_1
    array-length v5, v2

    .line 25
    if-ge v4, v5, :cond_2

    .line 26
    .line 27
    aput v3, v2, v4

    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_2
    array-length v4, v2

    .line 33
    if-ge v3, v4, :cond_7

    .line 34
    .line 35
    aget v4, p2, v3

    .line 36
    .line 37
    if-lez v4, :cond_4

    .line 38
    .line 39
    aget v5, v0, v3

    .line 40
    .line 41
    if-nez v5, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v3, v4, v2, p3}, Lc/d;->w(II[II)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    const/16 v4, 0x12c

    .line 48
    .line 49
    invoke-virtual {p0, v3, v4, v2, p3}, Lc/d;->w(II[II)V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_3
    const-string v4, "] :"

    .line 53
    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    sget-object v5, Lc/d;->e:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v7, "battLev E portion["

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    sget-object v4, Lc/d;->r:[I

    .line 75
    .line 76
    aget v4, v4, v3

    .line 77
    .line 78
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v5, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    if-ne p3, v1, :cond_6

    .line 90
    .line 91
    sget-object v5, Lc/d;->e:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v7, "battLev D portion["

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    sget-object v4, Lc/d;->s:[I

    .line 110
    .line 111
    aget v4, v4, v3

    .line 112
    .line 113
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v5, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    sget-object v5, Lc/d;->e:Ljava/lang/String;

    .line 125
    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v7, "battLev D-N portion["

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    sget-object v4, Lc/d;->t:[I

    .line 143
    .line 144
    aget v4, v4, v3

    .line 145
    .line 146
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {v5, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    return-object v2
.end method

.method public w(II[II)V
    .locals 3

    .line 1
    invoke-static {p1, p2, p4}, Lc/d;->H(III)I

    move-result p0

    .line 2
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mean ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2, p0, p4}, Lc/d;->Q(IIII)I

    move-result p2

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sd_t ["

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p0, p2, :cond_0

    sub-int/2addr p0, p2

    .line 5
    aput p0, p3, p1

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    aput p0, p3, p1

    return-void
.end method

.method public x(I[I)[I
    .locals 7

    .line 1
    sget p0, Lc/d;->z:I

    .line 2
    .line 3
    rem-int/lit8 p2, p0, 0x18

    .line 4
    .line 5
    sget v0, Lc/d;->C:I

    .line 6
    .line 7
    rem-int/lit8 v1, v0, 0x18

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    rsub-int/lit8 v1, v1, 0x18

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    sub-int/2addr v0, p0

    .line 17
    add-int/2addr v0, p2

    .line 18
    div-int/2addr v0, v2

    .line 19
    sget-object p0, Lc/d;->p:[I

    .line 20
    .line 21
    sput v0, Lc/d;->v:I

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/2addr v0, v1

    .line 26
    sub-int/2addr v0, p0

    .line 27
    add-int/2addr v0, p2

    .line 28
    int-to-float p0, v0

    .line 29
    const/16 v0, 0xa8

    .line 30
    .line 31
    int-to-float v1, v0

    .line 32
    div-float/2addr p0, v1

    .line 33
    float-to-double v3, p0

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    double-to-int p0, v3

    .line 39
    sget-object v1, Lc/d;->q:[I

    .line 40
    .line 41
    sput p0, Lc/d;->w:I

    .line 42
    .line 43
    move v6, v0

    .line 44
    move v0, p0

    .line 45
    move-object p0, v1

    .line 46
    move v1, v6

    .line 47
    :goto_0
    sget-object v3, Lc/d;->e:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v5, "t_cnt:"

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, " denomi:"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " chg_eTime:"

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget v1, Lc/d;->C:I

    .line 76
    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, " chg_fTime:"

    .line 81
    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    sget v1, Lc/d;->z:I

    .line 86
    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v3, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    if-gt v0, v1, :cond_1

    .line 99
    .line 100
    move v0, v1

    .line 101
    move p2, v2

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 103
    move v2, v1

    .line 104
    :goto_1
    array-length v3, p0

    .line 105
    if-ge v2, v3, :cond_2

    .line 106
    .line 107
    aput v1, p0, v2

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    :goto_2
    array-length v2, p0

    .line 113
    if-ge v1, v2, :cond_5

    .line 114
    .line 115
    const/high16 v2, 0x42c80000    # 100.0f

    .line 116
    .line 117
    if-ge v1, p2, :cond_3

    .line 118
    .line 119
    sget-object v3, Lc/d;->o:[I

    .line 120
    .line 121
    aget v3, v3, v1

    .line 122
    .line 123
    int-to-float v3, v3

    .line 124
    int-to-float v4, v0

    .line 125
    div-float/2addr v3, v4

    .line 126
    mul-float/2addr v3, v2

    .line 127
    float-to-int v2, v3

    .line 128
    aput v2, p0, v1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    sget-object v3, Lc/d;->o:[I

    .line 132
    .line 133
    aget v3, v3, v1

    .line 134
    .line 135
    int-to-float v3, v3

    .line 136
    add-int/lit8 v4, v0, 0x1

    .line 137
    .line 138
    int-to-float v4, v4

    .line 139
    div-float/2addr v3, v4

    .line 140
    mul-float/2addr v3, v2

    .line 141
    float-to-int v2, v3

    .line 142
    aput v2, p0, v1

    .line 143
    .line 144
    :goto_3
    const-string v2, "] :"

    .line 145
    .line 146
    const-string v3, "charging portion["

    .line 147
    .line 148
    if-nez p1, :cond_4

    .line 149
    .line 150
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    .line 151
    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    sget-object v2, Lc/d;->p:[I

    .line 167
    .line 168
    aget v2, v2, v1

    .line 169
    .line 170
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v4, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_4
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    .line 182
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    sget-object v2, Lc/d;->q:[I

    .line 198
    .line 199
    aget v2, v2, v1

    .line 200
    .line 201
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-static {v4, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    return-object p0
.end method

.method public z()[I
    .locals 5

    .line 1
    const/16 p0, 0x18

    .line 2
    .line 3
    new-array v0, p0, [I

    .line 4
    .line 5
    invoke-static {}, La/j;->i()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit16 v1, v1, -0x5a0

    .line 10
    .line 11
    invoke-static {v1}, La/j;->c(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget-object v2, Lc/d;->e:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "Screen info - targetDay: "

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v2, Lc/d;->h:Lc/e;

    .line 38
    .line 39
    const-string v3, "SCREEN"

    .line 40
    .line 41
    invoke-virtual {v2, v3, v0, p0, v1}, Lc/e;->t(Ljava/lang/String;[III)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method
