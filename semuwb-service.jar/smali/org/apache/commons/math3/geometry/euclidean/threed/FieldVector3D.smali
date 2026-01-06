.class public Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
.super Ljava/lang/Object;
.source "FieldVector3D.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13329b0L


# instance fields
.field private final x:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final y:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final z:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 1
    .param p1, "a"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iget-object v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 127
    iget-object v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 128
    iget-object v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 7
    .param p1, "a1"    # D
    .param p4, "a2"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p6, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 174
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-wide v1, p1

    move-wide v4, p4

    .end local p1    # "a1":D
    .end local p4    # "a2":D
    .local v1, "a1":D
    .local v4, "a2":D
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 175
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 176
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 177
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 10
    .param p1, "a1"    # D
    .param p4, "a2"    # D
    .param p7, "a3"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p6, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p9, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 231
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-wide v1, p1

    move-wide v4, p4

    move-wide/from16 v7, p7

    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 232
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 233
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 234
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 13
    .param p1, "a1"    # D
    .param p4, "a2"    # D
    .param p7, "a3"    # D
    .param p10, "a4"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 295
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p6, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p9, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p12, "u4":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 297
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual/range {p12 .. p12}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    move-wide v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v7, p7

    move-wide/from16 v10, p10

    invoke-interface/range {v0 .. v12}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 298
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual/range {p12 .. p12}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface/range {v0 .. v12}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 299
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual/range {p12 .. p12}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface/range {v0 .. v12}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 300
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "alpha":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "delta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->cos()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 90
    .local v0, "cosDelta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->cos()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 91
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->sin()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 92
    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->sin()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "x":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "y":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "z":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 61
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 62
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "u":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget-object v0, p2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 103
    iget-object v0, p2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    iget-object v0, p2, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    move-object v0, p1

    .line 142
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 143
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 144
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p5, "a3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p6, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    move-object v0, p1

    .line 193
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    .end local p1    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local p3    # "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local p5    # "a3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v1, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "a3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, v0

    move-object v0, v1

    .end local v1    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 194
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object v0, p3

    .end local p3    # "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v1    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v1

    .end local v1    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local p3    # "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 195
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object v0, p3

    .end local p3    # "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v1    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v1

    .end local v1    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local p3    # "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 196
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)V"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "u1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "u2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p5, "a3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p6, "u3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p7, "a4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p8, "u4":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    move-object v0, p1

    .line 253
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getX()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 254
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getY()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 255
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-virtual {p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getZ()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 256
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p2, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 115
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 116
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 7
    .param p2, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")V"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    move-object v0, p1

    .line 158
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    move-object v3, p1

    move-object v6, p3

    .end local p1    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local p3    # "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v6, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, v0

    move-object v0, v3

    .end local v3    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    move-object v0, p3

    .end local p3    # "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v3    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v3

    .end local v3    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local p3    # "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    move-object v0, p3

    .end local p3    # "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v3    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v3

    .end local v3    # "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local p3    # "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 10
    .param p2, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p6, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "a3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    move-object v0, p1

    .line 212
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    move-object v3, p1

    move-object v6, p3

    move-object v9, p5

    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 213
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 214
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v1

    invoke-virtual {p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 215
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 13
    .param p2, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p6, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p8, "u4"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")V"
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "a2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "a3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p7, "a4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    move-object v0, p1

    .line 275
    .local v0, "prototype":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    move-object v3, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p5

    move-object/from16 v12, p7

    invoke-interface/range {v0 .. v12}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 276
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v1

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v10

    invoke-interface/range {v0 .. v12}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v1

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-interface/range {v0 .. v12}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 278
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 75
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    .line 76
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    .line 77
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    .line 78
    return-void

    .line 73
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 580
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 581
    .local v0, "normProduct":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3

    .line 585
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 586
    .local v1, "dot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double/2addr v5, v7

    .line 587
    .local v5, "threshold":D
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    neg-double v9, v5

    cmpg-double v2, v7, v9

    if-ltz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-lez v2, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    return-object v2

    .line 589
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 590
    .local v2, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpl-double v3, v7, v3

    if-ltz v3, :cond_2

    .line 591
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3

    .line 593
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    invoke-interface {v3, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3

    .line 582
    .end local v1    # "dot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v2    # "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v5    # "threshold":D
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 11
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 616
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 617
    .local v0, "normProduct":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3

    .line 621
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 622
    .local v1, "dot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double/2addr v5, v7

    .line 623
    .local v5, "threshold":D
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    neg-double v9, v5

    cmpg-double v2, v7, v9

    if-ltz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-lez v2, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->acos()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    return-object v2

    .line 625
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v2

    .line 626
    .local v2, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpl-double v3, v7, v3

    if-ltz v3, :cond_2

    .line 627
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3

    .line 629
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    invoke-interface {v3, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3

    .line 618
    .end local v1    # "dot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v2    # "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .end local v5    # "threshold":D
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 651
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-static {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 974
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    return-object v0
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 1
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 985
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v0

    return-object v0
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 10
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 996
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    neg-double v5, v5

    iget-object v7, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    neg-double v7, v7

    iget-object v9, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v3 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1054
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 1068
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1082
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1012
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 1026
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1040
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1096
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 1110
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1124
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1138
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 1152
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1166
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 941
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 952
    .local p0, "v1":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 963
    .local p1, "v2":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 7
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "factor":D
    .end local p3    # "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local v4, "factor":D
    .local v6, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V

    return-object v0
.end method

.method public add(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 6
    .param p1, "factor"    # D
    .param p3, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 457
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    mul-double/2addr v3, p1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    mul-double/2addr v4, p1

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 6
    .param p2, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 6
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 782
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 10
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 792
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    neg-double v5, v5

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v2 .. v8}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    neg-double v7, v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v3 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 833
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 834
    .local v0, "dx":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 835
    .local v1, "dy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 836
    .local v2, "dz":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 847
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 848
    .local v0, "dx":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 849
    .local v1, "dy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 850
    .local v2, "dz":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 805
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 806
    .local v0, "dx":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 807
    .local v1, "dy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 808
    .local v2, "dz":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 819
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 820
    .local v0, "dx":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 821
    .local v1, "dy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 822
    .local v2, "dz":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 861
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 862
    .local v0, "dx":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 863
    .local v1, "dy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 864
    .local v2, "dz":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    .line 865
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    .line 866
    return-object v2

    .line 868
    :cond_0
    return-object v1

    .line 871
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    .line 872
    return-object v2

    .line 874
    :cond_2
    return-object v0
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 887
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 888
    .local v0, "dx":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 889
    .local v1, "dy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 890
    .local v2, "dz":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    .line 891
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    .line 892
    return-object v2

    .line 894
    :cond_0
    return-object v1

    .line 897
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    .line 898
    return-object v2

    .line 900
    :cond_2
    return-object v0
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 913
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 914
    .local v0, "dx":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 915
    .local v1, "dy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 916
    .local v2, "dz":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 927
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 928
    .local v0, "dx":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 929
    .local v1, "dy":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 930
    .local v2, "dz":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    return-object v3
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 760
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 10
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")TT;"
        }
    .end annotation

    .line 774
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/RealFieldElement;->linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 717
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 718
    return v0

    .line 721
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 723
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    .line 724
    .local v1, "rhs":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 725
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->isNaN()Z

    move-result v0

    return v0

    .line 728
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 731
    .end local v1    # "rhs":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    :cond_3
    return v2
.end method

.method public getAlpha()Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->atan2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getDelta()Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->asin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getNorm()Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 357
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getNorm1()Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getNormInf()Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 373
    .local v0, "xAbs":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 374
    .local v1, "yAbs":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 375
    .local v2, "zAbs":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    .line 376
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    .line 377
    return-object v2

    .line 379
    :cond_0
    return-object v1

    .line 382
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    .line 383
    return-object v2

    .line 385
    :cond_2
    return-object v0
.end method

.method public getNormSq()Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getX()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getY()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getZ()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 323
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 743
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const/16 v0, 0x199

    return v0

    .line 746
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6b

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x53

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x137

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .line 692
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNaN()Z
    .locals 2

    .line 682
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 658
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 523
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 524
    .local v0, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 527
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->scalarMultiply(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    move-result-object v1

    return-object v1

    .line 525
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 547
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->getNorm()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    .line 548
    .local v0, "threshold":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    .line 552
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_0

    .line 553
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 554
    .local v2, "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v3

    .line 555
    .end local v2    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_1

    .line 556
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 557
    .restart local v2    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v3

    .line 559
    .end local v2    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 560
    .restart local v2    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v3

    .line 549
    .end local v2    # "inverse":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 4
    .param p1, "a"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 674
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public scalarMultiply(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 666
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "a":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 7
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 504
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p3, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    neg-double v4, p1

    move-object v3, p0

    move-object v6, p3

    .end local p3    # "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local v6, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V

    return-object v0
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 6
    .param p1, "factor"    # D
    .param p3, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    mul-double/2addr v3, p1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    mul-double/2addr v4, p1

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, p0, v2, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 6
    .param p2, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 493
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;
    .locals 6
    .param p1, "v"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ")",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<",
            "TT;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0
.end method

.method public toArray()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 332
    .local v0, "array":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    .line 333
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    .line 334
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    .line 335
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1174
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->toVector3D()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 1182
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->toVector3D()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVector3D()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7

    .line 342
    .local p0, "this":Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;, "Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->x:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/FieldVector3D;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v0
.end method
