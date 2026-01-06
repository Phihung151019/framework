.class Lorg/apache/commons/math3/util/FastMath$CodyWaite;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodyWaite"
.end annotation


# instance fields
.field private final finalK:I

.field private final finalRemA:D

.field private final finalRemB:D


# direct methods
.method constructor <init>(D)V
    .locals 13
    .param p1, "xa"    # D

    .line 4239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4242
    const-wide v0, 0x3fe45f306dc9c883L    # 0.6366197723675814

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 4248
    .local v0, "k":I
    :goto_0
    neg-int v1, v0

    int-to-double v1, v1

    const-wide v3, 0x3ff921fb40000000L    # 1.570796251296997

    mul-double/2addr v1, v3

    .line 4249
    .local v1, "a":D
    add-double v3, p1, v1

    .line 4250
    .local v3, "remA":D
    sub-double v5, v3, p1

    sub-double/2addr v5, v1

    neg-double v5, v5

    .line 4252
    .local v5, "remB":D
    neg-int v7, v0

    int-to-double v7, v7

    const-wide v9, 0x3e74442d18000000L    # 7.549789948768648E-8

    mul-double/2addr v7, v9

    .line 4253
    .end local v1    # "a":D
    .local v7, "a":D
    move-wide v1, v3

    .line 4254
    .local v1, "b":D
    add-double v3, v7, v1

    .line 4255
    sub-double v9, v3, v1

    sub-double/2addr v9, v7

    neg-double v9, v9

    add-double/2addr v5, v9

    .line 4257
    neg-int v9, v0

    int-to-double v9, v9

    const-wide v11, 0x3c91a62633145c07L    # 6.123233995736766E-17

    mul-double/2addr v9, v11

    .line 4258
    .end local v7    # "a":D
    .local v9, "a":D
    move-wide v1, v3

    .line 4259
    add-double v3, v9, v1

    .line 4260
    sub-double v7, v3, v1

    sub-double/2addr v7, v9

    neg-double v7, v7

    add-double/2addr v5, v7

    .line 4262
    const-wide/16 v7, 0x0

    cmpl-double v7, v3, v7

    if-lez v7, :cond_0

    .line 4263
    nop

    .line 4272
    .end local v1    # "b":D
    .end local v9    # "a":D
    iput v0, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalK:I

    .line 4273
    iput-wide v3, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalRemA:D

    .line 4274
    iput-wide v5, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalRemB:D

    .line 4275
    return-void

    .line 4269
    .restart local v1    # "b":D
    .restart local v9    # "a":D
    :cond_0
    nop

    .end local v1    # "b":D
    .end local v9    # "a":D
    add-int/lit8 v0, v0, -0x1

    .line 4270
    goto :goto_0
.end method


# virtual methods
.method getK()I
    .locals 1

    .line 4281
    iget v0, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalK:I

    return v0
.end method

.method getRemA()D
    .locals 2

    .line 4287
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalRemA:D

    return-wide v0
.end method

.method getRemB()D
    .locals 2

    .line 4293
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalRemB:D

    return-wide v0
.end method
