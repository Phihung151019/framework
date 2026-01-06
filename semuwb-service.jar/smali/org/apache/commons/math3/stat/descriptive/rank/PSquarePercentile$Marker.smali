.class Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
.super Ljava/lang/Object;
.source "PSquarePercentile.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Marker"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31a013708eff5b3fL


# instance fields
.field private desiredMarkerIncrement:D

.field private desiredMarkerPosition:D

.field private index:I

.field private intMarkerPosition:D

.field private transient linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private markerHeight:D

.field private transient next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

.field private final nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private transient previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 653
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 660
    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 661
    return-void
.end method

.method private constructor <init>(DDDD)V
    .locals 0
    .param p1, "heightOfMarker"    # D
    .param p3, "makerPositionDesired"    # D
    .param p5, "markerPositionIncrement"    # D
    .param p7, "markerPositionNumber"    # D

    .line 673
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>()V

    .line 674
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 675
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    .line 676
    iput-wide p5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    .line 677
    iput-wide p7, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    .line 678
    return-void
.end method

.method synthetic constructor <init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 0
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .param p5, "x2"    # D
    .param p7, "x3"    # D
    .param p9, "x4"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;

    .line 596
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDD)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;

    .line 596
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # I

    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 596
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide v0
.end method

.method static synthetic access$502(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;D)D
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # D

    .line 596
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide p1
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 596
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->estimate()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # I

    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 596
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->updateDesiredPosition()V

    return-void
.end method

.method private difference()D
    .locals 4

    .line 739
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private estimate()D
    .locals 21

    .line 748
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->difference()D

    move-result-wide v1

    .line 749
    .local v1, "di":D
    iget-object v3, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v3, v3, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    const/4 v7, 0x1

    if-lez v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 751
    .local v3, "isNextHigher":Z
    :goto_0
    iget-object v8, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v8, v8, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 754
    .local v8, "isPreviousLower":Z
    :goto_1
    cmpl-double v5, v1, v5

    if-ltz v5, :cond_2

    if-nez v3, :cond_3

    :cond_2
    cmpg-double v5, v1, v10

    if-gtz v5, :cond_7

    if-eqz v8, :cond_7

    .line 755
    :cond_3
    const-wide/16 v5, 0x0

    cmpl-double v9, v1, v5

    const/4 v10, -0x1

    if-ltz v9, :cond_4

    move v9, v7

    goto :goto_2

    :cond_4
    move v9, v10

    .line 756
    .local v9, "d":I
    :goto_2
    iget-object v11, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v11, v11, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-object v15, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-wide/from16 v17, v5

    const/16 v16, 0x0

    iget-wide v4, v15, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    const/4 v6, 0x3

    new-array v15, v6, [D

    aput-wide v11, v15, v16

    aput-wide v13, v15, v7

    const/4 v11, 0x2

    aput-wide v4, v15, v11

    .line 759
    .local v15, "xval":[D
    iget-object v4, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-object v14, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move/from16 v19, v7

    move/from16 v20, v8

    .end local v8    # "isPreviousLower":Z
    .local v20, "isPreviousLower":Z
    iget-wide v7, v14, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    new-array v6, v6, [D

    aput-wide v4, v6, v16

    aput-wide v12, v6, v19

    aput-wide v7, v6, v11

    .line 762
    .local v6, "yval":[D
    iget-wide v4, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    int-to-double v7, v9

    add-double/2addr v4, v7

    .line 764
    .local v4, "xD":D
    iget-object v7, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v7, v15, v6}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v7

    .line 766
    .local v7, "univariateFunction":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    invoke-interface {v7, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v12

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 769
    iget-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-direct {v0, v6, v12, v13}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->isEstimateBad([DD)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 770
    aget-wide v12, v15, v19

    sub-double v12, v4, v12

    cmpl-double v8, v12, v17

    if-lez v8, :cond_5

    move/from16 v10, v19

    .line 771
    .local v10, "delta":I
    :cond_5
    aget-wide v12, v15, v19

    add-int/lit8 v8, v10, 0x1

    aget-wide v17, v15, v8

    new-array v8, v11, [D

    aput-wide v12, v8, v16

    aput-wide v17, v8, v19

    .line 773
    .local v8, "xBad":[D
    aget-wide v12, v6, v19

    add-int/lit8 v14, v10, 0x1

    aget-wide v17, v6, v14

    new-array v11, v11, [D

    aput-wide v12, v11, v16

    aput-wide v17, v11, v19

    .line 775
    .local v11, "yBad":[D
    filled-new-array {v11}, [[D

    move-result-object v12

    invoke-static {v8, v12}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 776
    iget-object v12, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v12, v8, v11}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v7

    .line 777
    invoke-interface {v7, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v12

    iput-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 779
    .end local v8    # "xBad":[D
    .end local v10    # "delta":I
    .end local v11    # "yBad":[D
    :cond_6
    invoke-direct {v0, v9}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V

    goto :goto_3

    .line 754
    .end local v4    # "xD":D
    .end local v6    # "yval":[D
    .end local v7    # "univariateFunction":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v9    # "d":I
    .end local v15    # "xval":[D
    .end local v20    # "isPreviousLower":Z
    .local v8, "isPreviousLower":Z
    :cond_7
    move/from16 v20, v8

    .line 781
    .end local v8    # "isPreviousLower":Z
    .restart local v20    # "isPreviousLower":Z
    :goto_3
    iget-wide v4, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide v4
.end method

.method private incrementPosition(I)V
    .locals 4
    .param p1, "d"    # I

    .line 730
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    int-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    .line 731
    return-void
.end method

.method private index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0
    .param p1, "indexOfMarker"    # I

    .line 713
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    .line 714
    return-object p0
.end method

.method private isEstimateBad([DD)Z
    .locals 3
    .param p1, "y"    # [D
    .param p2, "yD"    # D

    .line 793
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    cmpg-double v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    cmpl-double v1, p2, v1

    if-ltz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0
    .param p1, "nextMarker"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 701
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 702
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 703
    return-object p0
.end method

.method private previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0
    .param p1, "previousMarker"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 688
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 689
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 690
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "anInstream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 849
    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 850
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 851
    return-void
.end method

.method private updateDesiredPosition()V
    .locals 4

    .line 721
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    .line 722
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 9

    .line 860
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v7, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "result":Z
    if-ne p0, p1, :cond_0

    .line 808
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 809
    :cond_0
    if-eqz p1, :cond_7

    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    if-eqz v1, :cond_7

    .line 810
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 812
    .local v1, "that":Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 813
    .end local v0    # "result":Z
    .local v2, "result":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v7, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    .line 817
    .end local v2    # "result":Z
    .restart local v0    # "result":Z
    :goto_1
    if-eqz v0, :cond_3

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v7, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    .line 821
    .end local v0    # "result":Z
    .restart local v2    # "result":Z
    :goto_2
    if-eqz v2, :cond_4

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v7, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v4

    .line 826
    .end local v2    # "result":Z
    .restart local v0    # "result":Z
    :goto_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v2, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    iget-object v5, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v5, v5, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    if-ne v2, v5, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v4

    .line 827
    .end local v0    # "result":Z
    .restart local v2    # "result":Z
    :goto_4
    if-eqz v2, :cond_6

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    iget-object v5, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v5, v5, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    if-ne v0, v5, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    move v0, v3

    .line 829
    .end local v1    # "that":Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .end local v2    # "result":Z
    .restart local v0    # "result":Z
    :cond_7
    :goto_6
    return v0
.end method

.method public hashCode()I
    .locals 14

    .line 835
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-object v8, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v8, v8, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v8, v8

    iget-object v10, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v10, v10, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v10, v10

    const/4 v12, 0x6

    new-array v12, v12, [D

    const/4 v13, 0x0

    aput-wide v0, v12, v13

    const/4 v0, 0x1

    aput-wide v2, v12, v0

    const/4 v0, 0x2

    aput-wide v4, v12, v0

    const/4 v0, 0x3

    aput-wide v6, v12, v0

    const/4 v0, 0x4

    aput-wide v8, v12, v0

    const/4 v0, 0x5

    aput-wide v10, v12, v0

    invoke-static {v12}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 869
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    const/4 v4, 0x2

    invoke-static {v0, v1, v4}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-static {v5, v6, v4}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    invoke-static {v6, v7, v4}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, v0

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "index=%.0f,n=%.0f,np=%.2f,q=%.2f,dn=%.2f,prev=%d,next=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
