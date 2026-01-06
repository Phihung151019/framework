.class Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;
.super Ljava/lang/Object;
.source "GaussianFitter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;->this$0:Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 187
    check-cast p1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    check-cast p2, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;->compare(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I
    .locals 9
    .param p1, "p1"    # Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .param p2, "p2"    # Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 191
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 192
    return v0

    .line 194
    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    .line 195
    return v1

    .line 197
    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 198
    return v2

    .line 200
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    .line 201
    .local v3, "cmpX":I
    if-gez v3, :cond_3

    .line 202
    return v1

    .line 204
    :cond_3
    if-lez v3, :cond_4

    .line 205
    return v2

    .line 207
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    .line 208
    .local v4, "cmpY":I
    if-gez v4, :cond_5

    .line 209
    return v1

    .line 211
    :cond_5
    if-lez v4, :cond_6

    .line 212
    return v2

    .line 214
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v5

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    .line 215
    .local v5, "cmpW":I
    if-gez v5, :cond_7

    .line 216
    return v1

    .line 218
    :cond_7
    if-lez v5, :cond_8

    .line 219
    return v2

    .line 221
    :cond_8
    return v0
.end method
