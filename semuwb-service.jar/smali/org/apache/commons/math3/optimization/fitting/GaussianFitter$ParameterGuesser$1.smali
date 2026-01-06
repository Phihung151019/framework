.class Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;
.super Ljava/lang/Object;
.source "GaussianFitter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;->this$0:Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 188
    check-cast p1, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    check-cast p2, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$1;->compare(Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I
    .locals 9
    .param p1, "p1"    # Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .param p2, "p2"    # Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 192
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 193
    return v0

    .line 195
    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    .line 196
    return v1

    .line 198
    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 199
    return v2

    .line 201
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    .line 202
    .local v3, "cmpX":I
    if-gez v3, :cond_3

    .line 203
    return v1

    .line 205
    :cond_3
    if-lez v3, :cond_4

    .line 206
    return v2

    .line 208
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    .line 209
    .local v4, "cmpY":I
    if-gez v4, :cond_5

    .line 210
    return v1

    .line 212
    :cond_5
    if-lez v4, :cond_6

    .line 213
    return v2

    .line 215
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v5

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    .line 216
    .local v5, "cmpW":I
    if-gez v5, :cond_7

    .line 217
    return v1

    .line 219
    :cond_7
    if-lez v5, :cond_8

    .line 220
    return v2

    .line 222
    :cond_8
    return v0
.end method
