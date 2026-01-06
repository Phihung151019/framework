.class public Lorg/apache/commons/math3/optim/PointVectorValuePair;
.super Lorg/apache/commons/math3/util/Pair;
.source "PointVectorValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/util/Pair<",
        "[D[D>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13303c1L


# direct methods
.method public constructor <init>([D[D)V
    .locals 1
    .param p1, "point"    # [D
    .param p2, "value"    # [D

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[DZ)V

    .line 44
    return-void
.end method

.method public constructor <init>([D[DZ)V
    .locals 2
    .param p1, "point"    # [D
    .param p2, "value"    # [D
    .param p3, "copyArray"    # Z

    .line 57
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_1

    :cond_3
    move-object v0, p2

    :goto_1
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    .line 112
    new-instance v0, Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValue()[D

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;-><init>([D[D)V

    return-object v0
.end method


# virtual methods
.method public getPoint()[D
    .locals 2

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 74
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

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValue()[D

    move-result-object v0

    return-object v0
.end method

.method public getValue()[D
    .locals 2

    .line 93
    invoke-super {p0}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 94
    .local v0, "v":[D
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

.method public getValueRef()[D
    .locals 1

    .line 104
    invoke-super {p0}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
