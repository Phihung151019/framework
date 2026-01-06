.class Lorg/apache/commons/math3/util/FastMathCalc;
.super Ljava/lang/Object;
.source "FastMathCalc.java"


# static fields
.field private static final FACT:[D

.field private static final HEX_40000000:J = 0x40000000L

.field private static final LN_SPLIT_COEF:[[D

.field private static final TABLE_END_DECL:Ljava/lang/String; = "    };"

.field private static final TABLE_START_DECL:Ljava/lang/String; = "    {"


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 35
    const/16 v0, 0x14

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    .line 60
    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    new-array v3, v0, [D

    fill-array-data v3, :array_3

    new-array v4, v0, [D

    fill-array-data v4, :array_4

    new-array v5, v0, [D

    fill-array-data v5, :array_5

    new-array v6, v0, [D

    fill-array-data v6, :array_6

    new-array v7, v0, [D

    fill-array-data v7, :array_7

    new-array v8, v0, [D

    fill-array-data v8, :array_8

    new-array v9, v0, [D

    fill-array-data v9, :array_9

    new-array v10, v0, [D

    fill-array-data v10, :array_a

    new-array v11, v0, [D

    fill-array-data v11, :array_b

    new-array v12, v0, [D

    fill-array-data v12, :array_c

    new-array v13, v0, [D

    fill-array-data v13, :array_d

    new-array v14, v0, [D

    fill-array-data v14, :array_e

    new-array v15, v0, [D

    fill-array-data v15, :array_f

    new-array v0, v0, [D

    fill-array-data v0, :array_10

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
        0x4038000000000000L    # 24.0
        0x405e000000000000L    # 120.0
        0x4086800000000000L    # 720.0
        0x40b3b00000000000L    # 5040.0
        0x40e3b00000000000L    # 40320.0
        0x4116260000000000L    # 362880.0
        0x414baf8000000000L    # 3628800.0
        0x418308a800000000L    # 3.99168E7
        0x41bc8cfc00000000L    # 4.790016E8
        0x41f7328cc0000000L    # 6.2270208E9
        0x42344c3b28000000L    # 8.71782912E10
        0x4273077775800000L    # 1.307674368E12
        0x42b3077775800000L    # 2.0922789888E13
        0x42f437eeecd80000L    # 3.55687428096E14
        0x4336beecca730000L    # 6.402373705728E15
        0x437b02b930689000L    # 1.21645100408832E17
    .end array-data

    :array_1
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x3fe5555540000000L    # 0.6666666269302368
        0x3e65555555555575L    # 3.9736429850260626E-8
    .end array-data

    :array_3
    .array-data 8
        0x3fd9999980000000L    # 0.3999999761581421
        0x3e5999999998f89bL    # 2.3841857910019882E-8
    .end array-data

    :array_4
    .array-data 8
        0x3fd2492480000000L    # 0.2857142686843872
        0x3e52492492f04decL    # 1.7029898543501842E-8
    .end array-data

    :array_5
    .array-data 8
        0x3fcc71c700000000L    # 0.2222222089767456
        0x3e4c71c65d4f9f93L    # 1.3245471311735498E-8
    .end array-data

    :array_6
    .array-data 8
        0x3fc745d140000000L    # 0.1818181574344635
        0x3e5a2eadbefa2565L    # 2.4384203044354907E-8
    .end array-data

    :array_7
    .array-data 8
        0x3fc3b13b00000000L    # 0.1538461446762085
        0x3e43a0e93f3d8b15L    # 9.140260083262505E-9
    .end array-data

    :array_8
    .array-data 8
        0x3fc1111100000000L
        0x3e43cd12b7438617L    # 9.220590270857665E-9
    .end array-data

    :array_9
    .array-data 8
        0x3fbe1e1d40000000L    # 0.11764700710773468
        0x3e4a9d505e323f26L    # 1.2393345855018391E-8
    .end array-data

    :array_a
    .array-data 8
        0x3fbaf29580000000L    # 0.10526403784751892
        0x3e41b855b8f7ea77L    # 8.251545029714408E-9
    .end array-data

    :array_b
    .array-data 8
        0x3fb8608e40000000L    # 0.0952233225107193
        0x3e4b38ab3aca7380L    # 1.2675934823758863E-8
    .end array-data

    :array_c
    .array-data 8
        0x3fb64e8f40000000L    # 0.08713622391223907
        0x3e488bd8ad726e7fL    # 1.1430250008909141E-8
    .end array-data

    :array_d
    .array-data 8
        0x3fb41380c0000000L    # 0.07842259109020233
        0x3e24a721115060edL    # 2.404307984052299E-9
    .end array-data

    :array_e
    .array-data 8
        0x3fb56e9340000000L    # 0.08371849358081818
        0x3e494302f4f7069bL    # 1.176342548272881E-8
    .end array-data

    :array_f
    .array-data 8
        0x3f9f52e000000000L    # 0.030589580535888672
        0x3e164345ef031be1L    # 1.2958646899018938E-9
    .end array-data

    :array_10
    .array-data 8
        0x3fc32d66c0000000L    # 0.14982303977012634
        0x3e4a5298001e0c82L    # 1.225743062930824E-8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static buildSinCosTables([D[D[D[DI[D[D)V
    .locals 15
    .param p0, "SINE_TABLE_A"    # [D
    .param p1, "SINE_TABLE_B"    # [D
    .param p2, "COSINE_TABLE_A"    # [D
    .param p3, "COSINE_TABLE_B"    # [D
    .param p4, "SINE_TABLE_LEN"    # I
    .param p5, "TANGENT_TABLE_A"    # [D
    .param p6, "TANGENT_TABLE_B"    # [D

    .line 104
    move/from16 v0, p4

    const/4 v1, 0x2

    new-array v2, v1, [D

    .line 107
    .local v2, "result":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    .line 108
    int-to-double v7, v3

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    div-double/2addr v7, v9

    .line 110
    .local v7, "x":D
    invoke-static {v7, v8, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->slowSin(D[D)D

    .line 111
    aget-wide v9, v2, v5

    aput-wide v9, p0, v3

    .line 112
    aget-wide v9, v2, v6

    aput-wide v9, p1, v3

    .line 114
    invoke-static {v7, v8, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->slowCos(D[D)D

    .line 115
    aget-wide v4, v2, v5

    aput-wide v4, p2, v3

    .line 116
    aget-wide v4, v2, v6

    aput-wide v4, p3, v3

    .line 107
    .end local v7    # "x":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x7

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 121
    new-array v4, v1, [D

    .line 122
    .local v4, "xs":[D
    new-array v7, v1, [D

    .line 123
    .local v7, "ys":[D
    new-array v8, v1, [D

    .line 124
    .local v8, "as":[D
    new-array v9, v1, [D

    .line 125
    .local v9, "bs":[D
    new-array v10, v1, [D

    .line 127
    .local v10, "temps":[D
    and-int/lit8 v11, v3, 0x1

    if-nez v11, :cond_1

    .line 129
    div-int/lit8 v11, v3, 0x2

    aget-wide v11, p0, v11

    aput-wide v11, v4, v5

    .line 130
    div-int/lit8 v11, v3, 0x2

    aget-wide v11, p1, v11

    aput-wide v11, v4, v6

    .line 131
    div-int/lit8 v11, v3, 0x2

    aget-wide v11, p2, v11

    aput-wide v11, v7, v5

    .line 132
    div-int/lit8 v11, v3, 0x2

    aget-wide v11, p3, v11

    aput-wide v11, v7, v6

    .line 135
    invoke-static {v4, v7, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 136
    aget-wide v11, v2, v5

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v13

    aput-wide v11, p0, v3

    .line 137
    aget-wide v11, v2, v6

    mul-double/2addr v11, v13

    aput-wide v11, p1, v3

    .line 140
    invoke-static {v7, v7, v8}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 141
    invoke-static {v4, v4, v10}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 142
    aget-wide v11, v10, v5

    neg-double v11, v11

    aput-wide v11, v10, v5

    .line 143
    aget-wide v11, v10, v6

    neg-double v11, v11

    aput-wide v11, v10, v6

    .line 144
    invoke-static {v8, v10, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 145
    aget-wide v11, v2, v5

    aput-wide v11, p2, v3

    .line 146
    aget-wide v11, v2, v6

    aput-wide v11, p3, v3

    goto :goto_2

    .line 148
    :cond_1
    div-int/lit8 v11, v3, 0x2

    aget-wide v11, p0, v11

    aput-wide v11, v4, v5

    .line 149
    div-int/lit8 v11, v3, 0x2

    aget-wide v11, p1, v11

    aput-wide v11, v4, v6

    .line 150
    div-int/lit8 v11, v3, 0x2

    aget-wide v11, p2, v11

    aput-wide v11, v7, v5

    .line 151
    div-int/lit8 v11, v3, 0x2

    aget-wide v11, p3, v11

    aput-wide v11, v7, v6

    .line 152
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v6

    aget-wide v11, p0, v11

    aput-wide v11, v8, v5

    .line 153
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v6

    aget-wide v11, p1, v11

    aput-wide v11, v8, v6

    .line 154
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v6

    aget-wide v11, p2, v11

    aput-wide v11, v9, v5

    .line 155
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v6

    aget-wide v11, p3, v11

    aput-wide v11, v9, v6

    .line 158
    invoke-static {v4, v9, v10}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 159
    invoke-static {v7, v8, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 160
    invoke-static {v2, v10, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 161
    aget-wide v11, v2, v5

    aput-wide v11, p0, v3

    .line 162
    aget-wide v11, v2, v6

    aput-wide v11, p1, v3

    .line 165
    invoke-static {v7, v9, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 166
    invoke-static {v4, v8, v10}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 167
    aget-wide v11, v10, v5

    neg-double v11, v11

    aput-wide v11, v10, v5

    .line 168
    aget-wide v11, v10, v6

    neg-double v11, v11

    aput-wide v11, v10, v6

    .line 169
    invoke-static {v2, v10, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 170
    aget-wide v11, v2, v5

    aput-wide v11, p2, v3

    .line 171
    aget-wide v11, v2, v6

    aput-wide v11, p3, v3

    .line 120
    .end local v4    # "xs":[D
    .end local v7    # "ys":[D
    .end local v8    # "as":[D
    .end local v9    # "bs":[D
    .end local v10    # "temps":[D
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 176
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_3

    .line 177
    new-array v4, v1, [D

    .line 178
    .restart local v4    # "xs":[D
    new-array v7, v1, [D

    .line 179
    .restart local v7    # "ys":[D
    new-array v8, v1, [D

    .line 181
    .restart local v8    # "as":[D
    aget-wide v9, p2, v3

    aput-wide v9, v8, v5

    .line 182
    aget-wide v9, p3, v3

    aput-wide v9, v8, v6

    .line 184
    invoke-static {v8, v7}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 186
    aget-wide v9, p0, v3

    aput-wide v9, v4, v5

    .line 187
    aget-wide v9, p1, v3

    aput-wide v9, v4, v6

    .line 189
    invoke-static {v4, v7, v8}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 191
    aget-wide v9, v8, v5

    aput-wide v9, p5, v3

    .line 192
    aget-wide v9, v8, v6

    aput-wide v9, p6, v3

    .line 176
    .end local v4    # "xs":[D
    .end local v7    # "ys":[D
    .end local v8    # "as":[D
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 195
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private static checkLen(II)V
    .locals 1
    .param p0, "expectedLen"    # I
    .param p1, "actual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 653
    if-ne p0, p1, :cond_0

    .line 656
    return-void

    .line 654
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method static expint(I[D)D
    .locals 7
    .param p0, "p"    # I
    .param p1, "result"    # [D

    .line 493
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 494
    .local v1, "xs":[D
    new-array v2, v0, [D

    .line 495
    .local v2, "as":[D
    new-array v0, v0, [D

    .line 504
    .local v0, "ys":[D
    const-wide v3, 0x4005bf0a8b145769L    # Math.E

    const/4 v5, 0x0

    aput-wide v3, v1, v5

    .line 505
    const-wide v3, 0x3ca4d57ee2b1013aL

    const/4 v6, 0x1

    aput-wide v3, v1, v6

    .line 507
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 509
    :goto_0
    if-lez p0, :cond_1

    .line 510
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_0

    .line 511
    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->quadMult([D[D[D)V

    .line 512
    aget-wide v3, v2, v5

    aput-wide v3, v0, v5

    aget-wide v3, v2, v6

    aput-wide v3, v0, v6

    .line 515
    :cond_0
    invoke-static {v1, v1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->quadMult([D[D[D)V

    .line 516
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    aget-wide v3, v2, v6

    aput-wide v3, v1, v6

    .line 518
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    if-eqz p1, :cond_2

    .line 522
    aget-wide v3, v0, v5

    aput-wide v3, p1, v5

    .line 523
    aget-wide v3, v0, v6

    aput-wide v3, p1, v6

    .line 525
    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 528
    :cond_2
    aget-wide v3, v0, v5

    aget-wide v5, v0, v6

    add-double/2addr v3, v5

    return-wide v3
.end method

.method static format(D)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # D

    .line 638
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "Double.NaN,"

    return-object v0

    .line 641
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-ltz v1, :cond_1

    const-string v1, "+"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V
    .locals 7
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expectedLen"    # I
    .param p3, "array"    # [D

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    array-length v0, p3

    invoke-static {p2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->checkLen(II)V

    .line 626
    const-string v0, "    {"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    move-object v0, p3

    .local v0, "arr$":[D
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 628
    .local v3, "d":D
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->format(D)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "        %s%n"

    invoke-virtual {p0, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 627
    .end local v3    # "d":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v0    # "arr$":[D
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    const-string v0, "    };"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method static printarray(Ljava/io/PrintStream;Ljava/lang/String;I[[D)V
    .locals 12
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expectedLen"    # I
    .param p3, "array2d"    # [[D

    .line 602
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    array-length v0, p3

    invoke-static {p2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->checkLen(II)V

    .line 604
    const-string v0, "    { "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "i":I
    move-object v1, p3

    .local v1, "arr$":[[D
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 607
    .local v4, "array":[D
    const-string v5, "        {"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 608
    move-object v5, v4

    .local v5, "arr$":[D
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_0

    aget-wide v8, v5, v7

    .line 609
    .local v8, "d":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMathCalc;->format(D)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%-25.25s"

    invoke-virtual {p0, v11, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 608
    .end local v8    # "d":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 611
    .end local v5    # "arr$":[D
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "}, // "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "i":I
    .local v6, "i":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 606
    .end local v4    # "array":[D
    add-int/lit8 v3, v3, 0x1

    move v0, v6

    goto :goto_0

    .line 613
    .end local v1    # "arr$":[[D
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v6    # "i":I
    .restart local v0    # "i":I
    :cond_1
    const-string v1, "    };"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private static quadMult([D[D[D)V
    .locals 13
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "result"    # [D

    .line 438
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 439
    .local v1, "xs":[D
    new-array v2, v0, [D

    .line 440
    .local v2, "ys":[D
    new-array v0, v0, [D

    .line 443
    .local v0, "zs":[D
    const/4 v3, 0x0

    aget-wide v4, p0, v3

    invoke-static {v4, v5, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 444
    aget-wide v4, p1, v3

    invoke-static {v4, v5, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 445
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 447
    aget-wide v4, v0, v3

    aput-wide v4, p2, v3

    .line 448
    const/4 v4, 0x1

    aget-wide v5, v0, v4

    aput-wide v5, p2, v4

    .line 451
    aget-wide v5, p1, v4

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 452
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 454
    aget-wide v5, p2, v3

    aget-wide v7, v0, v3

    add-double/2addr v5, v7

    .line 455
    .local v5, "tmp":D
    aget-wide v7, p2, v4

    aget-wide v9, p2, v3

    sub-double v9, v5, v9

    aget-wide v11, v0, v3

    sub-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, p2, v4

    .line 456
    aput-wide v5, p2, v3

    .line 457
    aget-wide v7, p2, v3

    aget-wide v9, v0, v4

    add-double/2addr v7, v9

    .line 458
    .end local v5    # "tmp":D
    .local v7, "tmp":D
    aget-wide v5, p2, v4

    aget-wide v9, p2, v3

    sub-double v9, v7, v9

    aget-wide v11, v0, v4

    sub-double/2addr v9, v11

    sub-double/2addr v5, v9

    aput-wide v5, p2, v4

    .line 459
    aput-wide v7, p2, v3

    .line 462
    aget-wide v5, p0, v4

    invoke-static {v5, v6, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 463
    aget-wide v5, p1, v3

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 464
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 466
    aget-wide v5, p2, v3

    aget-wide v9, v0, v3

    add-double/2addr v5, v9

    .line 467
    .end local v7    # "tmp":D
    .restart local v5    # "tmp":D
    aget-wide v7, p2, v4

    aget-wide v9, p2, v3

    sub-double v9, v5, v9

    aget-wide v11, v0, v3

    sub-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, p2, v4

    .line 468
    aput-wide v5, p2, v3

    .line 469
    aget-wide v7, p2, v3

    aget-wide v9, v0, v4

    add-double/2addr v7, v9

    .line 470
    .end local v5    # "tmp":D
    .restart local v7    # "tmp":D
    aget-wide v5, p2, v4

    aget-wide v9, p2, v3

    sub-double v9, v7, v9

    aget-wide v11, v0, v4

    sub-double/2addr v9, v11

    sub-double/2addr v5, v9

    aput-wide v5, p2, v4

    .line 471
    aput-wide v7, p2, v3

    .line 474
    aget-wide v5, p0, v4

    invoke-static {v5, v6, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 475
    aget-wide v5, p1, v4

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 476
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 478
    aget-wide v5, p2, v3

    aget-wide v9, v0, v3

    add-double/2addr v5, v9

    .line 479
    .end local v7    # "tmp":D
    .restart local v5    # "tmp":D
    aget-wide v7, p2, v4

    aget-wide v9, p2, v3

    sub-double v9, v5, v9

    aget-wide v11, v0, v3

    sub-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, p2, v4

    .line 480
    aput-wide v5, p2, v3

    .line 481
    aget-wide v7, p2, v3

    aget-wide v9, v0, v4

    add-double/2addr v7, v9

    .line 482
    .end local v5    # "tmp":D
    .restart local v7    # "tmp":D
    aget-wide v5, p2, v4

    aget-wide v9, p2, v3

    sub-double v9, v7, v9

    aget-wide v11, v0, v4

    sub-double/2addr v9, v11

    sub-double/2addr v5, v9

    aput-wide v5, p2, v4

    .line 483
    aput-wide v7, p2, v3

    .line 484
    return-void
.end method

.method private static resplit([D)V
    .locals 13
    .param p0, "a"    # [D

    .line 345
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    add-double/2addr v1, v4

    .line 346
    .local v1, "c":D
    aget-wide v4, p0, v0

    sub-double v4, v1, v4

    aget-wide v6, p0, v3

    sub-double/2addr v4, v6

    neg-double v4, v4

    .line 348
    .local v4, "d":D
    const-wide v6, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v6, v1, v6

    const-wide/high16 v7, 0x41d0000000000000L    # 1.073741824E9

    if-gez v6, :cond_0

    const-wide v9, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v6, v1, v9

    if-lez v6, :cond_0

    .line 349
    mul-double/2addr v7, v1

    .line 350
    .local v7, "z":D
    add-double v9, v1, v7

    sub-double/2addr v9, v7

    aput-wide v9, p0, v0

    .line 351
    aget-wide v9, p0, v0

    sub-double v9, v1, v9

    add-double/2addr v9, v4

    aput-wide v9, p0, v3

    .line 352
    .end local v7    # "z":D
    goto :goto_0

    .line 353
    :cond_0
    const-wide/high16 v9, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v9, v1

    .line 354
    .local v9, "z":D
    add-double v11, v1, v9

    sub-double/2addr v11, v1

    mul-double/2addr v11, v7

    aput-wide v11, p0, v0

    .line 355
    aget-wide v6, p0, v0

    sub-double v6, v1, v6

    add-double/2addr v6, v4

    aput-wide v6, p0, v3

    .line 357
    .end local v9    # "z":D
    :goto_0
    return-void
.end method

.method static slowCos(D[D)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "result"    # [D

    .line 207
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 208
    .local v1, "xs":[D
    new-array v2, v0, [D

    .line 209
    .local v2, "ys":[D
    new-array v3, v0, [D

    .line 210
    .local v3, "facts":[D
    new-array v0, v0, [D

    .line 211
    .local v0, "as":[D
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 212
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    const/4 v7, 0x0

    aput-wide v5, v2, v7

    .line 214
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v5, v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 215
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 216
    aget-wide v8, v0, v7

    aput-wide v8, v2, v7

    aget-wide v8, v0, v4

    aput-wide v8, v2, v4

    .line 218
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_0

    .line 219
    goto :goto_1

    .line 222
    :cond_0
    sget-object v6, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v8, v6, v5

    invoke-static {v8, v9, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 223
    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 225
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_1

    .line 226
    aget-wide v8, v3, v7

    neg-double v8, v8

    aput-wide v8, v3, v7

    .line 227
    aget-wide v8, v3, v4

    neg-double v8, v8

    aput-wide v8, v3, v4

    .line 230
    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 231
    aget-wide v8, v0, v7

    aput-wide v8, v2, v7

    aget-wide v8, v0, v4

    aput-wide v8, v2, v4

    .line 214
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 234
    .end local v5    # "i":I
    :cond_2
    if-eqz p2, :cond_3

    .line 235
    aget-wide v5, v2, v7

    aput-wide v5, p2, v7

    .line 236
    aget-wide v5, v2, v4

    aput-wide v5, p2, v4

    .line 239
    :cond_3
    aget-wide v5, v2, v7

    aget-wide v7, v2, v4

    add-double/2addr v5, v7

    return-wide v5
.end method

.method static slowLog(D)[D
    .locals 10
    .param p0, "xi"    # D

    .line 550
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 551
    .local v1, "x":[D
    new-array v2, v0, [D

    .line 552
    .local v2, "x2":[D
    new-array v3, v0, [D

    .line 553
    .local v3, "y":[D
    new-array v4, v0, [D

    .line 555
    .local v4, "a":[D
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 558
    const/4 v5, 0x0

    aget-wide v6, v1, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    aput-wide v6, v1, v5

    .line 559
    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 560
    invoke-static {v1, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 561
    aget-wide v6, v1, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double/2addr v6, v8

    aput-wide v6, v1, v5

    .line 562
    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 563
    invoke-static {v1, v4, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 564
    aget-wide v6, v3, v5

    aput-wide v6, v1, v5

    .line 565
    const/4 v6, 0x1

    aget-wide v7, v3, v6

    aput-wide v7, v1, v6

    .line 568
    invoke-static {v1, v1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 574
    sget-object v7, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    sget-object v8, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    array-length v8, v8

    sub-int/2addr v8, v6

    aget-object v7, v7, v8

    aget-wide v7, v7, v5

    aput-wide v7, v3, v5

    .line 575
    sget-object v7, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    sget-object v8, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    array-length v8, v8

    sub-int/2addr v8, v6

    aget-object v7, v7, v8

    aget-wide v7, v7, v6

    aput-wide v7, v3, v6

    .line 577
    sget-object v7, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    array-length v7, v7

    sub-int/2addr v7, v0

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 578
    invoke-static {v3, v2, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 579
    aget-wide v8, v4, v5

    aput-wide v8, v3, v5

    .line 580
    aget-wide v8, v4, v6

    aput-wide v8, v3, v6

    .line 581
    sget-object v0, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    aget-object v0, v0, v7

    invoke-static {v3, v0, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 582
    aget-wide v8, v4, v5

    aput-wide v8, v3, v5

    .line 583
    aget-wide v8, v4, v6

    aput-wide v8, v3, v6

    .line 577
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 586
    .end local v7    # "i":I
    :cond_0
    invoke-static {v3, v1, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 587
    aget-wide v7, v4, v5

    aput-wide v7, v3, v5

    .line 588
    aget-wide v7, v4, v6

    aput-wide v7, v3, v6

    .line 590
    return-object v3
.end method

.method static slowSin(D[D)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "result"    # [D

    .line 251
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 252
    .local v1, "xs":[D
    new-array v2, v0, [D

    .line 253
    .local v2, "ys":[D
    new-array v3, v0, [D

    .line 254
    .local v3, "facts":[D
    new-array v0, v0, [D

    .line 255
    .local v0, "as":[D
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 256
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    const/4 v7, 0x0

    aput-wide v5, v2, v7

    .line 258
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v5, v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 259
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 260
    aget-wide v8, v0, v7

    aput-wide v8, v2, v7

    aget-wide v8, v0, v4

    aput-wide v8, v2, v4

    .line 262
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_0

    .line 263
    goto :goto_1

    .line 266
    :cond_0
    sget-object v6, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v8, v6, v5

    invoke-static {v8, v9, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 267
    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 269
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_1

    .line 270
    aget-wide v8, v3, v7

    neg-double v8, v8

    aput-wide v8, v3, v7

    .line 271
    aget-wide v8, v3, v4

    neg-double v8, v8

    aput-wide v8, v3, v4

    .line 274
    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 275
    aget-wide v8, v0, v7

    aput-wide v8, v2, v7

    aget-wide v8, v0, v4

    aput-wide v8, v2, v4

    .line 258
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 278
    .end local v5    # "i":I
    :cond_2
    if-eqz p2, :cond_3

    .line 279
    aget-wide v5, v2, v7

    aput-wide v5, p2, v7

    .line 280
    aget-wide v5, v2, v4

    aput-wide v5, p2, v4

    .line 283
    :cond_3
    aget-wide v5, v2, v7

    aget-wide v7, v2, v4

    add-double/2addr v5, v7

    return-wide v5
.end method

.method static slowexp(D[D)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "result"    # [D

    .line 295
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 296
    .local v1, "xs":[D
    new-array v2, v0, [D

    .line 297
    .local v2, "ys":[D
    new-array v3, v0, [D

    .line 298
    .local v3, "facts":[D
    new-array v0, v0, [D

    .line 299
    .local v0, "as":[D
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 300
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    const/4 v7, 0x0

    aput-wide v5, v2, v7

    .line 302
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v5, v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    .line 303
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 304
    aget-wide v8, v0, v7

    aput-wide v8, v2, v7

    .line 305
    aget-wide v8, v0, v4

    aput-wide v8, v2, v4

    .line 307
    sget-object v6, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v8, v6, v5

    invoke-static {v8, v9, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 308
    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 310
    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 311
    aget-wide v8, v0, v7

    aput-wide v8, v2, v7

    .line 312
    aget-wide v8, v0, v4

    aput-wide v8, v2, v4

    .line 302
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 315
    .end local v5    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 316
    aget-wide v5, v2, v7

    aput-wide v5, p2, v7

    .line 317
    aget-wide v5, v2, v4

    aput-wide v5, p2, v4

    .line 320
    :cond_1
    aget-wide v5, v2, v7

    aget-wide v7, v2, v4

    add-double/2addr v5, v7

    return-wide v5
.end method

.method private static split(D[D)V
    .locals 9
    .param p0, "d"    # D
    .param p2, "split"    # [D

    .line 329
    const-wide v0, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v0, p0, v0

    const/4 v1, 0x1

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    const/4 v4, 0x0

    if-gez v0, :cond_0

    const-wide v5, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v0, p0, v5

    if-lez v0, :cond_0

    .line 330
    mul-double/2addr v2, p0

    .line 331
    .local v2, "a":D
    add-double v5, p0, v2

    sub-double/2addr v5, v2

    aput-wide v5, p2, v4

    .line 332
    aget-wide v4, p2, v4

    sub-double v4, p0, v4

    aput-wide v4, p2, v1

    .line 333
    .end local v2    # "a":D
    goto :goto_0

    .line 334
    :cond_0
    const-wide/high16 v5, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v5, p0

    .line 335
    .local v5, "a":D
    add-double v7, p0, v5

    sub-double/2addr v7, p0

    mul-double/2addr v7, v2

    aput-wide v7, p2, v4

    .line 336
    aget-wide v2, p2, v4

    sub-double v2, p0, v2

    aput-wide v2, p2, v1

    .line 338
    .end local v5    # "a":D
    :goto_0
    return-void
.end method

.method private static splitAdd([D[D[D)V
    .locals 5
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "ans"    # [D

    .line 378
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    .line 379
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    .line 381
    invoke-static {p2}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 382
    return-void
.end method

.method private static splitMult([D[D[D)V
    .locals 8
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "ans"    # [D

    .line 365
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double/2addr v1, v3

    aput-wide v1, p2, v0

    .line 366
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    mul-double/2addr v1, v4

    aget-wide v4, p0, v3

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    aput-wide v1, p2, v3

    .line 369
    invoke-static {p2}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 370
    return-void
.end method

.method static splitReciprocal([D[D)V
    .locals 17
    .param p0, "in"    # [D
    .param p1, "result"    # [D

    .line 403
    const-wide/high16 v0, 0x3e90000000000000L    # 2.384185791015625E-7

    .line 404
    .local v0, "b":D
    const-wide v2, 0x3fefffff80000000L    # 0.9999997615814209

    .line 406
    .local v2, "a":D
    const/4 v4, 0x0

    aget-wide v5, p0, v4

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 407
    aget-wide v9, p0, v6

    aput-wide v9, p0, v4

    .line 408
    aput-wide v7, p0, v6

    .line 411
    :cond_0
    aget-wide v9, p0, v4

    const-wide v11, 0x3fefffff80000000L    # 0.9999997615814209

    div-double v9, v11, v9

    aput-wide v9, p1, v4

    .line 412
    const-wide/high16 v9, 0x3e90000000000000L    # 2.384185791015625E-7

    aget-wide v13, p0, v4

    mul-double/2addr v13, v9

    aget-wide v9, p0, v6

    mul-double/2addr v9, v11

    sub-double/2addr v13, v9

    aget-wide v9, p0, v4

    aget-wide v11, p0, v4

    mul-double/2addr v9, v11

    aget-wide v11, p0, v4

    aget-wide v15, p0, v6

    mul-double/2addr v11, v15

    add-double/2addr v9, v11

    div-double/2addr v13, v9

    aput-wide v13, p1, v6

    .line 414
    aget-wide v9, p1, v6

    aget-wide v11, p1, v6

    cmpl-double v5, v9, v11

    if-eqz v5, :cond_1

    .line 415
    aput-wide v7, p1, v6

    .line 419
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 421
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v5, v7, :cond_2

    .line 423
    aget-wide v7, p1, v4

    aget-wide v9, p0, v4

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v7

    aget-wide v7, p1, v4

    aget-wide v11, p0, v6

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    aget-wide v7, p1, v6

    aget-wide v11, p0, v4

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    aget-wide v7, p1, v6

    aget-wide v11, p0, v6

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    .line 426
    .local v9, "err":D
    aget-wide v7, p1, v4

    aget-wide v11, p1, v6

    add-double/2addr v7, v11

    mul-double/2addr v9, v7

    .line 428
    aget-wide v7, p1, v6

    add-double/2addr v7, v9

    aput-wide v7, p1, v6

    .line 421
    .end local v9    # "err":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 430
    .end local v5    # "i":I
    :cond_2
    return-void
.end method
