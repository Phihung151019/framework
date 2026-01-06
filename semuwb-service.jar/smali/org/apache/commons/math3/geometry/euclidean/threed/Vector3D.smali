.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
.super Ljava/lang/Object;
.source "Vector3D.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/geometry/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/math3/geometry/Vector<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;"
    }
.end annotation


# static fields
.field public static final MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private static final serialVersionUID:J = 0x123a77380306b8a3L


# instance fields
.field private final x:D

.field private final y:D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 41
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 44
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 47
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 50
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 53
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/16 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 56
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 59
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v9, 0x0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/16 v7, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 63
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v7 .. v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 71
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 4
    .param p1, "alpha"    # D
    .param p3, "delta"    # D

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    .line 126
    .local v0, "cosDelta":D
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 127
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 128
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 129
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 97
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 98
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 99
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .param p1, "a"    # D
    .param p3, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 139
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 140
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 141
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 8
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v6, p6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide v0, p1

    move-wide v4, p4

    .end local p1    # "a1":D
    .end local p4    # "a2":D
    .local v0, "a1":D
    .local v4, "a2":D
    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 153
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, p6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 154
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v6, p6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 155
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 20
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 169
    iget-wide v6, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v10, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v14, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide/from16 v4, p1

    move-wide/from16 v8, p4

    move-wide/from16 v12, p7

    invoke-static/range {v4 .. v15}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 170
    iget-wide v10, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v14, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide/from16 v8, p1

    move-wide/from16 v12, p4

    move-wide/from16 v16, p7

    move-wide/from16 v18, v4

    invoke-static/range {v8 .. v19}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 171
    iget-wide v10, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v14, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v4, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-wide/from16 v18, v4

    invoke-static/range {v8 .. v19}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 172
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 25
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p10, "a4"    # D
    .param p12, "u4"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p12

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 188
    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v11, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v5, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v9, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide/from16 v13, p7

    move-wide/from16 v17, p10

    move-wide v15, v5

    move-wide/from16 v19, v9

    move-wide/from16 v5, p1

    move-wide/from16 v9, p4

    invoke-static/range {v5 .. v20}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 189
    iget-wide v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v7, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v9, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide/from16 v13, p4

    move-wide/from16 v17, p7

    move-wide/from16 v21, p10

    move-wide v15, v5

    move-wide/from16 v19, v7

    move-wide/from16 v23, v9

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v24}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 190
    iget-wide v11, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v5, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v7, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v9, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-wide v15, v5

    move-wide/from16 v19, v7

    move-wide/from16 v23, v9

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v24}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 191
    return-void
.end method

.method public constructor <init>([D)V
    .locals 3
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 112
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 113
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 114
    return-void

    .line 109
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 11
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 352
    .local v0, "normProduct":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 356
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    .line 357
    .local v4, "dot":D
    const-wide v6, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double/2addr v6, v0

    .line 358
    .local v6, "threshold":D
    neg-double v8, v6

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_1

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    div-double v2, v4, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    return-wide v2

    .line 360
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    .line 361
    .local v8, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    cmpl-double v2, v4, v2

    if-ltz v2, :cond_2

    .line 362
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    return-wide v2

    .line 364
    :cond_2
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v9, v2

    return-wide v9

    .line 353
    .end local v4    # "dot":D
    .end local v6    # "threshold":D
    .end local v8    # "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 524
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 548
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 536
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance1(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 560
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 572
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 515
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 281
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v6, p3

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v3, p0

    move-wide v4, p1

    .end local p1    # "factor":D
    .local v4, "factor":D
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 275
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 276
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    add-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v1
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 462
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 463
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    neg-double v6, v6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    neg-double v8, v8

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static/range {v4 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    neg-double v10, v10

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static/range {v6 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v1
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 484
    .local p1, "v":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 485
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v1, v3

    .line 486
    .local v1, "dx":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v3, v5

    .line 487
    .local v3, "dy":D
    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v5, v7

    .line 488
    .local v5, "dz":D
    mul-double v7, v1, v1

    mul-double v9, v3, v3

    add-double/2addr v7, v9

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    return-wide v7
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 479
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 470
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 471
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    .line 472
    .local v1, "dx":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 473
    .local v3, "dy":D
    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    .line 474
    .local v5, "dz":D
    add-double v7, v1, v3

    add-double/2addr v7, v5

    return-wide v7
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 493
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 494
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    .line 495
    .local v1, "dx":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 496
    .local v3, "dy":D
    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    .line 497
    .local v5, "dz":D
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    return-wide v7
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 502
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 503
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v1, v3

    .line 504
    .local v1, "dx":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v3, v5

    .line 505
    .local v3, "dy":D
    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v5, v7

    .line 506
    .local v5, "dz":D
    mul-double v7, v1, v1

    mul-double v9, v3, v3

    add-double/2addr v7, v9

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    return-wide v7
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 453
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 454
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 414
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 415
    return v0

    .line 418
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 419
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 420
    .local v1, "rhs":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v0

    return v0

    .line 424
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 426
    .end local v1    # "rhs":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_3
    return v2
.end method

.method public getAlpha()D
    .locals 4

    .line 262
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDelta()D
    .locals 4

    .line 270
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 6

    .line 243
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm1()D
    .locals 4

    .line 237
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNormInf()D
    .locals 4

    .line 254
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormSq()D
    .locals 6

    .line 249
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .line 227
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;

    move-result-object v0

    return-object v0
.end method

.method public getX()D
    .locals 2

    .line 198
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .line 214
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-wide v0
.end method

.method public bridge synthetic getZero()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZero()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 232
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 438
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/16 v0, 0x282

    return v0

    .line 441
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0xa4

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x283

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .line 389
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

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

    .line 384
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

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

.method public bridge synthetic negate()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7

    .line 374
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    neg-double v1, v1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    neg-double v3, v3

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    neg-double v5, v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v0
.end method

.method public bridge synthetic normalize()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    .line 298
    .local v0, "s":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 301
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    return-object v2

    .line 299
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 321
    const-wide v0, 0x3fe3333333333333L    # 0.6

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double/2addr v2, v0

    .line 322
    .local v2, "threshold":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_2

    .line 326
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-gtz v0, :cond_0

    .line 327
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    .line 328
    .local v4, "inverse":D
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double v9, v4, v0

    neg-double v0, v4

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double v11, v0, v7

    const-wide/16 v7, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v6

    .line 329
    .end local v4    # "inverse":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 330
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    .line 331
    .restart local v4    # "inverse":D
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    neg-double v0, v4

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v7, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double v11, v4, v0

    const-wide/16 v9, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v6

    .line 333
    .end local v4    # "inverse":D
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    .line 334
    .restart local v4    # "inverse":D
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double v7, v4, v0

    neg-double v0, v4

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v9, v0

    const-wide/16 v11, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v6

    .line 323
    .end local v4    # "inverse":D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7
    .param p1, "a"    # D

    .line 379
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v1, p1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v0
.end method

.method public bridge synthetic subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 292
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    neg-double v4, p1

    move-object v6, p3

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 286
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 287
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v1
.end method

.method public toArray()[D
    .locals 8

    .line 222
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    const/4 v6, 0x3

    new-array v6, v6, [D

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 580
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 585
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
