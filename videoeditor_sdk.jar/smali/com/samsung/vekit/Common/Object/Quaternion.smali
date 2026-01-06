.class public Lcom/samsung/vekit/Common/Object/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# static fields
.field public static final EPSILON:F = 1.0E-5f

.field public static final IDENTITY:Lcom/samsung/vekit/Common/Object/Quaternion;

.field public static final ZERO:Lcom/samsung/vekit/Common/Object/Quaternion;


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/vekit/Common/Object/Quaternion;->ZERO:Lcom/samsung/vekit/Common/Object/Quaternion;

    .line 15
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/vekit/Common/Object/Quaternion;->IDENTITY:Lcom/samsung/vekit/Common/Object/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 19
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 30
    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 31
    iput-wide p5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 32
    iput-wide p7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 33
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 23
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 24
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 25
    float-to-double v0, p4

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Object/Quaternion;)V
    .locals 2
    .param p1, "quaternion"    # Lcom/samsung/vekit/Common/Object/Quaternion;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-wide v0, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 37
    iget-wide v0, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 38
    iget-wide v0, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 39
    iget-wide v0, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Object/Vector3;F)V
    .locals 0
    .param p2, "angle"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 42
    .local p1, "axis":Lcom/samsung/vekit/Common/Object/Vector3;, "Lcom/samsung/vekit/Common/Object/Vector3<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    .line 44
    return-void
.end method

.method private clamp(FFF)F
    .locals 1
    .param p1, "data"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public add(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 11
    .param p1, "quaternion"    # Lcom/samsung/vekit/Common/Object/Quaternion;

    .line 220
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v3, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v9, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    add-double/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(DDDD)V

    return-object v0
.end method

.method public conjugate()V
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 239
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 240
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 241
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 242
    return-void
.end method

.method public divide(F)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 7
    .param p1, "scalar"    # F

    .line 190
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    .line 191
    .local v0, "quaternion":Lcom/samsung/vekit/Common/Object/Quaternion;
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 192
    return-object v0

    .line 195
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    .line 196
    .local v1, "invScalar":F
    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    double-to-float v2, v2

    mul-float/2addr v2, v1

    .line 197
    .local v2, "newX":F
    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    double-to-float v3, v3

    mul-float/2addr v3, v1

    .line 198
    .local v3, "newY":F
    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    double-to-float v4, v4

    mul-float/2addr v4, v1

    .line 199
    .local v4, "newZ":F
    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    double-to-float v5, v5

    mul-float/2addr v5, v1

    .line 200
    .local v5, "newW":F
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/vekit/Common/Object/Quaternion;->set(FFFF)V

    .line 201
    return-object v0
.end method

.method public dot(Lcom/samsung/vekit/Common/Object/Quaternion;)F
    .locals 6
    .param p1, "quaternion"    # Lcom/samsung/vekit/Common/Object/Quaternion;

    .line 234
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public equals(Lcom/samsung/vekit/Common/Object/Quaternion;D)Z
    .locals 6
    .param p1, "quaternion"    # Lcom/samsung/vekit/Common/Object/Quaternion;
    .param p2, "delta"    # D

    .line 299
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, p2

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    sub-double/2addr v2, v4

    .line 300
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, p2

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, p2

    if-gez v0, :cond_0

    .line 301
    return v1

    .line 304
    :cond_0
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    .line 305
    .local v0, "opposite":Lcom/samsung/vekit/Common/Object/Quaternion;
    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    neg-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 306
    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    neg-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 307
    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    neg-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 308
    iget-wide v2, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    neg-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 310
    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v4, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    sub-double/2addr v2, v4

    .line 311
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 310
    :goto_0
    return v1
.end method

.method public getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 29

    .line 139
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v1, v3

    .line 140
    .local v1, "xx":D
    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v5, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v3, v5

    .line 141
    .local v3, "xy":D
    iget-wide v5, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v5, v7

    .line 142
    .local v5, "yy":D
    iget-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v9, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v7, v9

    .line 143
    .local v7, "xz":D
    iget-wide v9, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v11, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v9, v11

    .line 144
    .local v9, "yz":D
    iget-wide v11, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v13, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v11, v13

    .line 145
    .local v11, "zz":D
    iget-wide v13, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    move-wide v15, v3

    .end local v3    # "xy":D
    .local v15, "xy":D
    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v13, v3

    .line 146
    .local v13, "xw":D
    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    move-wide/from16 v17, v3

    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double v3, v3, v17

    .line 147
    .local v3, "yw":D
    move-wide/from16 v17, v3

    .end local v3    # "yw":D
    .local v17, "yw":D
    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    move-wide/from16 v19, v3

    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double v3, v3, v19

    .line 148
    .local v3, "zw":D
    move-wide/from16 v19, v3

    .end local v3    # "zw":D
    .local v19, "zw":D
    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double v3, v3, v21

    .line 150
    .local v3, "ww":D
    new-instance v21, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    move-object/from16 v22, v21

    .line 151
    .local v22, "matrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    sub-double v23, v1, v5

    sub-double v23, v23, v11

    move-wide/from16 v25, v3

    .end local v3    # "ww":D
    .local v25, "ww":D
    add-double v3, v23, v25

    double-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v22

    .end local v22    # "matrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    .local v0, "matrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    invoke-virtual {v0, v4, v4, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 152
    add-double v21, v15, v19

    add-double v21, v21, v15

    move-wide/from16 v23, v5

    .end local v5    # "yy":D
    .local v23, "yy":D
    add-double v4, v21, v19

    double-to-float v4, v4

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 153
    sub-double v21, v7, v17

    add-double v21, v21, v7

    sub-double v5, v21, v17

    double-to-float v5, v5

    const/4 v6, 0x2

    invoke-virtual {v0, v3, v6, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 154
    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 156
    sub-double v27, v15, v19

    add-double v27, v27, v15

    sub-double v4, v27, v19

    double-to-float v4, v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 157
    neg-double v3, v1

    add-double v3, v3, v23

    sub-double/2addr v3, v11

    add-double v3, v3, v25

    double-to-float v3, v3

    invoke-virtual {v0, v5, v5, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 158
    add-double v3, v9, v13

    add-double/2addr v3, v9

    add-double/2addr v3, v13

    double-to-float v3, v3

    invoke-virtual {v0, v5, v6, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 159
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v3, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 161
    add-double v27, v7, v17

    add-double v27, v27, v7

    add-double v4, v27, v17

    double-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v4, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 162
    sub-double v4, v9, v13

    add-double/2addr v4, v9

    sub-double/2addr v4, v13

    double-to-float v4, v4

    const/4 v5, 0x1

    invoke-virtual {v0, v6, v5, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 163
    neg-double v3, v1

    sub-double v3, v3, v23

    add-double/2addr v3, v11

    add-double v3, v3, v25

    double-to-float v3, v3

    invoke-virtual {v0, v6, v6, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 164
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v3, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 166
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 167
    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 168
    invoke-virtual {v0, v3, v6, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 169
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 170
    return-object v0
.end method

.method public getPitch()D
    .locals 6

    .line 178
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRoll()D
    .locals 8

    .line 174
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRotation()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    .line 89
    .local v0, "matrix1":Lcom/samsung/vekit/Common/Object/Matrix4;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/vekit/Common/Object/Quaternion;->clamp(FFF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 90
    .local v3, "y":F
    invoke-virtual {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3feffffde7210be9L    # 0.999999

    cmpg-double v4, v4, v6

    const/4 v5, 0x1

    if-gez v4, :cond_0

    .line 91
    invoke-virtual {v0, v1, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v4

    neg-float v4, v4

    float-to-double v6, v4

    invoke-virtual {v0, v1, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v1

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 92
    .local v1, "x":F
    invoke-virtual {v0, v5, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    invoke-virtual {v0, v2, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v2

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .local v2, "z":F
    goto :goto_0

    .line 94
    .end local v1    # "x":F
    .end local v2    # "z":F
    :cond_0
    invoke-virtual {v0, v5, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v5, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 95
    .restart local v1    # "x":F
    const/4 v2, 0x0

    .line 98
    .restart local v2    # "z":F
    :goto_0
    new-instance v4, Lcom/samsung/vekit/Common/Object/Vector3;

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public getW()D
    .locals 2

    .line 291
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 267
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 275
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    return-wide v0
.end method

.method public getYaw()D
    .locals 8

    .line 182
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    return-wide v0
.end method

.method public invert()Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 2

    .line 245
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(Lcom/samsung/vekit/Common/Object/Quaternion;)V

    .line 246
    .local v0, "quaternion":Lcom/samsung/vekit/Common/Object/Quaternion;
    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->conjugate()V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Quaternion;->lengthSquared()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Quaternion;->divide(F)Lcom/samsung/vekit/Common/Object/Quaternion;

    move-result-object v1

    return-object v1
.end method

.method public length()F
    .locals 6

    .line 186
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lengthSquared()F
    .locals 6

    .line 216
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public multiply(F)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 11
    .param p1, "scalar"    # F

    .line 212
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    float-to-double v3, p1

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    float-to-double v5, p1

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    float-to-double v7, p1

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    float-to-double v9, p1

    mul-double/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(DDDD)V

    return-object v0
.end method

.method public multiply(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 13
    .param p1, "quaternion"    # Lcom/samsung/vekit/Common/Object/Quaternion;

    .line 205
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v3, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v9, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v9, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v9, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v9, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    mul-double/2addr v7, v9

    iget-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v11, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    iget-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v11, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    iget-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v11, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(DDDD)V

    return-object v0
.end method

.method public normalize()V
    .locals 5

    .line 251
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Quaternion;->length()F

    move-result v0

    .line 252
    .local v0, "vectorLength":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 253
    return-void

    .line 254
    :cond_0
    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 255
    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 256
    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 257
    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 258
    return-void
.end method

.method public normalized()Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 1

    .line 261
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(Lcom/samsung/vekit/Common/Object/Quaternion;)V

    .line 262
    .local v0, "retVector":Lcom/samsung/vekit/Common/Object/Quaternion;
    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->normalize()V

    .line 263
    return-object v0
.end method

.method public set(DDDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    .line 54
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 55
    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 56
    iput-wide p5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 57
    iput-wide p7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 58
    return-void
.end method

.method public set(FFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 47
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 48
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 49
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 50
    float-to-double v0, p4

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 51
    return-void
.end method

.method public setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V
    .locals 3
    .param p1, "matrix"    # Lcom/samsung/vekit/Common/Object/Matrix4;

    .line 131
    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;

    move-result-object v0

    .line 132
    .local v0, "quaternion":Lcom/samsung/vekit/Common/Object/Quaternion;
    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 133
    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 134
    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 135
    iget-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iput-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 136
    return-void
.end method

.method public setRotation(FFF)V
    .locals 11
    .param p1, "eulerX"    # F
    .param p2, "eulerY"    # F
    .param p3, "eulerZ"    # F

    .line 61
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 62
    .local v0, "radianX":F
    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 63
    .local v1, "radianY":F
    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 65
    .local v2, "radianZ":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 66
    .local v4, "c1":F
    div-float v5, v1, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 67
    .local v5, "c2":F
    div-float v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 69
    .local v6, "c3":F
    div-float v7, v0, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 70
    .local v7, "s1":F
    div-float v8, v1, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 71
    .local v8, "s2":F
    div-float v3, v2, v3

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v3, v9

    .line 73
    .local v3, "s3":F
    mul-float v9, v7, v5

    mul-float/2addr v9, v6

    mul-float v10, v4, v8

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 74
    mul-float v9, v4, v8

    mul-float/2addr v9, v6

    mul-float v10, v7, v5

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 75
    mul-float v9, v4, v5

    mul-float/2addr v9, v3

    mul-float v10, v7, v8

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 76
    mul-float v9, v4, v5

    mul-float/2addr v9, v6

    mul-float v10, v7, v8

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 77
    return-void
.end method

.method public setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V
    .locals 8
    .param p2, "degree"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 102
    .local p1, "axis":Lcom/samsung/vekit/Common/Object/Vector3;, "Lcom/samsung/vekit/Common/Object/Vector3<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 103
    .local v0, "divider":F
    new-instance v1, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .local v1, "normalizeAxis":Lcom/samsung/vekit/Common/Object/Vector3;, "Lcom/samsung/vekit/Common/Object/Vector3<Ljava/lang/Float;>;"
    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 106
    .local v2, "sinVal":F
    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 108
    .local v3, "cosVal":F
    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 109
    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 110
    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 111
    float-to-double v4, v3

    iput-wide v4, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 112
    return-void
.end method

.method public setRotation(Lcom/samsung/vekit/Common/Type/AxisType;F)V
    .locals 3
    .param p1, "axisType"    # Lcom/samsung/vekit/Common/Type/AxisType;
    .param p2, "degree"    # F

    .line 115
    sget-object v0, Lcom/samsung/vekit/Common/Object/Quaternion$1;->$SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/AxisType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 118
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 115
    const/4 v2, 0x0

    .line 118
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 115
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    goto :goto_0

    .line 121
    :pswitch_1
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v2, v1, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    .line 122
    goto :goto_0

    .line 118
    :pswitch_2
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    .line 119
    nop

    .line 127
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setW(D)V
    .locals 0
    .param p1, "w"    # D

    .line 295
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 296
    return-void
.end method

.method public setX(D)V
    .locals 0
    .param p1, "x"    # D

    .line 271
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 272
    return-void
.end method

.method public setY(D)V
    .locals 0
    .param p1, "y"    # D

    .line 279
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 280
    return-void
.end method

.method public setZ(D)V
    .locals 0
    .param p1, "z"    # D

    .line 287
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 288
    return-void
.end method

.method public substract(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 11
    .param p1, "quaternion"    # Lcom/samsung/vekit/Common/Object/Quaternion;

    .line 227
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-wide v3, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-wide v5, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-wide v7, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    sub-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    iget-wide v9, p1, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    sub-double/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(DDDD)V

    return-object v0
.end method
