.class public Lcom/samsung/vekit/Common/Object/Matrix4;
.super Ljava/lang/Object;
.source "Matrix4.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private matrix:[[D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    .line 14
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->identity()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Object/Matrix4;)V
    .locals 3
    .param p1, "matrix"    # Lcom/samsung/vekit/Common/Object/Matrix4;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    .line 19
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "array"    # [F

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set([F)V

    .line 33
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 3
    .param p1, "array"    # [[D

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set([[D)V

    .line 29
    return-void
.end method

.method private getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 293
    .local p1, "data":Lcom/samsung/vekit/Common/Object/Vector3;, "Lcom/samsung/vekit/Common/Object/Vector3<Ljava/lang/Float;>;"
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

    return v0
.end method


# virtual methods
.method public divide(D)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 7
    .param p1, "scalar"    # D

    .line 140
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "Matrix4"

    const-string v1, "Non zero divider required"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    return-object v0

    .line 145
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 146
    .local v0, "data":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 147
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 148
    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v1

    aget-wide v5, v5, v3

    div-double/2addr v5, p1

    aput-wide v5, v4, v3

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object v1
.end method

.method public get(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 67
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v0, v0, p2

    aget-wide v0, v0, p1

    double-to-float v0, v0

    return v0
.end method

.method public getAxisX()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-wide v4, v4, v2

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getAxisY()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-wide v4, v4, v2

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getAxisZ()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v2

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getColumn(I)Lcom/samsung/vekit/Common/Object/Vector4;
    .locals 3
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector4;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .local v0, "result":Lcom/samsung/vekit/Common/Object/Vector4;, "Lcom/samsung/vekit/Common/Object/Vector4<Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setX(Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setY(Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setZ(Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x3

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setW(Ljava/lang/Object;)V

    .line 100
    return-object v0
.end method

.method public getPosition()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 14

    .line 258
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    .line 259
    .local v0, "scaleX":D
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 260
    .local v2, "scaleY":D
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    .line 262
    .local v4, "scaleZ":D
    new-instance v6, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v6}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    .line 263
    .local v6, "scaleMatrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    double-to-float v7, v0

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v7}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 264
    double-to-float v7, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v9, v9, v7}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 265
    double-to-float v7, v4

    const/4 v10, 0x2

    invoke-virtual {v6, v10, v10, v7}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 266
    invoke-virtual {v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->inverse()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v7

    .line 268
    .local v7, "inverseMatrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    new-instance v11, Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object v12, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-direct {v11, v12}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    .line 269
    .local v11, "rotationMatrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 270
    invoke-virtual {v11, v12, v9, v13}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 271
    invoke-virtual {v11, v12, v10, v13}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 273
    invoke-virtual {v11, v7}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v8

    return-object v8
.end method

.method public getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 13

    .line 214
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    .line 215
    .local v0, "quaternion":Lcom/samsung/vekit/Common/Object/Quaternion;
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v3, v1, v2

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v5, 0x1

    aget-object v1, v1, v5

    aget-wide v6, v1, v5

    add-double/2addr v3, v6

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v6, 0x2

    aget-object v1, v1, v6

    aget-wide v7, v1, v6

    add-double/2addr v3, v7

    double-to-float v1, v3

    .line 216
    .local v1, "trace":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-lez v3, :cond_0

    .line 217
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v1

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 218
    .local v3, "s":F
    mul-float v7, v3, v4

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 219
    div-float/2addr v4, v3

    .line 220
    .end local v3    # "s":F
    .local v4, "s":F
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v7, v3, v5

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v6

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 221
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v2

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v6, v3

    iput-wide v6, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 222
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v6, v3, v2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v3, v2

    aget-wide v2, v2, v5

    sub-double/2addr v6, v2

    double-to-float v2, v6

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 223
    .end local v4    # "s":F
    goto/16 :goto_0

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v5

    cmpl-double v3, v7, v9

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v9, v3, v2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v11, v3, v6

    cmpl-double v3, v9, v11

    if-lez v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v9, v3, v2

    add-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v7, v3, v5

    sub-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v7, v3, v6

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 226
    .restart local v3    # "s":F
    mul-float v7, v3, v4

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 227
    div-float/2addr v4, v3

    .line 228
    .end local v3    # "s":F
    .restart local v4    # "s":F
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v5

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v2

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 229
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v2, v3, v2

    add-double/2addr v7, v2

    double-to-float v2, v7

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 230
    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v6

    aget-wide v2, v2, v5

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v7, v5

    aget-wide v5, v5, v6

    sub-double/2addr v2, v5

    double-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 231
    .end local v4    # "s":F
    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v5

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v11, v3, v6

    cmpl-double v3, v9, v11

    if-lez v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v5

    add-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v2

    sub-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v7, v3, v6

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 233
    .restart local v3    # "s":F
    mul-float v7, v3, v4

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 234
    div-float/2addr v4, v3

    .line 235
    .end local v3    # "s":F
    .restart local v4    # "s":F
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v5

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v9, v3, v2

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 236
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v5

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 237
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v2, v3, v2

    sub-double/2addr v7, v2

    double-to-float v2, v7

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 238
    .end local v4    # "s":F
    goto :goto_0

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v6

    add-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v2

    sub-double/2addr v9, v7

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v7, v3, v5

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 240
    .restart local v3    # "s":F
    mul-float v7, v3, v4

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    .line 241
    div-float/2addr v4, v3

    .line 242
    .end local v3    # "s":F
    .restart local v4    # "s":F
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v2

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v7, v3

    iput-wide v7, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    .line 243
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v7, v3, v6

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v6

    aget-wide v9, v3, v5

    add-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v4

    float-to-double v6, v3

    iput-wide v6, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    .line 244
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v5

    aget-wide v6, v3, v2

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v3, v2

    aget-wide v2, v2, v5

    sub-double/2addr v6, v2

    double-to-float v2, v6

    mul-float/2addr v2, v4

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    .line 247
    .end local v4    # "s":F
    :goto_0
    return-object v0
.end method

.method public getRotation()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    .line 279
    .local v0, "pureRotation":Lcom/samsung/vekit/Common/Object/Matrix4;
    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;

    move-result-object v1

    .line 280
    .local v1, "quaternion":Lcom/samsung/vekit/Common/Object/Quaternion;
    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Quaternion;->getRotation()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v2

    return-object v2
.end method

.method public getRow(I)Lcom/samsung/vekit/Common/Object/Vector4;
    .locals 3
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector4;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .local v0, "result":Lcom/samsung/vekit/Common/Object/Vector4;, "Lcom/samsung/vekit/Common/Object/Vector4<Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setX(Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setY(Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setZ(Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setW(Ljava/lang/Object;)V

    .line 91
    return-object v0
.end method

.method public getScale()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    .line 286
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisX()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 287
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisY()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 288
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisZ()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    return-object v0
.end method

.method public identity()V
    .locals 6

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 37
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 38
    if-ne v0, v2, :cond_0

    .line 39
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    goto :goto_2

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v0

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 37
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public inverse()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 38

    .line 309
    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    .line 311
    .local v1, "outMatrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x2

    aget-wide v5, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v7, 0x1

    aget-object v2, v2, v7

    const/4 v8, 0x3

    aget-wide v9, v2, v8

    mul-double/2addr v5, v9

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v9, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v11, v2, v8

    mul-double/2addr v9, v11

    sub-double/2addr v5, v9

    .line 312
    .local v5, "a0":D
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v9, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v11, v2, v8

    mul-double/2addr v9, v11

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v11, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v13, v2, v8

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    .line 313
    .local v9, "a1":D
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v11, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v13, v2, v8

    mul-double/2addr v11, v13

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v13, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v15, v2, v8

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    .line 314
    .local v11, "a2":D
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v13, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v15, v2, v8

    mul-double/2addr v13, v15

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v15, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v17, v2, v8

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    .line 315
    .local v13, "a3":D
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v15, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v17, v2, v8

    mul-double v15, v15, v17

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v17, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v19, v2, v8

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    .line 316
    .local v15, "a4":D
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v17, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v19, v2, v8

    mul-double v17, v17, v19

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v19, v2, v4

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v21, v2, v8

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    .line 318
    .local v17, "a5":D
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    aget-wide v19, v2, v7

    mul-double v19, v19, v17

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v21, v2, v7

    mul-double v21, v21, v15

    sub-double v19, v19, v21

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v21, v2, v7

    mul-double v21, v21, v13

    add-double v19, v19, v21

    .line 319
    .local v19, "b0":D
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v3

    aget-wide v21, v2, v7

    mul-double v21, v21, v17

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v4

    aget-wide v23, v2, v7

    mul-double v23, v23, v11

    sub-double v21, v21, v23

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v23, v2, v7

    mul-double v23, v23, v9

    move v2, v8

    move-wide/from16 v25, v9

    .end local v9    # "a1":D
    .local v25, "a1":D
    add-double v8, v21, v23

    neg-double v8, v8

    .line 320
    .local v8, "b1":D
    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v3

    aget-wide v21, v10, v7

    mul-double v21, v21, v15

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v7

    aget-wide v23, v10, v7

    mul-double v23, v23, v11

    sub-double v21, v21, v23

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v2

    aget-wide v23, v10, v7

    mul-double v23, v23, v5

    add-double v21, v21, v23

    .line 321
    .local v21, "b2":D
    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v3

    aget-wide v23, v10, v7

    mul-double v23, v23, v13

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v7

    aget-wide v27, v10, v7

    mul-double v27, v27, v25

    sub-double v23, v23, v27

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v4

    aget-wide v27, v10, v7

    mul-double v27, v27, v5

    move v10, v4

    move-wide/from16 v29, v5

    .end local v5    # "a0":D
    .local v29, "a0":D
    add-double v4, v23, v27

    neg-double v4, v4

    .line 323
    .local v4, "b3":D
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v23, v6, v3

    mul-double v23, v23, v19

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v27, v6, v3

    mul-double v27, v27, v8

    add-double v23, v23, v27

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v10

    aget-wide v27, v6, v3

    mul-double v27, v27, v21

    add-double v23, v23, v27

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v2

    aget-wide v27, v6, v3

    mul-double v27, v27, v4

    add-double v23, v23, v27

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    div-double v27, v27, v23

    .line 325
    .local v27, "invDeterminant":D
    move-wide/from16 v23, v11

    .end local v11    # "a2":D
    .local v23, "a2":D
    mul-double v10, v19, v27

    double-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 326
    mul-double v10, v8, v27

    double-to-float v10, v10

    invoke-virtual {v1, v7, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 327
    mul-double v10, v21, v27

    double-to-float v10, v10

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 328
    mul-double v10, v4, v27

    double-to-float v10, v10

    invoke-virtual {v1, v2, v10}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 330
    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v10, v7

    aget-wide v10, v10, v3

    mul-double v11, v17, v10

    iget-object v10, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v31, v10, v6

    aget-wide v31, v31, v3

    mul-double v31, v31, v15

    sub-double v11, v11, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x3

    aget-object v6, v6, v2

    aget-wide v31, v6, v3

    mul-double v31, v31, v13

    add-double v11, v11, v31

    neg-double v11, v11

    mul-double v11, v11, v27

    double-to-float v6, v11

    const/4 v11, 0x4

    invoke-virtual {v1, v11, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 331
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v11, v6, v3

    mul-double v11, v11, v17

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v31, v6, v3

    mul-double v31, v31, v23

    sub-double v11, v11, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x3

    aget-object v6, v6, v2

    aget-wide v31, v6, v3

    mul-double v31, v31, v25

    add-double v11, v11, v31

    mul-double v11, v11, v27

    double-to-float v6, v11

    const/4 v11, 0x5

    invoke-virtual {v1, v11, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 332
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v11, v6, v3

    mul-double/2addr v11, v15

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v31, v6, v3

    mul-double v31, v31, v23

    sub-double v11, v11, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x3

    aget-object v6, v6, v2

    aget-wide v31, v6, v3

    mul-double v31, v31, v29

    add-double v11, v11, v31

    neg-double v11, v11

    mul-double v11, v11, v27

    double-to-float v6, v11

    const/4 v11, 0x6

    invoke-virtual {v1, v11, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 333
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v11, v6, v3

    mul-double/2addr v11, v13

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v31, v6, v3

    mul-double v31, v31, v25

    sub-double v11, v11, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v31, v6, v3

    mul-double v31, v31, v29

    add-double v11, v11, v31

    mul-double v11, v11, v27

    double-to-float v6, v11

    const/4 v11, 0x7

    invoke-virtual {v1, v11, v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 335
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v11, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    const/4 v2, 0x3

    aget-wide v31, v6, v2

    mul-double v11, v11, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v31, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v33, v6, v2

    mul-double v31, v31, v33

    sub-double v11, v11, v31

    .line 336
    .end local v29    # "a0":D
    .local v11, "a0":D
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v29, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v31, v6, v2

    mul-double v29, v29, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v10

    aget-wide v31, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v33, v6, v2

    mul-double v31, v31, v33

    sub-double v29, v29, v31

    .line 337
    .end local v25    # "a1":D
    .local v29, "a1":D
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v25, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v2

    aget-wide v31, v6, v2

    mul-double v25, v25, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v2

    aget-wide v31, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v33, v6, v2

    mul-double v31, v31, v33

    sub-double v25, v25, v31

    .line 338
    .end local v23    # "a2":D
    .local v25, "a2":D
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v23, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v31, v6, v2

    mul-double v23, v23, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v10

    aget-wide v31, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v33, v6, v2

    mul-double v31, v31, v33

    sub-double v23, v23, v31

    .line 339
    .end local v13    # "a3":D
    .local v23, "a3":D
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v13, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v2

    aget-wide v31, v6, v2

    mul-double v13, v13, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v2

    aget-wide v31, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v33, v6, v2

    mul-double v31, v31, v33

    sub-double v13, v13, v31

    .line 340
    .end local v15    # "a4":D
    .local v13, "a4":D
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v15, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v2

    aget-wide v31, v6, v2

    mul-double v15, v15, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v2

    aget-wide v31, v6, v7

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v10

    aget-wide v33, v6, v2

    mul-double v31, v31, v33

    sub-double v15, v15, v31

    .line 342
    .end local v17    # "a5":D
    .local v15, "a5":D
    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v17, v6, v3

    mul-double v17, v17, v15

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v10

    aget-wide v31, v6, v3

    mul-double v31, v31, v13

    sub-double v17, v17, v31

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x3

    aget-object v6, v6, v2

    aget-wide v31, v6, v3

    mul-double v31, v31, v23

    add-double v17, v17, v31

    move v6, v3

    mul-double v2, v17, v27

    double-to-float v2, v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 343
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v6

    aget-wide v2, v2, v6

    mul-double/2addr v2, v15

    move/from16 v17, v6

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v32, v6, v17

    mul-double v32, v32, v25

    sub-double v32, v2, v32

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/16 v31, 0x3

    aget-object v3, v2, v31

    aget-wide v34, v3, v17

    mul-double v34, v34, v29

    add-double v2, v32, v34

    neg-double v2, v2

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 344
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v17

    aget-wide v2, v2, v17

    mul-double/2addr v2, v13

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v32, v6, v17

    mul-double v32, v32, v25

    sub-double v32, v2, v32

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/16 v31, 0x3

    aget-object v3, v2, v31

    aget-wide v34, v3, v17

    mul-double v34, v34, v11

    add-double v32, v32, v34

    mul-double v2, v32, v27

    double-to-float v2, v2

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 345
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v17

    aget-wide v2, v2, v17

    mul-double v2, v2, v23

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v32, v6, v17

    mul-double v32, v32, v29

    sub-double v2, v2, v32

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v32, v6, v17

    mul-double v32, v32, v11

    add-double v2, v2, v32

    neg-double v2, v2

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 347
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v7

    const/4 v10, 0x2

    aget-wide v2, v2, v10

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v17

    aget-wide v32, v6, v7

    mul-double v2, v2, v32

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v17

    aget-wide v32, v6, v10

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v34, v6, v7

    mul-double v32, v32, v34

    sub-double v11, v2, v32

    .line 348
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v10

    aget-wide v2, v2, v10

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v17

    aget-wide v32, v6, v7

    mul-double v2, v2, v32

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v17

    aget-wide v32, v6, v10

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v10

    aget-wide v34, v6, v7

    mul-double v32, v32, v34

    sub-double v29, v2, v32

    .line 349
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/16 v31, 0x3

    aget-object v2, v2, v31

    aget-wide v2, v2, v10

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v17

    aget-wide v32, v6, v7

    mul-double v32, v32, v2

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v17

    aget-wide v34, v2, v10

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v2, v31

    aget-wide v36, v3, v7

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    .line 350
    .end local v25    # "a2":D
    .local v32, "a2":D
    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v10

    aget-wide v25, v3, v10

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v34, v3, v7

    mul-double v25, v25, v34

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v34, v3, v10

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v10

    aget-wide v36, v3, v7

    mul-double v34, v34, v36

    sub-double v25, v25, v34

    .line 351
    .end local v23    # "a3":D
    .local v25, "a3":D
    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x3

    aget-object v3, v3, v2

    aget-wide v23, v3, v10

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v34, v3, v7

    mul-double v23, v23, v34

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v34, v3, v10

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v36, v3, v7

    mul-double v34, v34, v36

    sub-double v23, v23, v34

    .line 352
    .end local v13    # "a4":D
    .local v23, "a4":D
    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v13, v3, v10

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v10

    aget-wide v34, v3, v7

    mul-double v13, v13, v34

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v10

    aget-wide v34, v3, v10

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v36, v3, v7

    mul-double v34, v34, v36

    sub-double v13, v13, v34

    .line 354
    .end local v15    # "a5":D
    .local v13, "a5":D
    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v7

    aget-wide v15, v3, v17

    mul-double/2addr v15, v13

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v3, v3, v10

    aget-wide v34, v3, v17

    mul-double v34, v34, v23

    sub-double v15, v15, v34

    iget-object v3, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x3

    aget-object v3, v3, v2

    aget-wide v34, v3, v17

    mul-double v34, v34, v25

    add-double v2, v15, v34

    neg-double v2, v2

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 355
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v17

    aget-wide v2, v2, v17

    mul-double/2addr v2, v13

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v15, v6, v17

    mul-double v15, v15, v32

    sub-double v15, v2, v15

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/16 v31, 0x3

    aget-object v3, v2, v31

    aget-wide v34, v3, v17

    mul-double v34, v34, v29

    add-double v15, v15, v34

    mul-double v2, v15, v27

    double-to-float v2, v2

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 356
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v17

    aget-wide v2, v2, v17

    mul-double v2, v2, v23

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v15, v6, v17

    mul-double v15, v15, v32

    sub-double/2addr v2, v15

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/16 v31, 0x3

    aget-object v6, v6, v31

    aget-wide v15, v6, v17

    mul-double/2addr v15, v11

    add-double/2addr v2, v15

    neg-double v2, v2

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 357
    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v17

    aget-wide v2, v2, v17

    mul-double v2, v2, v25

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v7

    aget-wide v6, v6, v17

    mul-double v6, v6, v29

    sub-double/2addr v2, v6

    iget-object v6, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v10, 0x2

    aget-object v6, v6, v10

    aget-wide v6, v6, v17

    mul-double/2addr v6, v11

    add-double/2addr v2, v6

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    .line 359
    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->transpose()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v2

    return-object v2
.end method

.method public multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 13
    .param p1, "other"    # Lcom/samsung/vekit/Common/Object/Matrix4;

    .line 115
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 117
    .local v1, "data":[[D
    aget-object v3, v1, v4

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v4

    mul-double/2addr v5, v7

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v4

    iget-object v9, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v7, v7, v4

    iget-object v9, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v0

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v8, 0x3

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v4

    .line 118
    aget-object v3, v1, v2

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v4

    .line 119
    aget-object v3, v1, v0

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v4

    .line 120
    aget-object v3, v1, v8

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v4

    .line 122
    aget-object v3, v1, v4

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v2

    .line 123
    aget-object v3, v1, v2

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v2

    .line 124
    aget-object v3, v1, v0

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v2

    .line 125
    aget-object v3, v1, v8

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v2

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v2

    .line 127
    aget-object v3, v1, v4

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v0

    .line 128
    aget-object v3, v1, v2

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v0

    .line 129
    aget-object v3, v1, v0

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v0

    .line 130
    aget-object v3, v1, v8

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v0

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v0

    .line 132
    aget-object v3, v1, v4

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v4

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v8

    .line 133
    aget-object v3, v1, v2

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v8

    .line 134
    aget-object v3, v1, v0

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v2

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v7, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v0

    aget-wide v11, v7, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v8

    .line 135
    aget-object v3, v1, v8

    iget-object v5, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v8

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v8

    aget-wide v9, v7, v4

    mul-double/2addr v5, v9

    iget-object v4, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v2

    aget-wide v9, v4, v8

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v8

    aget-wide v11, v4, v2

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v2, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v0

    aget-wide v9, v2, v8

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v8

    aget-wide v11, v2, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v0, v0, v8

    aget-wide v9, v0, v8

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v0, v0, v8

    aget-wide v11, v0, v8

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    aput-wide v5, v3, v8

    .line 136
    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object v0
.end method

.method public rotate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 3
    .param p1, "eulerX"    # F
    .param p2, "eulerY"    # F
    .param p3, "eulerZ"    # F

    .line 191
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    .line 192
    .local v0, "quaternion":Lcom/samsung/vekit/Common/Object/Quaternion;
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(FFF)V

    .line 193
    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v1

    .line 194
    .local v1, "rotationMatrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    invoke-virtual {v1, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    .line 195
    return-object p0
.end method

.method public rotate(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 1
    .param p1, "quaternion"    # Lcom/samsung/vekit/Common/Object/Quaternion;

    .line 200
    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    .line 201
    return-object p0
.end method

.method public rotate(Lcom/samsung/vekit/Common/Type/AxisType;F)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 8
    .param p1, "axisType"    # Lcom/samsung/vekit/Common/Type/AxisType;
    .param p2, "angle"    # F

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "x":F
    const/4 v1, 0x0

    .line 167
    .local v1, "y":F
    const/4 v2, 0x0

    .line 168
    .local v2, "z":F
    sget-object v3, Lcom/samsung/vekit/Common/Object/Matrix4$1;->$SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/AxisType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 179
    goto :goto_0

    .line 174
    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 175
    goto :goto_0

    .line 170
    :pswitch_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 171
    nop

    .line 184
    :goto_0
    new-instance v3, Lcom/samsung/vekit/Common/Object/Quaternion;

    new-instance v4, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v4, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    .line 185
    .local v3, "quaternion":Lcom/samsung/vekit/Common/Object/Quaternion;
    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v4

    .line 186
    .local v4, "rotationMatrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    invoke-virtual {v4, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    .line 187
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scale(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 205
    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    .line 206
    .local v0, "scaleMatrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 207
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, p2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 208
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 209
    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    .line 210
    return-object p0
.end method

.method public set(IF)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "data"    # F

    .line 61
    div-int/lit8 v0, p1, 0x4

    .line 62
    .local v0, "x":I
    rem-int/lit8 v1, p1, 0x4

    .line 63
    .local v1, "y":I
    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v1

    float-to-double v3, p2

    aput-wide v3, v2, v0

    .line 64
    return-void
.end method

.method public set(IIF)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "data"    # F

    .line 71
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v0, v0, p2

    float-to-double v1, p3

    aput-wide v1, v0, p1

    .line 72
    return-void
.end method

.method public set([F)V
    .locals 6
    .param p1, "data"    # [F

    .line 47
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 48
    div-int/lit8 v1, v0, 0x4

    .line 49
    .local v1, "x":I
    rem-int/lit8 v2, v0, 0x4

    .line 50
    .local v2, "y":I
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget v4, p1, v0

    float-to-double v4, v4

    aput-wide v4, v3, v1

    .line 47
    .end local v1    # "x":I
    .end local v2    # "y":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public set([[D)V
    .locals 5
    .param p1, "data"    # [[D

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 57
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V
    .locals 5
    .param p1, "matrix"    # Lcom/samsung/vekit/Common/Object/Matrix4;

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 23
    iget-object v2, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toArray()[F
    .locals 8

    .line 104
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 105
    .local v0, "array":[F
    const/4 v1, 0x0

    .line 106
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 107
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 108
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    iget-object v6, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v2

    double-to-float v6, v6

    aput v6, v0, v1

    .line 107
    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_1

    .line 106
    .end local v4    # "j":I
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "data":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 78
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 79
    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public translate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 156
    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    .line 157
    .local v0, "translationMatrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, p2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 159
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    .line 160
    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    .line 161
    return-object p0
.end method

.method public transpose()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 7

    .line 363
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 364
    .local v0, "data":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 365
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 366
    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v1

    aput-wide v5, v4, v3

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 364
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object v1
.end method
