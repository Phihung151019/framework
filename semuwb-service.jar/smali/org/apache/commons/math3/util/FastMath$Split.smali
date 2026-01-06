.class Lorg/apache/commons/math3/util/FastMath$Split;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Split"
.end annotation


# static fields
.field public static final NAN:Lorg/apache/commons/math3/util/FastMath$Split;

.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;


# instance fields
.field private final full:D

.field private final high:D

.field private final low:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1644
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$Split;->NAN:Lorg/apache/commons/math3/util/FastMath$Split;

    .line 1647
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$Split;->POSITIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

    .line 1650
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$Split;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

    return-void
.end method

.method constructor <init>(D)V
    .locals 4
    .param p1, "x"    # D

    .line 1664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1665
    iput-wide p1, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    .line 1666
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/32 v2, -0x8000000

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    .line 1667
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    sub-double v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    .line 1668
    return-void
.end method

.method constructor <init>(DD)V
    .locals 9
    .param p1, "high"    # D
    .param p3, "low"    # D

    .line 1675
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    move-wide v3, p3

    goto :goto_1

    :cond_1
    add-double v0, p1, p3

    :goto_0
    move-wide v3, v0

    :goto_1
    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    .end local p1    # "high":D
    .end local p3    # "low":D
    .local v5, "high":D
    .local v7, "low":D
    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DDD)V

    .line 1676
    return-void
.end method

.method constructor <init>(DDD)V
    .locals 0
    .param p1, "full"    # D
    .param p3, "high"    # D
    .param p5, "low"    # D

    .line 1683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1684
    iput-wide p1, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    .line 1685
    iput-wide p3, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    .line 1686
    iput-wide p5, p0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    .line 1687
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/util/FastMath$Split;J)Lorg/apache/commons/math3/util/FastMath$Split;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/util/FastMath$Split;
    .param p1, "x1"    # J

    .line 1641
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/util/FastMath$Split;->pow(J)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/util/FastMath$Split;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/util/FastMath$Split;

    .line 1641
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    return-wide v0
.end method

.method private pow(J)Lorg/apache/commons/math3/util/FastMath$Split;
    .locals 11
    .param p1, "e"    # J

    .line 1727
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(D)V

    .line 1730
    .local v0, "result":Lorg/apache/commons/math3/util/FastMath$Split;
    new-instance v3, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v4, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    iget-wide v6, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v8, p0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DDD)V

    .line 1732
    .local v3, "d2p":Lorg/apache/commons/math3/util/FastMath$Split;
    move-wide v4, p1

    .local v4, "p":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x1

    if-eqz v8, :cond_1

    .line 1734
    and-long v8, v4, v9

    cmp-long v6, v8, v6

    if-eqz v6, :cond_0

    .line 1736
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/util/FastMath$Split;->multiply(Lorg/apache/commons/math3/util/FastMath$Split;)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v0

    .line 1740
    :cond_0
    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/util/FastMath$Split;->multiply(Lorg/apache/commons/math3/util/FastMath$Split;)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v3

    .line 1732
    const/4 v6, 0x1

    ushr-long/2addr v4, v6

    goto :goto_0

    .line 1744
    .end local v4    # "p":J
    :cond_1
    iget-wide v4, v0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1745
    iget-wide v4, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1746
    sget-object v1, Lorg/apache/commons/math3/util/FastMath$Split;->NAN:Lorg/apache/commons/math3/util/FastMath$Split;

    return-object v1

    .line 1750
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v1

    const-wide/16 v4, 0x0

    if-gez v1, :cond_3

    .line 1751
    new-instance v1, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v6, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v6

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    return-object v1

    .line 1752
    :cond_3
    iget-wide v1, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    cmpg-double v1, v1, v4

    if-gez v1, :cond_4

    and-long v1, p1, v9

    cmp-long v1, v1, v9

    if-nez v1, :cond_4

    .line 1753
    sget-object v1, Lorg/apache/commons/math3/util/FastMath$Split;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

    return-object v1

    .line 1755
    :cond_4
    sget-object v1, Lorg/apache/commons/math3/util/FastMath$Split;->POSITIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

    return-object v1

    .line 1759
    :cond_5
    return-object v0
.end method


# virtual methods
.method public multiply(Lorg/apache/commons/math3/util/FastMath$Split;)Lorg/apache/commons/math3/util/FastMath$Split;
    .locals 9
    .param p1, "b"    # Lorg/apache/commons/math3/util/FastMath$Split;

    .line 1695
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    mul-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(D)V

    .line 1696
    .local v0, "mulBasic":Lorg/apache/commons/math3/util/FastMath$Split;
    iget-wide v1, p0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    mul-double/2addr v1, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    iget-wide v5, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v7, p1, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    iget-wide v7, p1, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v7, p1, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 1697
    .local v1, "mulError":D
    new-instance v3, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v4, v0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v6, v0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    add-double/2addr v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    return-object v3
.end method

.method public reciprocal()Lorg/apache/commons/math3/util/FastMath$Split;
    .locals 14

    .line 1705
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 1706
    .local v0, "approximateInv":D
    new-instance v4, Lorg/apache/commons/math3/util/FastMath$Split;

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(D)V

    .line 1711
    .local v4, "splitInv":Lorg/apache/commons/math3/util/FastMath$Split;
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/util/FastMath$Split;->multiply(Lorg/apache/commons/math3/util/FastMath$Split;)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v5

    .line 1712
    .local v5, "product":Lorg/apache/commons/math3/util/FastMath$Split;
    iget-wide v6, v5, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    sub-double/2addr v6, v2

    iget-wide v2, v5, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    add-double/2addr v6, v2

    .line 1715
    .local v6, "error":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v8, v4, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v10, v4, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    iget-wide v12, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    div-double v12, v6, v12

    sub-double/2addr v10, v12

    invoke-direct {v2, v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    :goto_0
    return-object v2
.end method
