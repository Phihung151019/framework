.class Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;
.super Ljava/lang/Object;
.source "MultivariateFunctionMappingAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LowerBoundMapper"
.end annotation


# instance fields
.field private final lower:D


# direct methods
.method constructor <init>(D)V
    .locals 0
    .param p1, "lower"    # D

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;->lower:D

    .line 232
    return-void
.end method


# virtual methods
.method public boundedToUnbounded(D)D
    .locals 2
    .param p1, "x"    # D

    .line 241
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;->lower:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public unboundedToBounded(D)D
    .locals 4
    .param p1, "y"    # D

    .line 236
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;->lower:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method
