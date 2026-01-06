.class public Lorg/apache/commons/math3/optimization/PointValuePair;
.super Lorg/apache/commons/math3/util/Pair;
.source "PointValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/PointValuePair$DataTransferObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/util/Pair<",
        "[D",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13303c1L


# direct methods
.method public constructor <init>([DD)V
    .locals 1
    .param p1, "point"    # [D
    .param p2, "value"    # D

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DDZ)V

    .line 49
    return-void
.end method

.method public constructor <init>([DDZ)V
    .locals 2
    .param p1, "point"    # [D
    .param p2, "value"    # D
    .param p4, "copyArray"    # Z

    .line 62
    if-eqz p4, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .line 92
    new-instance v0, Lorg/apache/commons/math3/optimization/PointValuePair$DataTransferObject;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/PointValuePair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optimization/PointValuePair$DataTransferObject;-><init>([DD)V

    return-object v0
.end method


# virtual methods
.method public getPoint()[D
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/PointValuePair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 75
    .local v0, "p":[D
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    :goto_0
    return-object v1
.end method

.method public getPointRef()[D
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/PointValuePair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
