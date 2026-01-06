.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
.super Ljava/lang/Object;
.source "Vector2D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Vector<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private static final serialVersionUID:J = 0x3b45b4a2933f2caL


# instance fields
.field private final x:D

.field private final y:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 42
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 46
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 71
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 72
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2
    .param p1, "a"    # D
    .param p3, "u"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 96
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 97
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 4
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 109
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 110
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 4
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iget-wide v2, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v2, p7

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 125
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iget-wide v2, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, p7

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 126
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 5
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p10, "a4"    # D
    .param p12, "u4"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 141
    move-object/from16 v0, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iget-wide v1, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v1, p1

    iget-wide v3, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v3, p4

    add-double/2addr v1, v3

    iget-wide v3, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v3, p7

    add-double/2addr v1, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v3, p10

    add-double/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 143
    iget-wide v1, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v1, p1

    iget-wide v3, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v3, p4

    add-double/2addr v1, v3

    iget-wide v3, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v3, p7

    add-double/2addr v1, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v3, p10

    add-double/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 144
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

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 85
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 86
    return-void

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 20
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 247
    .local v2, "normProduct":D
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3

    .line 251
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v6

    .line 252
    .local v6, "dot":D
    const-wide v8, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double/2addr v8, v2

    .line 253
    .local v8, "threshold":D
    neg-double v10, v8

    cmpg-double v10, v6, v10

    if-ltz v10, :cond_1

    cmpl-double v10, v6, v8

    if-lez v10, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    div-double v4, v6, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v4

    return-wide v4

    .line 255
    :cond_1
    :goto_0
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v12, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    neg-double v14, v14

    move-wide/from16 v18, v4

    iget-wide v4, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    move-wide/from16 v16, v4

    invoke-static/range {v10 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 256
    .local v4, "n":D
    cmpl-double v10, v6, v18

    if-ltz v10, :cond_2

    .line 257
    div-double v10, v4, v2

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v10

    return-wide v10

    .line 259
    :cond_2
    div-double v10, v4, v2

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v12, v10

    return-wide v12

    .line 248
    .end local v4    # "n":D
    .end local v6    # "dot":D
    .end local v8    # "threshold":D
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 368
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 380
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 392
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 208
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p3

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 209
    .local v0, "v2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 202
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 203
    .local v0, "v2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 12
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 352
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double v4, v0, v2

    .line 353
    .local v4, "x1":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    sub-double v6, v0, v2

    .line 354
    .local v6, "y1":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 355
    .local v0, "x2":D
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    sub-double v10, v2, v8

    .line 356
    .local v10, "y2":D
    neg-double v8, v0

    invoke-static/range {v4 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 303
    .local p1, "p":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 304
    .local v0, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v1, v3

    .line 305
    .local v1, "dx":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v3, v5

    .line 306
    .local v3, "dy":D
    mul-double v5, v1, v1

    mul-double v7, v3, v3

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    return-wide v5
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 298
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 289
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 290
    .local v0, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    .line 291
    .local v1, "dx":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 292
    .local v3, "dy":D
    add-double v5, v1, v3

    return-wide v5
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 311
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 312
    .local v0, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    .line 313
    .local v1, "dx":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 314
    .local v3, "dy":D
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    return-wide v5
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 319
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 320
    .local v0, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v1, v3

    .line 321
    .local v1, "dx":D
    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v3, v5

    .line 322
    .local v3, "dy":D
    mul-double v5, v1, v1

    mul-double v7, v3, v3

    add-double/2addr v5, v7

    return-wide v5
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 327
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 328
    .local v0, "v2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 417
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 418
    return v0

    .line 421
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 422
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 423
    .local v1, "rhs":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v0

    return v0

    .line 427
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 429
    .end local v1    # "rhs":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_3
    return v2
.end method

.method public getNorm()D
    .locals 6

    .line 187
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm1()D
    .locals 4

    .line 182
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNormInf()D
    .locals 4

    .line 197
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormSq()D
    .locals 6

    .line 192
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .line 172
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    move-result-object v0

    return-object v0
.end method

.method public getX()D
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-wide v0
.end method

.method public bridge synthetic getZero()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getZero()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 177
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 441
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/16 v0, 0x21e

    return v0

    .line 444
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4c

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7a

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

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

    .line 279
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

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

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->negate()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5

    .line 269
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    neg-double v1, v1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    neg-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic normalize()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v0

    .line 227
    .local v0, "s":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 230
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    return-object v2

    .line 228
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5
    .param p1, "a"    # D

    .line 274
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v1, p1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 220
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p3

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 221
    .local v0, "v2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    mul-double/2addr v6, p1

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 214
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 215
    .local v0, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public toArray()[D
    .locals 6

    .line 167
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 452
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 457
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
