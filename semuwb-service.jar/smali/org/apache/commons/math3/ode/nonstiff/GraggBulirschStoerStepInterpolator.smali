.class Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "GraggBulirschStoerStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132de50L


# instance fields
.field private currentDegree:I

.field private errfac:[D

.field private polynomials:[[D

.field private y0Dot:[D

.field private y1:[D

.field private y1Dot:[D

.field private yMidDots:[[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 114
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 115
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 116
    move-object v1, v0

    check-cast v1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 117
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 118
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;)V
    .locals 5
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    .line 159
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 161
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v0, v0

    .line 165
    .local v0, "dimension":I
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 166
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 167
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 168
    move-object v2, v1

    check-cast v2, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 171
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    if-nez v2, :cond_0

    .line 172
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    goto :goto_1

    .line 175
    :cond_0
    iget v1, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 177
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    new-array v3, v0, [D

    aput-object v3, v2, v1

    .line 178
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_1
    iget v1, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    iput v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    .line 184
    :goto_1
    return-void
.end method

.method constructor <init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 1
    .param p1, "y"    # [D
    .param p2, "y0Dot"    # [D
    .param p3, "y1"    # [D
    .param p4, "y1Dot"    # [D
    .param p5, "yMidDots"    # [[D
    .param p6, "forward"    # Z
    .param p7, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p8, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 142
    invoke-direct {p0, p1, p6, p7, p8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 143
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 144
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 145
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 146
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 148
    array-length v0, p5

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 150
    return-void
.end method

.method private resetTables(I)V
    .locals 12
    .param p1, "maxDegree"    # I

    .line 193
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 194
    move-object v1, v0

    check-cast v1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    .line 195
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    goto/16 :goto_6

    .line 199
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [[D

    .line 200
    .local v1, "newPols":[[D
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v4, v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v2, v2

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 203
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v4, v4

    new-array v4, v4, [D

    aput-object v4, v1, v2

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 206
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 207
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v4, v4

    new-array v4, v4, [D

    aput-object v4, v1, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    .end local v2    # "i":I
    :cond_3
    :goto_2
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    .line 213
    const/4 v2, 0x4

    if-gt p1, v2, :cond_4

    .line 214
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    goto :goto_5

    .line 216
    :cond_4
    add-int/lit8 v0, p1, -0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 218
    add-int/lit8 v2, v0, 0x5

    .line 219
    .local v2, "ip5":I
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    mul-int v5, v2, v2

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v5

    aput-wide v7, v4, v0

    .line 220
    add-int/lit8 v4, v0, 0x1

    int-to-double v4, v4

    int-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    .line 221
    .local v4, "e":D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-gt v6, v0, :cond_5

    .line 222
    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    aget-wide v8, v7, v0

    add-int/lit8 v10, v6, 0x1

    int-to-double v10, v10

    div-double v10, v4, v10

    mul-double/2addr v8, v10

    aput-wide v8, v7, v0

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 217
    .end local v2    # "ip5":I
    .end local v4    # "e":D
    .end local v6    # "j":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 227
    .end local v0    # "i":I
    :cond_6
    :goto_5
    iput v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    .line 231
    .end local v1    # "newPols":[[D
    :goto_6
    return-void
.end method


# virtual methods
.method public computeCoefficients(ID)V
    .locals 35
    .param p1, "mu"    # I
    .param p2, "h"    # D

    .line 246
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v2, v2

    add-int/lit8 v3, v1, 0x4

    if-gt v2, v3, :cond_1

    .line 247
    :cond_0
    add-int/lit8 v2, v1, 0x4

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 250
    :cond_1
    add-int/lit8 v2, v1, 0x4

    iput v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    .line 252
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 254
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    aget-wide v3, v3, v2

    mul-double v3, v3, p2

    .line 255
    .local v3, "yp0":D
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    aget-wide v5, v5, v2

    mul-double v5, v5, p2

    .line 256
    .local v5, "yp1":D
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    aget-wide v7, v7, v2

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    aget-wide v9, v9, v2

    sub-double/2addr v7, v9

    .line 257
    .local v7, "ydiff":D
    sub-double v9, v7, v5

    .line 258
    .local v9, "aspl":D
    sub-double v11, v3, v7

    .line 260
    .local v11, "bspl":D
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    aget-wide v15, v15, v2

    aput-wide v15, v13, v2

    .line 261
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v15, 0x1

    aget-object v13, v13, v15

    aput-wide v7, v13, v2

    .line 262
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move/from16 v16, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    aput-wide v9, v13, v2

    .line 263
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/16 v17, 0x3

    aget-object v13, v13, v17

    aput-wide v11, v13, v2

    .line 265
    if-gez v1, :cond_2

    .line 266
    return-void

    .line 270
    :cond_2
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    aget-wide v18, v13, v2

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    aget-wide v20, v13, v2

    add-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    const-wide/high16 v22, 0x3fc0000000000000L    # 0.125

    add-double v24, v9, v11

    mul-double v24, v24, v22

    add-double v18, v18, v24

    .line 271
    .local v18, "ph0":D
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/16 v22, 0x4

    aget-object v13, v13, v22

    move/from16 v23, v14

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v14, v14, v16

    aget-wide v24, v14, v2

    sub-double v24, v24, v18

    const-wide/high16 v26, 0x4030000000000000L    # 16.0

    mul-double v24, v24, v26

    aput-wide v24, v13, v2

    .line 273
    if-lez v1, :cond_6

    .line 274
    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    sub-double v24, v9, v11

    mul-double v24, v24, v13

    add-double v24, v7, v24

    .line 275
    .local v24, "ph1":D
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v14, 0x5

    aget-object v13, v13, v14

    move/from16 v16, v14

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v14, v14, v15

    aget-wide v28, v14, v2

    sub-double v28, v28, v24

    mul-double v28, v28, v26

    aput-wide v28, v13, v2

    .line 277
    if-le v1, v15, :cond_5

    .line 278
    sub-double v13, v5, v3

    .line 279
    .local v13, "ph2":D
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/16 v28, 0x6

    aget-object v15, v15, v28

    move/from16 v28, v2

    .end local v2    # "i":I
    .local v28, "i":I
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v2, v2, v23

    aget-wide v29, v2, v28

    sub-double v29, v29, v13

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v2, v2, v22

    aget-wide v31, v2, v28

    add-double v29, v29, v31

    mul-double v29, v29, v26

    aput-wide v29, v15, v28

    .line 281
    move/from16 v2, v23

    if-le v1, v2, :cond_4

    .line 282
    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    sub-double v29, v11, v9

    mul-double v29, v29, v22

    .line 283
    .local v29, "ph3":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v15, 0x7

    aget-object v2, v2, v15

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v15, v15, v17

    aget-wide v22, v15, v28

    sub-double v22, v22, v29

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v15, v15, v16

    aget-wide v15, v15, v28

    const-wide/high16 v31, 0x4008000000000000L    # 3.0

    mul-double v15, v15, v31

    add-double v22, v22, v15

    mul-double v22, v22, v26

    aput-wide v22, v2, v28

    .line 285
    const/4 v2, 0x4

    .local v2, "j":I
    :goto_1
    if-gt v2, v1, :cond_3

    .line 286
    move-wide v15, v3

    .end local v3    # "yp0":D
    .local v15, "yp0":D
    int-to-double v3, v2

    mul-double v3, v3, v20

    add-int/lit8 v1, v2, -0x1

    move/from16 v17, v2

    .end local v2    # "j":I
    .local v17, "j":I
    int-to-double v1, v1

    mul-double/2addr v3, v1

    .line 287
    .local v3, "fac1":D
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    move-wide/from16 v22, v1

    add-int/lit8 v1, v17, -0x2

    int-to-double v1, v1

    mul-double v1, v1, v22

    move-wide/from16 v22, v1

    add-int/lit8 v1, v17, -0x3

    int-to-double v1, v1

    mul-double v1, v1, v22

    .line 288
    .local v1, "fac2":D
    move-wide/from16 v22, v1

    .end local v1    # "fac2":D
    .local v22, "fac2":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    add-int/lit8 v2, v17, 0x4

    aget-object v1, v1, v2

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v2, v2, v17

    aget-wide v31, v2, v28

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    add-int/lit8 v33, v17, 0x2

    aget-object v2, v2, v33

    aget-wide v33, v2, v28

    mul-double v33, v33, v3

    add-double v31, v31, v33

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v2, v2, v17

    aget-wide v33, v2, v28

    mul-double v33, v33, v22

    sub-double v31, v31, v33

    mul-double v31, v31, v26

    aput-wide v31, v1, v28

    .line 285
    .end local v3    # "fac1":D
    .end local v22    # "fac2":D
    add-int/lit8 v2, v17, 0x1

    move/from16 v1, p1

    move-wide v3, v15

    .end local v17    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    .end local v15    # "yp0":D
    .local v3, "yp0":D
    :cond_3
    move/from16 v17, v2

    move-wide v15, v3

    .end local v2    # "j":I
    .end local v3    # "yp0":D
    .restart local v15    # "yp0":D
    .restart local v17    # "j":I
    goto :goto_2

    .line 281
    .end local v15    # "yp0":D
    .end local v17    # "j":I
    .end local v29    # "ph3":D
    .restart local v3    # "yp0":D
    :cond_4
    move-wide v15, v3

    .end local v3    # "yp0":D
    .restart local v15    # "yp0":D
    goto :goto_2

    .line 277
    .end local v13    # "ph2":D
    .end local v15    # "yp0":D
    .end local v28    # "i":I
    .local v2, "i":I
    .restart local v3    # "yp0":D
    :cond_5
    move/from16 v28, v2

    move-wide v15, v3

    .end local v2    # "i":I
    .end local v3    # "yp0":D
    .restart local v15    # "yp0":D
    .restart local v28    # "i":I
    goto :goto_2

    .line 273
    .end local v15    # "yp0":D
    .end local v24    # "ph1":D
    .end local v28    # "i":I
    .restart local v2    # "i":I
    .restart local v3    # "yp0":D
    :cond_6
    move/from16 v28, v2

    move-wide v15, v3

    .line 252
    .end local v2    # "i":I
    .end local v3    # "yp0":D
    .end local v5    # "yp1":D
    .end local v7    # "ydiff":D
    .end local v9    # "aspl":D
    .end local v11    # "bspl":D
    .end local v18    # "ph0":D
    .restart local v28    # "i":I
    :goto_2
    add-int/lit8 v2, v28, 0x1

    move/from16 v1, p1

    .end local v28    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 297
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 43
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v1, v1

    .line 322
    .local v1, "dimension":I
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, p1

    .line 323
    .local v4, "oneMinusTheta":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v6, p1, v6

    .line 324
    .local v6, "theta05":D
    mul-double v8, p1, v4

    .line 325
    .local v8, "tOmT":D
    mul-double v10, v8, v8

    .line 326
    .local v10, "t4":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v14, v8, v12

    mul-double v16, p1, v12

    sub-double v16, v2, v16

    mul-double v14, v14, v16

    .line 327
    .local v14, "t4Dot":D
    move-wide/from16 v16, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    div-double v2, v16, v2

    .line 328
    .local v2, "dot1":D
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v20, p1, v18

    sub-double v12, v12, v20

    mul-double v12, v12, p1

    move-wide/from16 v20, v2

    .end local v2    # "dot1":D
    .local v20, "dot1":D
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    div-double/2addr v12, v2

    .line 329
    .local v12, "dot2":D
    mul-double v18, v18, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    sub-double v18, v18, v2

    mul-double v18, v18, p1

    add-double v18, v18, v16

    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    div-double v18, v18, v2

    .line 331
    .local v18, "dot3":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v22, 0x1

    if-ge v2, v1, :cond_2

    .line 333
    const/16 v23, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v23

    aget-wide v23, v3, v2

    .line 334
    .local v23, "p0":D
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v22

    aget-wide v25, v3, v2

    .line 335
    .local v25, "p1":D
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/16 v27, 0x2

    aget-object v3, v3, v27

    aget-wide v27, v3, v2

    .line 336
    .local v27, "p2":D
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move/from16 v29, v2

    .end local v2    # "i":I
    .local v29, "i":I
    const/4 v2, 0x3

    aget-object v3, v3, v2

    aget-wide v30, v3, v29

    .line 337
    .local v30, "p3":D
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedState:[D

    mul-double v32, v27, p1

    mul-double v34, v30, v4

    add-double v32, v32, v34

    mul-double v32, v32, v4

    add-double v32, v25, v32

    mul-double v32, v32, p1

    add-double v32, v23, v32

    aput-wide v32, v3, v29

    .line 338
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    mul-double v32, v20, v25

    mul-double v34, v12, v27

    add-double v32, v32, v34

    mul-double v34, v18, v30

    add-double v32, v32, v34

    aput-wide v32, v3, v29

    .line 340
    iget v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-le v3, v2, :cond_1

    .line 341
    const-wide/16 v32, 0x0

    .line 342
    .local v32, "cDot":D
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    iget v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    aget-object v2, v3, v2

    aget-wide v2, v2, v29

    .line 343
    .local v2, "c":D
    move-wide/from16 v35, v2

    .end local v2    # "c":D
    .local v35, "c":D
    iget v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 344
    add-int/lit8 v3, v2, -0x3

    move/from16 v22, v2

    .end local v2    # "j":I
    .local v22, "j":I
    int-to-double v2, v3

    div-double v2, v16, v2

    .line 345
    .local v2, "d":D
    mul-double v37, v6, v32

    add-double v37, v37, v35

    mul-double v32, v2, v37

    .line 346
    move-wide/from16 v37, v2

    .end local v2    # "d":D
    .local v37, "d":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v2, v2, v22

    aget-wide v2, v2, v29

    mul-double v39, v35, v37

    mul-double v39, v39, v6

    add-double v35, v2, v39

    .line 343
    .end local v37    # "d":D
    add-int/lit8 v2, v22, -0x1

    .end local v22    # "j":I
    .local v2, "j":I
    goto :goto_1

    :cond_0
    move/from16 v22, v2

    .line 348
    .end local v2    # "j":I
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedState:[D

    aget-wide v37, v2, v29

    mul-double v39, v10, v35

    add-double v37, v37, v39

    aput-wide v37, v2, v29

    .line 349
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v37, v2, v29

    mul-double v39, v10, v32

    mul-double v41, v14, v35

    add-double v39, v39, v41

    move-object/from16 v22, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    div-double v39, v39, v2

    add-double v37, v37, v39

    aput-wide v37, v22, v29

    .line 331
    .end local v23    # "p0":D
    .end local v25    # "p1":D
    .end local v27    # "p2":D
    .end local v30    # "p3":D
    .end local v32    # "cDot":D
    .end local v35    # "c":D
    :cond_1
    add-int/lit8 v2, v29, 0x1

    .end local v29    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    :cond_2
    move/from16 v29, v2

    const/16 v23, 0x0

    .line 354
    .end local v2    # "i":I
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    const-wide/16 v16, 0x0

    cmpl-double v2, v2, v16

    if-nez v2, :cond_3

    .line 357
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v2, v2, v22

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    move/from16 v0, v23

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    :cond_3
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 236
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;)V

    return-object v0
.end method

.method public estimateError([D)D
    .locals 8
    .param p1, "scale"    # [D

    .line 304
    const-wide/16 v0, 0x0

    .line 305
    .local v0, "error":D
    iget v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 306
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 307
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    iget v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    aget-object v4, v4, v5

    aget-wide v4, v4, v2

    aget-wide v6, p1, v2

    div-double/2addr v4, v6

    .line 308
    .local v4, "e":D
    mul-double v6, v4, v4

    add-double/2addr v0, v6

    .line 306
    .end local v4    # "e":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "i":I
    :cond_0
    array-length v2, p1

    int-to-double v4, v2

    div-double v4, v0, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    iget v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    sub-int/2addr v6, v3

    aget-wide v2, v2, v6

    mul-double v0, v4, v2

    .line 312
    :cond_1
    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 9
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v0

    .line 389
    .local v0, "t":D
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v2, v2

    .line 392
    .local v2, "dimension":I
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 393
    .local v3, "degree":I
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 394
    iput v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    .line 396
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-gt v4, v5, :cond_2

    .line 397
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_2
    if-ge v5, v2, :cond_1

    .line 398
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v6, v6, v4

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    .line 397
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 396
    .end local v5    # "l":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 403
    .end local v4    # "k":I
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->setInterpolatedTime(D)V

    .line 405
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v0, v0

    .line 370
    .local v0, "dimension":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    .line 373
    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 374
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-gt v1, v2, :cond_2

    .line 375
    const/4 v2, 0x0

    .local v2, "l":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 376
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v1

    aget-wide v3, v3, v2

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 374
    .end local v2    # "l":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    .end local v1    # "k":I
    :cond_2
    return-void
.end method
