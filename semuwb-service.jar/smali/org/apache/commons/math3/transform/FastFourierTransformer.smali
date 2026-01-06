.class public Lorg/apache/commons/math3/transform/FastFourierTransformer;
.super Ljava/lang/Object;
.source "FastFourierTransformer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final W_SUB_N_I:[D

.field private static final W_SUB_N_R:[D

.field static final serialVersionUID:J = 0x1330292L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DftNormalization;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    nop

    .line 63
    const/16 v0, 0x3f

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/transform/FastFourierTransformer;->W_SUB_N_R:[D

    .line 86
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math3/transform/FastFourierTransformer;->W_SUB_N_I:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x4010000000000000L    # -1.0
        0x3c91a62633145c07L    # 6.123233995736766E-17
        0x3fe6a09e667f3bcdL    # 0.7071067811865476
        0x3fed906bcf328d46L    # 0.9238795325112867
        0x3fef6297cff75cb0L    # 0.9807852804032304
        0x3fefd88da3d12526L    # 0.9951847266721969
        0x3feff621e3796d7eL    # 0.9987954562051724
        0x3feffd886084cd0dL    # 0.9996988186962042
        0x3fefff62169b92dbL    # 0.9999247018391445
        0x3fefffd8858e8a92L    # 0.9999811752826011
        0x3feffff621621d02L    # 0.9999952938095762
        0x3feffffd88586ee6L    # 0.9999988234517019
        0x3fefffff62161a34L    # 0.9999997058628822
        0x3fefffffd8858675L    # 0.9999999264657179
        0x3feffffff621619cL    # 0.9999999816164293
        0x3feffffffd885867L    # 0.9999999954041073
        0x3fefffffff62161aL    # 0.9999999988510269
        0x3fefffffffd88586L    # 0.9999999997127567
        0x3feffffffff62162L    # 0.9999999999281892
        0x3feffffffffd8858L    # 0.9999999999820472
        0x3fefffffffff6216L    # 0.9999999999955118
        0x3fefffffffffd886L    # 0.999999999998878
        0x3feffffffffff621L    # 0.9999999999997194
        0x3feffffffffffd88L    # 0.9999999999999298
        0x3fefffffffffff62L    # 0.9999999999999825
        0x3fefffffffffffd9L    # 0.9999999999999957
        0x3feffffffffffff6L    # 0.9999999999999989
        0x3feffffffffffffeL    # 0.9999999999999998
        0x3fefffffffffffffL    # 0.9999999999999999
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3cb1a62633145c07L    # 2.4492935982947064E-16
        -0x435e59d9cceba3f9L    # -1.2246467991473532E-16
        -0x4010000000000000L    # -1.0
        -0x40195f619980c434L    # -0.7071067811865475
        -0x4027821d5951569dL    # -0.3826834323650898
        -0x40370747c39659f6L    # -0.19509032201612825
        -0x4046e85943d64bd4L    # -0.0980171403295606
        -0x4056e09a0ef227ecL    # -0.049067674327418015
        -0x4066deaa085c9982L    # -0.024541228522912288
        -0x4076de2e0321387cL    # -0.012271538285719925
        -0x4086de0f0198ff8fL    # -0.006135884649154475
        -0x4096de0741335b46L    # -0.003067956762965976
        -0x40a6de055119b8d3L    # -0.0015339801862847655
        -0x40b6de04d5134ca0L    # -7.669903187427045E-4
        -0x40c6de04b611b15aL    # -3.8349518757139556E-4
        -0x40d6de04ae514a85L    # -1.917475973107033E-4
        -0x40e6de04ac6130cfL    # -9.587379909597734E-5
        -0x40f6de04abe52a62L    # -4.793689960306688E-5
        -0x4106de04abc628c6L    # -2.396844980841822E-5
        -0x4116de04abbe6860L    # -1.1984224905069705E-5
        -0x4126de04abbc7846L    # -5.9921124526424275E-6
        -0x4136de04abbbfc3fL    # -2.996056226334661E-6
        -0x4146de04abbbdd3eL    # -1.4980281131690111E-6
        -0x4156de04abbbd57dL    # -7.490140565847157E-7
        -0x4166de04abbbd38dL    # -3.7450702829238413E-7
        -0x4176de04abbbd311L    # -1.8725351414619535E-7
        -0x4186de04abbbd2f2L    # -9.362675707309808E-8
        -0x4196de04abbbd2ebL    # -4.681337853654909E-8
        -0x41a6de04abbbd2e9L    # -2.340668926827455E-8
        -0x41b6de04abbbd2e8L    # -1.1703344634137277E-8
        -0x41c6de04abbbd2e8L    # -5.8516723170686385E-9
        -0x41d6de04abbbd2e8L    # -2.9258361585343192E-9
        -0x41e6de04abbbd2e8L    # -1.4629180792671596E-9
        -0x41f6de04abbbd2e8L    # -7.314590396335798E-10
        -0x4206de04abbbd2e8L    # -3.657295198167899E-10
        -0x4216de04abbbd2e8L    # -1.8286475990839495E-10
        -0x4226de04abbbd2e8L    # -9.143237995419748E-11
        -0x4236de04abbbd2e8L    # -4.571618997709874E-11
        -0x4246de04abbbd2e8L    # -2.285809498854937E-11
        -0x4256de04abbbd2e8L    # -1.1429047494274685E-11
        -0x4266de04abbbd2e8L    # -5.714523747137342E-12
        -0x4276de04abbbd2e8L
        -0x4286de04abbbd2e8L    # -1.4286309367843356E-12
        -0x4296de04abbbd2e8L    # -7.143154683921678E-13
        -0x42a6de04abbbd2e8L    # -3.571577341960839E-13
        -0x42b6de04abbbd2e8L    # -1.7857886709804195E-13
        -0x42c6de04abbbd2e8L    # -8.928943354902097E-14
        -0x42d6de04abbbd2e8L    # -4.4644716774510487E-14
        -0x42e6de04abbbd2e8L    # -2.2322358387255243E-14
        -0x42f6de04abbbd2e8L    # -1.1161179193627622E-14
        -0x4306de04abbbd2e8L    # -5.580589596813811E-15
        -0x4316de04abbbd2e8L
        -0x4326de04abbbd2e8L    # -1.3951473992034527E-15
        -0x4336de04abbbd2e8L    # -6.975736996017264E-16
        -0x4346de04abbbd2e8L    # -3.487868498008632E-16
        -0x4356de04abbbd2e8L    # -1.743934249004316E-16
        -0x4366de04abbbd2e8L    # -8.71967124502158E-17
        -0x4376de04abbbd2e8L    # -4.35983562251079E-17
        -0x4386de04abbbd2e8L    # -2.179917811255395E-17
        -0x4396de04abbbd2e8L    # -1.0899589056276974E-17
        -0x43a6de04abbbd2e8L    # -5.449794528138487E-18
        -0x43b6de04abbbd2e8L
        -0x43c6de04abbbd2e8L    # -1.3624486320346218E-18
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/commons/math3/transform/DftNormalization;)V
    .locals 0
    .param p1, "normalization"    # Lorg/apache/commons/math3/transform/DftNormalization;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalization:Lorg/apache/commons/math3/transform/DftNormalization;

    .line 116
    return-void
.end method

.method private static bitReversalShuffle2([D[D)V
    .locals 8
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 129
    array-length v0, p0

    .line 130
    .local v0, "n":I
    nop

    .line 131
    shr-int/lit8 v1, v0, 0x1

    .line 133
    .local v1, "halfOfN":I
    const/4 v2, 0x0

    .line 134
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 135
    if-ge v3, v2, :cond_0

    .line 137
    aget-wide v4, p0, v3

    .line 138
    .local v4, "temp":D
    aget-wide v6, p0, v2

    aput-wide v6, p0, v3

    .line 139
    aput-wide v4, p0, v2

    .line 141
    aget-wide v4, p1, v3

    .line 142
    aget-wide v6, p1, v2

    aput-wide v6, p1, v3

    .line 143
    aput-wide v4, p1, v2

    .line 146
    .end local v4    # "temp":D
    :cond_0
    move v4, v1

    .line 147
    .local v4, "k":I
    :goto_1
    if-gt v4, v2, :cond_1

    if-lez v4, :cond_1

    .line 148
    sub-int/2addr v2, v4

    .line 149
    shr-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    :cond_1
    add-int/2addr v2, v4

    .line 134
    .end local v4    # "k":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private mdfft(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;Lorg/apache/commons/math3/transform/TransformType;I[I)V
    .locals 4
    .param p1, "mdcm"    # Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;
    .param p3, "d"    # I
    .param p4, "subVector"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    invoke-virtual {p1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->getDimensionSizes()[I

    move-result-object v0

    .line 463
    .local v0, "dimensionSize":[I
    array-length v1, p4

    array-length v2, v0

    if-ne v1, v2, :cond_2

    .line 464
    aget v1, v0, p3

    new-array v1, v1, [Lorg/apache/commons/math3/complex/Complex;

    .line 465
    .local v1, "temp":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    aget v3, v0, p3

    if-ge v2, v3, :cond_0

    .line 467
    aput v2, p4, p3

    .line 468
    invoke-virtual {p1, p4}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->get([I)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v3

    aput-object v3, v1, v2

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 473
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    aget v3, v0, p3

    if-ge v2, v3, :cond_1

    .line 474
    aput v2, p4, p3

    .line 475
    aget-object v3, v1, v2

    invoke-virtual {p1, v3, p4}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->set(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 477
    .end local v1    # "temp":[Lorg/apache/commons/math3/complex/Complex;
    .end local v2    # "i":I
    :cond_1
    goto :goto_3

    .line 478
    :cond_2
    array-length v1, p4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 479
    .local v1, "vector":[I
    array-length v2, p4

    const/4 v3, 0x0

    invoke-static {p4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    array-length v2, p4

    if-ne v2, p3, :cond_3

    .line 483
    aput v3, v1, p3

    .line 484
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->mdfft(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;Lorg/apache/commons/math3/transform/TransformType;I[I)V

    goto :goto_3

    .line 486
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v3, p4

    aget v3, v0, v3

    if-ge v2, v3, :cond_4

    .line 487
    array-length v3, p4

    aput v2, v1, v3

    .line 489
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->mdfft(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;Lorg/apache/commons/math3/transform/TransformType;I[I)V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 493
    .end local v1    # "vector":[I
    .end local v2    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method private static normalizeTransformedData([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V
    .locals 8
    .param p0, "dataRI"    # [[D
    .param p1, "normalization"    # Lorg/apache/commons/math3/transform/DftNormalization;
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 165
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 166
    .local v0, "dataR":[D
    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 167
    .local v1, "dataI":[D
    array-length v2, v0

    .line 168
    .local v2, "n":I
    nop

    .line 170
    sget-object v3, Lorg/apache/commons/math3/transform/FastFourierTransformer$1;->$SwitchMap$org$apache$commons$math3$transform$DftNormalization:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/transform/DftNormalization;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    packed-switch v3, :pswitch_data_0

    .line 194
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v3

    .line 181
    :pswitch_0
    int-to-double v6, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 182
    .local v4, "scaleFactor":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 183
    aget-wide v6, v0, v3

    mul-double/2addr v6, v4

    aput-wide v6, v0, v3

    .line 184
    aget-wide v6, v1, v3

    mul-double/2addr v6, v4

    aput-wide v6, v1, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v3    # "i":I
    :cond_0
    goto :goto_2

    .line 172
    .end local v4    # "scaleFactor":D
    :pswitch_1
    sget-object v3, Lorg/apache/commons/math3/transform/TransformType;->INVERSE:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v3, :cond_2

    .line 173
    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 174
    .restart local v4    # "scaleFactor":D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 175
    aget-wide v6, v0, v3

    mul-double/2addr v6, v4

    aput-wide v6, v0, v3

    .line 176
    aget-wide v6, v1, v3

    mul-double/2addr v6, v4

    aput-wide v6, v1, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    .end local v3    # "i":I
    .end local v4    # "scaleFactor":D
    :cond_1
    nop

    .line 196
    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transformInPlace([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V
    .locals 33
    .param p0, "dataRI"    # [[D
    .param p1, "normalization"    # Lorg/apache/commons/math3/transform/DftNormalization;
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 220
    const/4 v2, 0x0

    aget-object v4, v0, v2

    .line 221
    .local v4, "dataR":[D
    const/4 v5, 0x1

    aget-object v6, v0, v5

    .line 222
    .local v6, "dataI":[D
    array-length v7, v4

    array-length v8, v6

    if-ne v7, v8, :cond_a

    .line 226
    array-length v7, v4

    .line 227
    .local v7, "n":I
    int-to-long v8, v7

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 233
    if-ne v7, v5, :cond_0

    .line 234
    return-void

    .line 235
    :cond_0
    if-ne v7, v3, :cond_1

    .line 236
    aget-wide v8, v4, v2

    .line 237
    .local v8, "srcR0":D
    aget-wide v10, v6, v2

    .line 238
    .local v10, "srcI0":D
    aget-wide v12, v4, v5

    .line 239
    .local v12, "srcR1":D
    aget-wide v14, v6, v5

    .line 242
    .local v14, "srcI1":D
    add-double v16, v8, v12

    aput-wide v16, v4, v2

    .line 243
    add-double v16, v10, v14

    aput-wide v16, v6, v2

    .line 245
    sub-double v2, v8, v12

    aput-wide v2, v4, v5

    .line 246
    sub-double v2, v10, v14

    aput-wide v2, v6, v5

    .line 248
    invoke-static/range {p0 .. p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalizeTransformedData([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V

    .line 249
    return-void

    .line 252
    .end local v8    # "srcR0":D
    .end local v10    # "srcI0":D
    .end local v12    # "srcR1":D
    .end local v14    # "srcI1":D
    :cond_1
    invoke-static {v4, v6}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->bitReversalShuffle2([D[D)V

    .line 255
    sget-object v2, Lorg/apache/commons/math3/transform/TransformType;->INVERSE:Lorg/apache/commons/math3/transform/TransformType;

    if-ne v1, v2, :cond_3

    .line 256
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 257
    add-int/lit8 v3, v2, 0x1

    .line 258
    .local v3, "i1":I
    add-int/lit8 v5, v2, 0x2

    .line 259
    .local v5, "i2":I
    add-int/lit8 v8, v2, 0x3

    .line 261
    .local v8, "i3":I
    aget-wide v9, v4, v2

    .line 262
    .local v9, "srcR0":D
    aget-wide v11, v6, v2

    .line 263
    .local v11, "srcI0":D
    aget-wide v13, v4, v5

    .line 264
    .local v13, "srcR1":D
    aget-wide v15, v6, v5

    .line 265
    .local v15, "srcI1":D
    aget-wide v17, v4, v3

    .line 266
    .local v17, "srcR2":D
    aget-wide v19, v6, v3

    .line 267
    .local v19, "srcI2":D
    aget-wide v21, v4, v8

    .line 268
    .local v21, "srcR3":D
    aget-wide v23, v6, v8

    .line 272
    .local v23, "srcI3":D
    add-double v25, v9, v13

    add-double v25, v25, v17

    add-double v25, v25, v21

    aput-wide v25, v4, v2

    .line 273
    add-double v25, v11, v15

    add-double v25, v25, v19

    add-double v25, v25, v23

    aput-wide v25, v6, v2

    .line 275
    sub-double v25, v9, v17

    sub-double v27, v23, v15

    add-double v25, v25, v27

    aput-wide v25, v4, v3

    .line 276
    sub-double v25, v11, v19

    sub-double v27, v13, v21

    add-double v25, v25, v27

    aput-wide v25, v6, v3

    .line 278
    sub-double v25, v9, v13

    add-double v25, v25, v17

    sub-double v25, v25, v21

    aput-wide v25, v4, v5

    .line 279
    sub-double v25, v11, v15

    add-double v25, v25, v19

    sub-double v25, v25, v23

    aput-wide v25, v6, v5

    .line 281
    sub-double v25, v9, v17

    sub-double v27, v15, v23

    add-double v25, v25, v27

    aput-wide v25, v4, v8

    .line 282
    sub-double v25, v11, v19

    sub-double v27, v21, v13

    add-double v25, v25, v27

    aput-wide v25, v6, v8

    .line 256
    .end local v3    # "i1":I
    .end local v5    # "i2":I
    .end local v8    # "i3":I
    .end local v9    # "srcR0":D
    .end local v11    # "srcI0":D
    .end local v13    # "srcR1":D
    .end local v15    # "srcI1":D
    .end local v17    # "srcR2":D
    .end local v19    # "srcI2":D
    .end local v21    # "srcR3":D
    .end local v23    # "srcI3":D
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .end local v2    # "i0":I
    :cond_2
    goto :goto_2

    .line 285
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i0":I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 286
    add-int/lit8 v3, v2, 0x1

    .line 287
    .restart local v3    # "i1":I
    add-int/lit8 v5, v2, 0x2

    .line 288
    .restart local v5    # "i2":I
    add-int/lit8 v8, v2, 0x3

    .line 290
    .restart local v8    # "i3":I
    aget-wide v9, v4, v2

    .line 291
    .restart local v9    # "srcR0":D
    aget-wide v11, v6, v2

    .line 292
    .restart local v11    # "srcI0":D
    aget-wide v13, v4, v5

    .line 293
    .restart local v13    # "srcR1":D
    aget-wide v15, v6, v5

    .line 294
    .restart local v15    # "srcI1":D
    aget-wide v17, v4, v3

    .line 295
    .restart local v17    # "srcR2":D
    aget-wide v19, v6, v3

    .line 296
    .restart local v19    # "srcI2":D
    aget-wide v21, v4, v8

    .line 297
    .restart local v21    # "srcR3":D
    aget-wide v23, v6, v8

    .line 301
    .restart local v23    # "srcI3":D
    add-double v25, v9, v13

    add-double v25, v25, v17

    add-double v25, v25, v21

    aput-wide v25, v4, v2

    .line 302
    add-double v25, v11, v15

    add-double v25, v25, v19

    add-double v25, v25, v23

    aput-wide v25, v6, v2

    .line 304
    sub-double v25, v9, v17

    sub-double v27, v15, v23

    add-double v25, v25, v27

    aput-wide v25, v4, v3

    .line 305
    sub-double v25, v11, v19

    sub-double v27, v21, v13

    add-double v25, v25, v27

    aput-wide v25, v6, v3

    .line 307
    sub-double v25, v9, v13

    add-double v25, v25, v17

    sub-double v25, v25, v21

    aput-wide v25, v4, v5

    .line 308
    sub-double v25, v11, v15

    add-double v25, v25, v19

    sub-double v25, v25, v23

    aput-wide v25, v6, v5

    .line 310
    sub-double v25, v9, v17

    sub-double v27, v23, v15

    add-double v25, v25, v27

    aput-wide v25, v4, v8

    .line 311
    sub-double v25, v11, v19

    sub-double v27, v13, v21

    add-double v25, v25, v27

    aput-wide v25, v6, v8

    .line 285
    .end local v3    # "i1":I
    .end local v5    # "i2":I
    .end local v8    # "i3":I
    .end local v9    # "srcR0":D
    .end local v11    # "srcI0":D
    .end local v13    # "srcR1":D
    .end local v15    # "srcI1":D
    .end local v17    # "srcR2":D
    .end local v19    # "srcI2":D
    .end local v21    # "srcR3":D
    .end local v23    # "srcI3":D
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 315
    .end local v2    # "i0":I
    :cond_4
    :goto_2
    const/4 v2, 0x4

    .line 316
    .local v2, "lastN0":I
    const/4 v3, 0x2

    .line 317
    .local v3, "lastLogN0":I
    :goto_3
    if-ge v2, v7, :cond_8

    .line 318
    shl-int/lit8 v5, v2, 0x1

    .line 319
    .local v5, "n0":I
    add-int/lit8 v8, v3, 0x1

    .line 320
    .local v8, "logN0":I
    sget-object v9, Lorg/apache/commons/math3/transform/FastFourierTransformer;->W_SUB_N_R:[D

    aget-wide v9, v9, v8

    .line 321
    .local v9, "wSubN0R":D
    sget-object v11, Lorg/apache/commons/math3/transform/FastFourierTransformer;->W_SUB_N_I:[D

    aget-wide v11, v11, v8

    .line 322
    .local v11, "wSubN0I":D
    sget-object v13, Lorg/apache/commons/math3/transform/TransformType;->INVERSE:Lorg/apache/commons/math3/transform/TransformType;

    if-ne v1, v13, :cond_5

    .line 323
    neg-double v11, v11

    .line 327
    :cond_5
    const/4 v13, 0x0

    .local v13, "destEvenStartIndex":I
    :goto_4
    if-ge v13, v7, :cond_7

    .line 328
    add-int v14, v13, v2

    .line 330
    .local v14, "destOddStartIndex":I
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 331
    .local v15, "wSubN0ToRR":D
    const-wide/16 v17, 0x0

    .line 333
    .local v17, "wSubN0ToRI":D
    const/16 v19, 0x0

    move/from16 v1, v19

    .local v1, "r":I
    :goto_5
    if-ge v1, v2, :cond_6

    .line 334
    add-int v19, v13, v1

    aget-wide v19, v4, v19

    .line 335
    .local v19, "grR":D
    add-int v21, v13, v1

    aget-wide v21, v6, v21

    .line 336
    .local v21, "grI":D
    add-int v23, v14, v1

    aget-wide v23, v4, v23

    .line 337
    .local v23, "hrR":D
    add-int v25, v14, v1

    aget-wide v25, v6, v25

    .line 340
    .local v25, "hrI":D
    add-int v27, v13, v1

    mul-double v28, v15, v23

    add-double v28, v19, v28

    mul-double v30, v17, v25

    sub-double v28, v28, v30

    aput-wide v28, v4, v27

    .line 341
    add-int v27, v13, v1

    mul-double v28, v15, v25

    add-double v28, v21, v28

    mul-double v30, v17, v23

    add-double v28, v28, v30

    aput-wide v28, v6, v27

    .line 343
    add-int v27, v14, v1

    mul-double v28, v15, v23

    mul-double v30, v17, v25

    sub-double v28, v28, v30

    sub-double v28, v19, v28

    aput-wide v28, v4, v27

    .line 344
    add-int v27, v14, v1

    mul-double v28, v15, v25

    mul-double v30, v17, v23

    add-double v28, v28, v30

    sub-double v28, v21, v28

    aput-wide v28, v6, v27

    .line 347
    mul-double v27, v15, v9

    mul-double v29, v17, v11

    sub-double v27, v27, v29

    .line 348
    .local v27, "nextWsubN0ToRR":D
    mul-double v29, v15, v11

    mul-double v31, v17, v9

    add-double v29, v29, v31

    .line 349
    .local v29, "nextWsubN0ToRI":D
    move-wide/from16 v15, v27

    .line 350
    move-wide/from16 v17, v29

    .line 333
    .end local v19    # "grR":D
    .end local v21    # "grI":D
    .end local v23    # "hrR":D
    .end local v25    # "hrI":D
    .end local v27    # "nextWsubN0ToRR":D
    .end local v29    # "nextWsubN0ToRI":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 327
    .end local v1    # "r":I
    .end local v14    # "destOddStartIndex":I
    .end local v15    # "wSubN0ToRR":D
    .end local v17    # "wSubN0ToRI":D
    :cond_6
    add-int/2addr v13, v5

    move-object/from16 v1, p2

    goto :goto_4

    .line 354
    .end local v13    # "destEvenStartIndex":I
    :cond_7
    move v2, v5

    .line 355
    move v3, v8

    .line 356
    .end local v5    # "n0":I
    .end local v8    # "logN0":I
    .end local v9    # "wSubN0R":D
    .end local v11    # "wSubN0I":D
    move-object/from16 v1, p2

    goto :goto_3

    .line 358
    :cond_8
    invoke-static/range {p0 .. p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalizeTransformedData([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V

    .line 359
    return-void

    .line 228
    .end local v2    # "lastN0":I
    .end local v3    # "lastLogN0":I
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_CONSIDER_PADDING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 223
    .end local v7    # "n":I
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v6

    array-length v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 218
    .end local v4    # "dataR":[D
    .end local v6    # "dataI":[D
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method


# virtual methods
.method public mdfft(Ljava/lang/Object;Lorg/apache/commons/math3/transform/TransformType;)Ljava/lang/Object;
    .locals 4
    .param p1, "mdca"    # Ljava/lang/Object;
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;

    .line 439
    .local v0, "mdcm":Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;
    invoke-virtual {v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->getDimensionSizes()[I

    move-result-object v1

    .line 441
    .local v1, "dimensionSize":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 442
    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-direct {p0, v0, p2, v2, v3}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->mdfft(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;Lorg/apache/commons/math3/transform/TransformType;I[I)V

    .line 441
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->getArray()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "n"    # I
    .param p7, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 400
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object v0

    .line 401
    .local v0, "data":[D
    invoke-virtual {p0, v0, p7}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    return-object v1
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .param p1, "f"    # [D
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 370
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [D

    filled-new-array {v0, v1}, [[D

    move-result-object v0

    .line 374
    .local v0, "dataRI":[[D
    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalization:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-static {v0, v1, p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transformInPlace([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V

    .line 376
    invoke-static {v0}, Lorg/apache/commons/math3/transform/TransformUtils;->createComplexArray([[D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    return-object v1
.end method

.method public transform([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .param p1, "f"    # [Lorg/apache/commons/math3/complex/Complex;
    .param p2, "type"    # Lorg/apache/commons/math3/transform/TransformType;

    .line 413
    invoke-static {p1}, Lorg/apache/commons/math3/transform/TransformUtils;->createRealImaginaryArray([Lorg/apache/commons/math3/complex/Complex;)[[D

    move-result-object v0

    .line 415
    .local v0, "dataRI":[[D
    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalization:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-static {v0, v1, p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transformInPlace([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V

    .line 417
    invoke-static {v0}, Lorg/apache/commons/math3/transform/TransformUtils;->createComplexArray([[D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    return-object v1
.end method
