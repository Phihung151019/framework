.class Lorg/apache/commons/math3/primes/SmallPrimes;
.super Ljava/lang/Object;
.source "SmallPrimes.java"


# static fields
.field public static final PRIMES:[I

.field public static final PRIMES_LAST:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const/16 v0, 0x200

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES:[I

    .line 68
    sget-object v0, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES:[I

    sget-object v1, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES_LAST:I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
        0x233
        0x239
        0x23b
        0x241
        0x24b
        0x251
        0x257
        0x259
        0x25f
        0x265
        0x269
        0x26b
        0x277
        0x281
        0x283
        0x287
        0x28d
        0x293
        0x295
        0x2a1
        0x2a5
        0x2ab
        0x2b3
        0x2bd
        0x2c5
        0x2cf
        0x2d7
        0x2dd
        0x2e3
        0x2e7
        0x2ef
        0x2f5
        0x2f9
        0x301
        0x305
        0x313
        0x31d
        0x329
        0x32b
        0x335
        0x337
        0x33b
        0x33d
        0x347
        0x355
        0x359
        0x35b
        0x35f
        0x36d
        0x371
        0x373
        0x377
        0x38b
        0x38f
        0x397
        0x3a1
        0x3a9
        0x3ad
        0x3b3
        0x3b9
        0x3c7
        0x3cb
        0x3d1
        0x3d7
        0x3df
        0x3e5
        0x3f1
        0x3f5
        0x3fb
        0x3fd
        0x407
        0x409
        0x40f
        0x419
        0x41b
        0x425
        0x427
        0x42d
        0x43f
        0x443
        0x445
        0x449
        0x44f
        0x455
        0x45d
        0x463
        0x469
        0x47f
        0x481
        0x48b
        0x493
        0x49d
        0x4a3
        0x4a9
        0x4b1
        0x4bd
        0x4c1
        0x4c7
        0x4cd
        0x4cf
        0x4d5
        0x4e1
        0x4eb
        0x4fd
        0x4ff
        0x503
        0x509
        0x50b
        0x511
        0x515
        0x517
        0x51b
        0x527
        0x529
        0x52f
        0x551
        0x557
        0x55d
        0x565
        0x577
        0x581
        0x58f
        0x593    # 2.0E-42f
        0x595
        0x599
        0x59f
        0x5a7
        0x5ab
        0x5ad
        0x5b3
        0x5bf
        0x5c9
        0x5cb
        0x5cf
        0x5d1
        0x5d5
        0x5db
        0x5e7
        0x5f3
        0x5fb
        0x607
        0x60d
        0x611
        0x617
        0x61f
        0x623
        0x62b
        0x62f
        0x63d
        0x641
        0x647
        0x649
        0x64d
        0x653
        0x655
        0x65b
        0x665
        0x679
        0x67f
        0x683
        0x685
        0x69d
        0x6a1
        0x6a3
        0x6ad
        0x6b9
        0x6bb
        0x6c5
        0x6cd
        0x6d3
        0x6d9
        0x6df
        0x6f1
        0x6f7
        0x6fb
        0x6fd
        0x709
        0x713
        0x71f
        0x727
        0x737
        0x745
        0x74b
        0x74f
        0x751
        0x755
        0x757
        0x761
        0x76d
        0x773
        0x779
        0x78b
        0x78d
        0x79d
        0x79f
        0x7b5
        0x7bb
        0x7c3
        0x7c9
        0x7cd
        0x7cf
        0x7d3
        0x7db
        0x7e1
        0x7eb
        0x7ed
        0x7f7
        0x805
        0x80f
        0x815
        0x821
        0x823
        0x827
        0x829
        0x833
        0x83f
        0x841
        0x851
        0x853
        0x859
        0x85d    # 3.0E-42f
        0x85f
        0x869
        0x871
        0x883
        0x89b
        0x89f
        0x8a5
        0x8ad
        0x8bd
        0x8bf
        0x8c3
        0x8cb
        0x8db
        0x8dd
        0x8e1
        0x8e9
        0x8ef
        0x8f5
        0x8f9
        0x905
        0x907
        0x91d
        0x923
        0x925
        0x92b
        0x92f
        0x935
        0x943
        0x949
        0x94d
        0x94f
        0x955
        0x959
        0x95f
        0x96b
        0x971
        0x977
        0x985
        0x989
        0x98f
        0x99b
        0x9a3
        0x9a9
        0x9ad
        0x9c7
        0x9d9
        0x9e3
        0x9eb
        0x9ef
        0x9f5
        0x9f7
        0x9fd
        0xa13
        0xa1f
        0xa21
        0xa31
        0xa39
        0xa3d
        0xa49
        0xa57
        0xa61
        0xa63
        0xa67
        0xa6f
        0xa75
        0xa7b
        0xa7f
        0xa81
        0xa85
        0xa8b
        0xa93
        0xa97
        0xa99
        0xa9f
        0xaa9
        0xaab
        0xab5
        0xabd
        0xac1
        0xacf
        0xad9
        0xae5
        0xae7
        0xaed
        0xaf1
        0xaf3
        0xb03
        0xb11
        0xb15
        0xb1b
        0xb23
        0xb29
        0xb2d
        0xb3f
        0xb47
        0xb51
        0xb57
        0xb5d
        0xb65
        0xb6f
        0xb7b
        0xb89
        0xb8d
        0xb93
        0xb99
        0xb9b
        0xbb7
        0xbb9
        0xbc3
        0xbcb
        0xbcf
        0xbdd
        0xbe1
        0xbe9
        0xbf5
        0xbfb
        0xc07
        0xc0b
        0xc11
        0xc25
        0xc2f
        0xc31
        0xc41
        0xc5b
        0xc5f
        0xc61
        0xc6d
        0xc73
        0xc77
        0xc83
        0xc89
        0xc91
        0xc95
        0xc9d
        0xcb3
        0xcb5
        0xcb9
        0xcbb
        0xcc7
        0xce3
        0xce5
        0xceb
        0xcf1
        0xcf7
        0xcfb
        0xd01
        0xd03
        0xd0f
        0xd13
        0xd1f
        0xd21
        0xd2b
        0xd2d
        0xd3d
        0xd3f
        0xd4f
        0xd55
        0xd69
        0xd79
        0xd81
        0xd85
        0xd87
        0xd8b
        0xd8d
        0xda3
        0xdab
        0xdb7
        0xdbd
        0xdc7
        0xdc9
        0xdcd
        0xdd3
        0xdd5
        0xddb
        0xde5
        0xde7
        0xdf3
        0xdfd
        0xdff
        0xe09
        0xe17
        0xe1d
        0xe21
        0xe27
        0xe2f
        0xe35
        0xe3b
        0xe4b
        0xe57
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static boundedTrialDivision(IILjava/util/List;)I
    .locals 2
    .param p0, "n"    # I
    .param p1, "maxFactor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 100
    .local p2, "factors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v0, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES_LAST:I

    add-int/lit8 v0, v0, 0x2

    .line 102
    .local v0, "f":I
    :goto_0
    if-gt v0, p1, :cond_2

    .line 103
    rem-int v1, p0, v0

    if-nez v1, :cond_0

    .line 104
    div-int/2addr p0, v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 109
    rem-int v1, p0, v0

    if-nez v1, :cond_1

    .line 110
    div-int/2addr p0, v0

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 116
    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    return p0
.end method

.method public static millerRabinPrimeTest(I)Z
    .locals 19
    .param p0, "n"    # I

    .line 149
    move/from16 v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 150
    .local v1, "nMinus1":I
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 151
    .local v2, "s":I
    shr-int v3, v1, v2

    .line 153
    .local v3, "r":I
    const/4 v4, 0x1

    .line 154
    .local v4, "t":I
    const/16 v5, 0x7ff

    if-lt v0, v5, :cond_0

    .line 155
    const/4 v4, 0x2

    .line 157
    :cond_0
    const v5, 0x14f5d5

    if-lt v0, v5, :cond_1

    .line 158
    const/4 v4, 0x3

    .line 160
    :cond_1
    const v5, 0x18271b1

    if-lt v0, v5, :cond_2

    .line 161
    const/4 v4, 0x4

    .line 163
    :cond_2
    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 164
    .local v5, "br":Ljava/math/BigInteger;
    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 166
    .local v6, "bn":Ljava/math/BigInteger;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x1

    if-ge v7, v4, :cond_7

    .line 167
    sget-object v9, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES:[I

    aget v9, v9, v7

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 168
    .local v9, "a":Ljava/math/BigInteger;
    invoke-virtual {v9, v5, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 169
    .local v10, "bPow":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    .line 170
    .local v11, "y":I
    if-eq v8, v11, :cond_5

    if-eq v11, v1, :cond_5

    .line 171
    const/4 v12, 0x1

    .line 172
    .local v12, "j":I
    :goto_1
    add-int/lit8 v13, v2, -0x1

    if-gt v12, v13, :cond_4

    if-eq v1, v11, :cond_4

    .line 173
    const/4 v13, 0x0

    int-to-long v14, v11

    move/from16 v16, v13

    move-wide/from16 v17, v14

    int-to-long v13, v11

    mul-long v14, v17, v13

    .line 174
    .local v14, "square":J
    move-object/from16 v17, v9

    .end local v9    # "a":Ljava/math/BigInteger;
    .local v17, "a":Ljava/math/BigInteger;
    int-to-long v8, v0

    rem-long v8, v14, v8

    long-to-int v11, v8

    .line 175
    const/4 v13, 0x1

    if-ne v13, v11, :cond_3

    .line 176
    return v16

    .line 178
    :cond_3
    nop

    .end local v14    # "square":J
    add-int/lit8 v12, v12, 0x1

    .line 179
    move-object/from16 v9, v17

    const/4 v8, 0x1

    goto :goto_1

    .line 172
    .end local v17    # "a":Ljava/math/BigInteger;
    .restart local v9    # "a":Ljava/math/BigInteger;
    :cond_4
    move-object/from16 v17, v9

    const/16 v16, 0x0

    .line 180
    .end local v9    # "a":Ljava/math/BigInteger;
    .restart local v17    # "a":Ljava/math/BigInteger;
    if-eq v1, v11, :cond_6

    .line 181
    return v16

    .line 170
    .end local v12    # "j":I
    .end local v17    # "a":Ljava/math/BigInteger;
    .restart local v9    # "a":Ljava/math/BigInteger;
    :cond_5
    move-object/from16 v17, v9

    .line 166
    .end local v9    # "a":Ljava/math/BigInteger;
    .end local v10    # "bPow":Ljava/math/BigInteger;
    .end local v11    # "y":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 185
    .end local v7    # "i":I
    :cond_7
    const/4 v13, 0x1

    return v13
.end method

.method public static smallTrialDivision(ILjava/util/List;)I
    .locals 5
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 83
    .local p1, "factors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES:[I

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 84
    .local v3, "p":I
    :goto_1
    rem-int v4, p0, v3

    if-nez v4, :cond_0

    .line 85
    div-int/2addr p0, v3

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v3    # "p":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return p0
.end method

.method public static trialDivision(I)Ljava/util/List;
    .locals 3
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .local v0, "factors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, v0}, Lorg/apache/commons/math3/primes/SmallPrimes;->smallTrialDivision(ILjava/util/List;)I

    move-result p0

    .line 130
    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    .line 131
    return-object v0

    .line 134
    :cond_0
    int-to-double v1, p0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 135
    .local v1, "bound":I
    invoke-static {p0, v1, v0}, Lorg/apache/commons/math3/primes/SmallPrimes;->boundedTrialDivision(IILjava/util/List;)I

    .line 136
    return-object v0
.end method
