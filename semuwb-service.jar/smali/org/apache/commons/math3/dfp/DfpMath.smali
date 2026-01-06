.class public Lorg/apache/commons/math3/dfp/DfpMath;
.super Ljava/lang/Object;
.source "DfpMath.java"


# static fields
.field private static final POW_TRAP:Ljava/lang/String; = "pow"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static acos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 945
    const/4 v0, 0x0

    .line 947
    .local v0, "negative":Z
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    const/4 v0, 0x1

    .line 951
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 953
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 955
    .local v1, "result":Lorg/apache/commons/math3/dfp/Dfp;
    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 959
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2
.end method

.method public static asin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 936
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public static atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 18
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 871
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 872
    .local v1, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 873
    .local v2, "one":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getSqr2Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 874
    .local v3, "sqr2Split":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 875
    .local v4, "piSplit":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v5, 0x0

    .line 876
    .local v5, "recp":Z
    const/4 v6, 0x0

    .line 877
    .local v6, "neg":Z
    const/4 v7, 0x0

    .line 879
    .local v7, "sub":Z
    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v11, v3, v10

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    .line 881
    .local v9, "ty":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v11, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 882
    .local v11, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 883
    const/4 v6, 0x1

    .line 884
    invoke-virtual {v11}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 887
    :cond_0
    invoke-virtual {v11, v2}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 888
    const/4 v5, 0x1

    .line 889
    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 892
    :cond_1
    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_2

    .line 893
    new-array v12, v13, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 894
    .local v12, "sty":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v7, 0x1

    .line 896
    aget-object v14, v3, v8

    invoke-virtual {v14, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    aput-object v14, v12, v8

    .line 897
    aget-object v14, v3, v10

    aput-object v14, v12, v10

    .line 899
    invoke-static {v11}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    .line 901
    .local v14, "xs":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v14, v12}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    .line 902
    .local v15, "ds":[Lorg/apache/commons/math3/dfp/Dfp;
    move/from16 v16, v8

    aget-object v8, v15, v16

    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v15, v16

    .line 904
    aget-object v8, v14, v16

    move/from16 v17, v10

    aget-object v10, v12, v16

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v14, v16

    .line 905
    aget-object v8, v14, v17

    aget-object v10, v12, v17

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v14, v17

    .line 907
    invoke-static {v14, v15}, Lorg/apache/commons/math3/dfp/DfpMath;->splitDiv([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    .line 908
    .end local v14    # "xs":[Lorg/apache/commons/math3/dfp/Dfp;
    .local v8, "xs":[Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v10, v8, v16

    aget-object v14, v8, v17

    invoke-virtual {v10, v14}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    goto :goto_0

    .line 892
    .end local v8    # "xs":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v12    # "sty":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v15    # "ds":[Lorg/apache/commons/math3/dfp/Dfp;
    :cond_2
    move/from16 v16, v8

    move/from16 v17, v10

    .line 913
    :goto_0
    invoke-static {v11}, Lorg/apache/commons/math3/dfp/DfpMath;->atanInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    .line 915
    .local v8, "y":Lorg/apache/commons/math3/dfp/Dfp;
    if-eqz v7, :cond_3

    .line 916
    aget-object v10, v4, v16

    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    aget-object v14, v4, v17

    invoke-virtual {v14, v12}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    .line 919
    :cond_3
    if-eqz v5, :cond_4

    .line 920
    aget-object v10, v4, v16

    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    aget-object v12, v4, v17

    invoke-virtual {v12, v13}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    .line 923
    :cond_4
    if-eqz v6, :cond_5

    .line 924
    invoke-virtual {v8}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    .line 927
    :cond_5
    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    return-object v10
.end method

.method protected static atanInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 838
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 839
    .local v0, "y":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 840
    .local v1, "x":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 842
    .local v2, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v3, 0x3

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x5a

    if-ge v3, v4, :cond_1

    .line 843
    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 844
    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 845
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 846
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 847
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 848
    goto :goto_1

    .line 850
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    move-object v2, v4

    .line 842
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 853
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 10
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 779
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 780
    .local v0, "pi":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 781
    .local v1, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x0

    .line 784
    .local v2, "neg":Z
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 788
    .local v4, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 789
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 796
    :cond_0
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 797
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 798
    const/4 v2, 0x1

    .line 802
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 803
    new-array v3, v3, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 804
    .local v3, "c":[Lorg/apache/commons/math3/dfp/Dfp;
    aput-object v4, v3, v7

    .line 805
    aput-object v1, v3, v6

    .line 807
    invoke-static {v3}, Lorg/apache/commons/math3/dfp/DfpMath;->cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 808
    .local v3, "y":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_0

    .line 809
    .end local v3    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_2
    new-array v5, v3, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 810
    .local v5, "c":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    .line 811
    .local v8, "piSplit":[Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v9, v8, v7

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    aput-object v9, v5, v7

    .line 812
    aget-object v7, v8, v6

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aput-object v3, v5, v6

    .line 813
    invoke-static {v5}, Lorg/apache/commons/math3/dfp/DfpMath;->sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 816
    .end local v5    # "c":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v8    # "piSplit":[Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v3    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    if-eqz v2, :cond_3

    .line 817
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 820
    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    return-object v5
.end method

.method protected static cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .line 700
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 703
    .local v1, "one":Lorg/apache/commons/math3/dfp/Dfp;
    move-object v2, v1

    .line 704
    .local v2, "x":Lorg/apache/commons/math3/dfp/Dfp;
    move-object v3, v1

    .line 705
    .local v3, "y":Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v0, p0, v0

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 706
    .local v0, "c":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 708
    move-object v4, v1

    .line 709
    .local v4, "fact":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v5, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 711
    .local v5, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_0
    const/16 v7, 0x5a

    if-ge v6, v7, :cond_1

    .line 712
    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 713
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 715
    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v6

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 717
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 718
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 719
    goto :goto_1

    .line 721
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v7, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    move-object v5, v7

    .line 711
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 724
    .end local v6    # "i":I
    :cond_1
    :goto_1
    return-object v3
.end method

.method public static exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 265
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 266
    .local v0, "inta":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 268
    .local v1, "fraca":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v2

    .line 269
    .local v2, "ia":I
    const v3, 0x7ffffffe

    if-le v2, v3, :cond_0

    .line 271
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    return-object v3

    .line 274
    :cond_0
    const v3, -0x7ffffffe

    if-ge v2, v3, :cond_1

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    return-object v3

    .line 279
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getESplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 280
    .local v3, "einta":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->expInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 282
    .local v4, "efraca":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    return-object v5
.end method

.method protected static expInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 291
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 292
    .local v0, "y":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 293
    .local v1, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 294
    .local v2, "fact":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 296
    .local v3, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x5a

    if-ge v4, v5, :cond_1

    .line 297
    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 298
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    goto :goto_1

    .line 303
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    move-object v3, v5

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    .end local v4    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 320
    const/4 v0, 0x0

    .line 323
    .local v0, "p2":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 329
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 330
    return-object p0

    .line 333
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 334
    .local v1, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->log10K()I

    move-result v3

    .line 336
    .local v3, "lr":I
    const/16 v4, 0x2710

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->floor()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v4

    .line 339
    .local v4, "ix":I
    :goto_0
    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 340
    shr-int/lit8 v4, v4, 0x1

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 346
    .local v6, "spx":[Lorg/apache/commons/math3/dfp/Dfp;
    new-array v7, v5, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 347
    .local v7, "spy":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-static {v8, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 348
    aget-object v8, v6, v9

    aget-object v10, v7, v9

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v6, v9

    .line 349
    aget-object v8, v6, v2

    aget-object v10, v7, v9

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v6, v2

    .line 351
    const-string v8, "1.33333"

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v7, v9

    .line 352
    :goto_1
    aget-object v8, v6, v9

    aget-object v10, v6, v2

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aget-object v10, v7, v9

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 353
    aget-object v8, v6, v9

    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v6, v9

    .line 354
    aget-object v8, v6, v2

    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v6, v2

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_3
    invoke-static {v6}, Lorg/apache/commons/math3/dfp/DfpMath;->logInternal([Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 361
    .local v5, "spz":[Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v10, v0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v6, v9

    .line 362
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v6, v2

    .line 363
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-static {v8, v6}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 365
    aget-object v8, v5, v9

    aget-object v10, v7, v9

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v5, v9

    .line 366
    aget-object v8, v5, v2

    aget-object v10, v7, v2

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v5, v2

    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v10, v3, 0x4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v6, v9

    .line 369
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v6, v2

    .line 370
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/dfp/DfpField;->getLn5Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-static {v8, v6}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 372
    aget-object v8, v5, v9

    aget-object v10, v7, v9

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v5, v9

    .line 373
    aget-object v8, v5, v2

    aget-object v10, v7, v2

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v5, v2

    .line 375
    aget-object v8, v5, v9

    aget-object v2, v5, v2

    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 325
    .end local v1    # "x":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v3    # "lr":I
    .end local v4    # "ix":I
    .end local v5    # "spz":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v6    # "spx":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v7    # "spy":[Lorg/apache/commons/math3/dfp/Dfp;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 326
    const/4 v1, 0x3

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    const-string v3, "ln"

    invoke-virtual {p0, v2, v3, p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1
.end method

.method protected static logInternal([Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .line 439
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 440
    .local v1, "t":Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v2, p0, v0

    const-string v3, "-0.25"

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aget-object v3, p0, v0

    const-string v4, "0.25"

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 442
    .local v2, "x":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 443
    .local v3, "y":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 444
    .local v4, "num":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v5, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 445
    .local v5, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v6, 0x1

    .line 446
    .local v6, "den":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v8, 0x2710

    if-ge v7, v8, :cond_1

    .line 447
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 448
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 449
    add-int/lit8 v6, v6, 0x2

    .line 450
    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 451
    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 452
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 453
    goto :goto_1

    .line 455
    :cond_0
    new-instance v8, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v8, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    move-object v5, v8

    .line 446
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 458
    .end local v7    # "i":I
    :cond_1
    :goto_1
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 460
    .end local v3    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    .local v0, "y":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    return-object v3
.end method

.method public static pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p0, "base"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "a"    # I

    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, "invert":Z
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 216
    .local v1, "result":Lorg/apache/commons/math3/dfp/Dfp;
    if-nez p1, :cond_0

    .line 218
    return-object v1

    .line 221
    :cond_0
    if-gez p1, :cond_1

    .line 222
    const/4 v0, 0x1

    .line 223
    neg-int p1, p1

    .line 228
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 230
    .local v2, "r":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v3, 0x1

    .line 234
    .local v3, "trial":I
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 235
    .local v4, "prevr":Lorg/apache/commons/math3/dfp/Dfp;
    move v5, v3

    .line 236
    .local v5, "prevtrial":I
    invoke-virtual {v2, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 237
    mul-int/lit8 v3, v3, 0x2

    .line 238
    if-gt p1, v3, :cond_2

    .line 240
    move-object v2, v4

    .line 241
    move v3, v5

    .line 243
    sub-int/2addr p1, v3

    .line 244
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 246
    .end local v2    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v3    # "trial":I
    .end local v4    # "prevr":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v5    # "prevtrial":I
    const/4 v2, 0x1

    if-ge p1, v2, :cond_1

    .line 248
    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 252
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2
.end method

.method public static pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 12
    .param p0, "x"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "y"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 507
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "pow"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 509
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 510
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 511
    invoke-virtual {p0, v4, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 514
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 515
    .local v0, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 516
    .local v1, "one":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 517
    .local v5, "two":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v6, 0x0

    .line 521
    .local v6, "invert":Z
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 522
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 525
    :cond_1
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 526
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 529
    invoke-virtual {p0, v4, v3, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 531
    :cond_2
    return-object p0

    .line 534
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_2

    .line 541
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_a

    .line 542
    invoke-static {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 544
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 545
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 547
    :cond_5
    invoke-virtual {p0, v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 551
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 553
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 554
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 556
    :cond_7
    invoke-virtual {p0, v8, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 560
    :cond_8
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 561
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 563
    :cond_9
    invoke-virtual {p0, v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 569
    :cond_a
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 572
    const/4 v6, 0x1

    .line 575
    :cond_b
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v7

    if-ne v7, v4, :cond_d

    .line 576
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 577
    return-object p1

    .line 579
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 583
    :cond_d
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v7

    if-ne v7, v4, :cond_f

    .line 584
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 585
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 587
    :cond_e
    invoke-static {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 591
    :cond_f
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v7

    if-ne v7, v4, :cond_10

    .line 592
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 593
    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v4, v3, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 596
    :cond_10
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v7

    if-ne v7, v4, :cond_16

    .line 598
    if-eqz v6, :cond_14

    .line 600
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 602
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 603
    invoke-virtual {p0, v8, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 605
    :cond_11
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 609
    :cond_12
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 610
    invoke-virtual {p0, v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 612
    :cond_13
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 617
    :cond_14
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 618
    return-object p0

    .line 620
    :cond_15
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 625
    :cond_16
    if-eqz v6, :cond_17

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 626
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 627
    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v4, v3, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 633
    :cond_17
    const v2, 0x5f5e100

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_19

    const v2, -0x5f5e100

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 634
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 635
    .local v2, "u":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v3

    .line 637
    .local v3, "ui":I
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 639
    .local v4, "v":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;->unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 640
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 641
    .local v7, "a":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    .line 643
    .local v8, "b":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    .line 644
    .local v9, "c":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    invoke-static {v10, v3}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 645
    .local v10, "r":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v8}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v11

    invoke-static {v5, v11}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 646
    invoke-static {v9}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 647
    .end local v8    # "b":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v9    # "c":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v10    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    .local v7, "r":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_0

    .line 648
    .end local v7    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_18
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 650
    .end local v2    # "u":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v4    # "v":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v7    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    goto :goto_1

    .line 652
    .end local v3    # "ui":I
    .end local v7    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_19
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 655
    .restart local v7    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_1
    if-eqz v6, :cond_1a

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 657
    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 660
    :cond_1a
    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2

    .line 536
    .end local v7    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1b
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 537
    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v4, v3, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2
.end method

.method public static sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 733
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 734
    .local v0, "pi":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 735
    .local v1, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x0

    .line 738
    .local v2, "neg":Z
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 742
    .local v4, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 743
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 744
    const/4 v2, 0x1

    .line 751
    :cond_0
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 752
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 756
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 757
    invoke-static {v4}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/math3/dfp/DfpMath;->sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .local v3, "y":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_0

    .line 759
    .end local v3    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_2
    new-array v5, v3, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 760
    .local v5, "c":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 761
    .local v6, "piSplit":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v7, 0x0

    aget-object v8, v6, v7

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    aput-object v8, v5, v7

    .line 762
    const/4 v7, 0x1

    aget-object v8, v6, v7

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aput-object v3, v5, v7

    .line 763
    invoke-static {v5}, Lorg/apache/commons/math3/dfp/DfpMath;->cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 766
    .end local v5    # "c":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v6    # "piSplit":[Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v3    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    if-eqz v2, :cond_3

    .line 767
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 770
    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    return-object v5
.end method

.method protected static sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .line 671
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 672
    .local v1, "c":Lorg/apache/commons/math3/dfp/Dfp;
    move-object v2, v1

    .line 673
    .local v2, "y":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 674
    move-object v3, v2

    .line 675
    .local v3, "x":Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 676
    .local v0, "fact":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 678
    .local v4, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v5, 0x3

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x5a

    if-ge v5, v6, :cond_1

    .line 679
    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 680
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 682
    add-int/lit8 v6, v5, -0x1

    mul-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 683
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 684
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 685
    goto :goto_1

    .line 687
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v6, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    move-object v4, v6

    .line 678
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 690
    .end local v5    # "i":I
    :cond_1
    :goto_1
    return-object v2
.end method

.method protected static split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 94
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 95
    .local v1, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result v2

    div-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 96
    .local v0, "shift":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 97
    aget-object v2, v1, v3

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 98
    return-object v1
.end method

.method protected static split(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11
    .param p0, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p1, "a"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 47
    .local v1, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x1

    .line 48
    .local v2, "leading":Z
    const/4 v3, 0x0

    .line 49
    .local v3, "sp":I
    const/4 v4, 0x0

    .line 51
    .local v4, "sig":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [C

    .line 53
    .local v5, "buf":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    const/16 v8, 0x30

    const/16 v9, 0x39

    if-ge v6, v7, :cond_4

    .line 54
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v5, v6

    .line 56
    aget-char v7, v5, v6

    const/16 v10, 0x31

    if-lt v7, v10, :cond_0

    aget-char v7, v5, v6

    if-gt v7, v9, :cond_0

    .line 57
    const/4 v2, 0x0

    .line 60
    :cond_0
    aget-char v7, v5, v6

    const/16 v10, 0x2e

    if-ne v7, v10, :cond_1

    .line 61
    rsub-int v7, v4, 0x190

    rem-int/lit8 v7, v7, 0x4

    add-int/2addr v4, v7

    .line 62
    const/4 v2, 0x0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v7

    div-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0x4

    if-ne v4, v7, :cond_2

    .line 66
    move v3, v6

    .line 67
    goto :goto_1

    .line 70
    :cond_2
    aget-char v7, v5, v6

    if-lt v7, v8, :cond_3

    aget-char v7, v5, v6

    if-gt v7, v9, :cond_3

    if-nez v2, :cond_3

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 53
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    .end local v6    # "i":I
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    aput-object v0, v1, v6

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_6

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v0

    .line 79
    aget-char v6, v5, v0

    if-lt v6, v8, :cond_5

    aget-char v6, v5, v0

    if-gt v6, v9, :cond_5

    if-ge v0, v3, :cond_5

    .line 80
    aput-char v8, v5, v0

    .line 77
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 84
    .end local v0    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v1, v6

    .line 86
    return-object v1
.end method

.method protected static splitDiv([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "b"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 140
    .local v0, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v0, v1

    .line 141
    const/4 v2, 0x1

    aget-object v3, p0, v2

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aget-object v4, p0, v1

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aput-object v3, v0, v2

    .line 142
    aget-object v3, v0, v2

    aget-object v4, p1, v1

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    aget-object v1, p1, v1

    aget-object v5, p1, v2

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v2

    .line 144
    return-object v0
.end method

.method protected static splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "b"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 112
    .local v0, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 113
    aget-object v2, p0, v1

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v2

    if-eq v2, v3, :cond_1

    aget-object v2, v0, v1

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    aget-object v2, p0, v1

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aget-object v4, p0, v3

    aget-object v1, p1, v1

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aget-object v2, p0, v3

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v3

    .line 125
    return-object v0

    .line 120
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected static splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8
    .param p0, "base"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "a"    # I

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "invert":Z
    const/4 v1, 0x2

    new-array v2, v1, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 157
    .local v2, "r":[Lorg/apache/commons/math3/dfp/Dfp;
    new-array v3, v1, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 158
    .local v3, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v4, 0x0

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aput-object v5, v3, v4

    .line 159
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 161
    if-nez p1, :cond_0

    .line 163
    aget-object v1, v3, v4

    aget-object v4, v3, v6

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 166
    :cond_0
    if-gez p1, :cond_1

    .line 168
    const/4 v0, 0x1

    .line 169
    neg-int p1, p1

    .line 174
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    aget-object v7, p0, v4

    invoke-direct {v5, v7}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    aput-object v5, v2, v4

    .line 175
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    aget-object v7, p0, v6

    invoke-direct {v5, v7}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    aput-object v5, v2, v6

    .line 176
    const/4 v5, 0x1

    .line 180
    .local v5, "trial":I
    :goto_0
    move v7, v5

    .line 181
    .local v7, "prevtrial":I
    mul-int/2addr v5, v1

    .line 182
    if-le v5, p1, :cond_3

    .line 183
    nop

    .line 188
    move v5, v7

    .line 190
    sub-int/2addr p1, v5

    .line 191
    invoke-static {v3, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 193
    .end local v5    # "trial":I
    .end local v7    # "prevtrial":I
    if-ge p1, v6, :cond_1

    .line 195
    aget-object v1, v3, v4

    aget-object v5, v3, v6

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v3, v4

    .line 197
    if-eqz v0, :cond_2

    .line 198
    aget-object v1, p0, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aget-object v5, v3, v4

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v3, v4

    .line 201
    :cond_2
    aget-object v1, v3, v4

    return-object v1

    .line 185
    .restart local v5    # "trial":I
    .restart local v7    # "prevtrial":I
    :cond_3
    invoke-static {v2, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    goto :goto_0
.end method

.method public static tan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 829
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method
