.class public Lorg/apache/commons/math3/util/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/FastMath$CodyWaite;,
        Lorg/apache/commons/math3/util/FastMath$lnMant;,
        Lorg/apache/commons/math3/util/FastMath$ExpFracTable;,
        Lorg/apache/commons/math3/util/FastMath$ExpIntTable;,
        Lorg/apache/commons/math3/util/FastMath$Split;
    }
.end annotation


# static fields
.field private static final CBRTTWO:[D

.field private static final COSINE_TABLE_A:[D

.field private static final COSINE_TABLE_B:[D

.field public static final E:D = 2.718281828459045

.field private static final EIGHTHS:[D

.field static final EXP_FRAC_TABLE_LEN:I = 0x401

.field static final EXP_INT_TABLE_LEN:I = 0x5dc

.field static final EXP_INT_TABLE_MAX_INDEX:I = 0x2ee

.field private static final F_11_12:D = 0.9166666666666666

.field private static final F_13_14:D = 0.9285714285714286

.field private static final F_15_16:D = 0.9375

.field private static final F_1_11:D = 0.09090909090909091

.field private static final F_1_13:D = 0.07692307692307693

.field private static final F_1_15:D = 0.06666666666666667

.field private static final F_1_17:D = 0.058823529411764705

.field private static final F_1_2:D = 0.5

.field private static final F_1_3:D = 0.3333333333333333

.field private static final F_1_4:D = 0.25

.field private static final F_1_5:D = 0.2

.field private static final F_1_7:D = 0.14285714285714285

.field private static final F_1_9:D = 0.1111111111111111

.field private static final F_3_4:D = 0.75

.field private static final F_5_6:D = 0.8333333333333334

.field private static final F_7_8:D = 0.875

.field private static final F_9_10:D = 0.9

.field private static final HEX_40000000:J = 0x40000000L

.field private static final IMPLICIT_HIGH_BIT:J = 0x10000000000000L

.field private static final LN_2_A:D = 0.6931470632553101

.field private static final LN_2_B:D = 1.1730463525082348E-7

.field private static final LN_HI_PREC_COEF:[[D

.field static final LN_MANT_LEN:I = 0x400

.field private static final LN_QUICK_COEF:[[D

.field private static final LOG_MAX_VALUE:D

.field private static final MASK_30BITS:J = -0x40000000L

.field private static final MASK_DOUBLE_EXPONENT:J = 0x7ff0000000000000L

.field private static final MASK_DOUBLE_MANTISSA:J = 0xfffffffffffffL

.field private static final MASK_NON_SIGN_INT:I = 0x7fffffff

.field private static final MASK_NON_SIGN_LONG:J = 0x7fffffffffffffffL

.field public static final PI:D = 3.141592653589793

.field private static final PI_O_4_BITS:[J

.field private static final RECIP_2PI:[J

.field private static final RECOMPUTE_TABLES_AT_RUNTIME:Z = false

.field private static final SINE_TABLE_A:[D

.field private static final SINE_TABLE_B:[D

.field private static final SINE_TABLE_LEN:I = 0xe

.field private static final TANGENT_TABLE_A:[D

.field private static final TANGENT_TABLE_B:[D

.field private static final TWO_POWER_52:D = 4.503599627370496E15


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 99
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    .line 117
    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    new-array v4, v0, [D

    fill-array-data v4, :array_3

    new-array v5, v0, [D

    fill-array-data v5, :array_4

    new-array v6, v0, [D

    fill-array-data v6, :array_5

    new-array v7, v0, [D

    fill-array-data v7, :array_6

    new-array v8, v0, [D

    fill-array-data v8, :array_7

    new-array v9, v0, [D

    fill-array-data v9, :array_8

    filled-new-array/range {v1 .. v9}, [[D

    move-result-object v1

    sput-object v1, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    .line 130
    new-array v2, v0, [D

    fill-array-data v2, :array_9

    new-array v3, v0, [D

    fill-array-data v3, :array_a

    new-array v4, v0, [D

    fill-array-data v4, :array_b

    new-array v5, v0, [D

    fill-array-data v5, :array_c

    new-array v6, v0, [D

    fill-array-data v6, :array_d

    new-array v7, v0, [D

    fill-array-data v7, :array_e

    filled-new-array/range {v2 .. v7}, [[D

    move-result-object v1

    sput-object v1, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    .line 143
    const/16 v1, 0xe

    new-array v2, v1, [D

    fill-array-data v2, :array_f

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_A:[D

    .line 162
    new-array v2, v1, [D

    fill-array-data v2, :array_10

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_B:[D

    .line 181
    new-array v2, v1, [D

    fill-array-data v2, :array_11

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_A:[D

    .line 200
    new-array v2, v1, [D

    fill-array-data v2, :array_12

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_B:[D

    .line 220
    new-array v2, v1, [D

    fill-array-data v2, :array_13

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_A:[D

    .line 239
    new-array v2, v1, [D

    fill-array-data v2, :array_14

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_B:[D

    .line 258
    const/16 v2, 0x12

    new-array v2, v2, [J

    fill-array-data v2, :array_15

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    .line 279
    new-array v0, v0, [J

    fill-array-data v0, :array_16

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    .line 287
    new-array v0, v1, [D

    fill-array-data v0, :array_17

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->EIGHTHS:[D

    .line 290
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_18

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->CBRTTWO:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3b1b6a1c267a4b13L    # 5.669184079525E-24
    .end array-data

    :array_1
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_2
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e555555554bc4dfL    # 1.986821492305628E-8
    .end array-data

    :array_3
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x42cd3e694bd1e228L    # -6.663542893624021E-14
    .end array-data

    :array_4
    .array-data 8
        0x3fc9999980000000L    # 0.19999998807907104
        0x3e4999ab97c05f95L    # 1.1921056801463227E-8
    .end array-data

    :array_5
    .array-data 8
        -0x403aaaaac0000000L    # -0.1666666567325592
        -0x41bf3fad3df74b94L    # -7.800414592973399E-9
    .end array-data

    :array_6
    .array-data 8
        0x3fc2492480000000L    # 0.1428571343421936
        0x3e38443f9cfb0f62L    # 5.650007086920087E-9
    .end array-data

    :array_7
    .array-data 8
        -0x403fff2bc0000000L    # -0.12502530217170715
        -0x422b8a4dddba2203L    # -7.44321345601866E-11
    .end array-data

    :array_8
    .array-data 8
        0x3fbc738b80000000L    # 0.11113807559013367
        0x3e43cc7f8d7f1d27L    # 9.219544613762692E-9
    .end array-data

    :array_9
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x44adc4d4b7a5f493L    # -6.032174644509064E-23
    .end array-data

    :array_a
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_b
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e55555197ea2f51L    # 1.9868161777724352E-8
    .end array-data

    :array_c
    .array-data 8
        -0x4030000040000000L    # -0.2499999701976776
        -0x41a03fd729481089L    # -2.957007209750105E-8
    .end array-data

    :array_d
    .array-data 8
        0x3fc99995c0000000L    # 0.19999954104423523
        0x3de5c2091d0952dfL    # 1.5830993332061267E-10
    .end array-data

    :array_e
    .array-data 8
        -0x403ab85c00000000L    # -0.16624879837036133
        -0x41a40be07956f7d9L    # -2.6033824355191673E-8
    .end array-data

    :array_f
    .array-data 8
        0x0
        0x3fbfeaaf00000000L    # 0.1246747374534607
        0x3fcfaaeec0000000L
        0x3fd7710240000000L    # 0.366272509098053
        0x3fdeaee880000000L    # 0.4794255495071411
        0x3fe2b91e00000000L    # 0.5850973129272461
        0x3fe5cffc00000000L    # 0.6816387176513672
        0x3fe88fb780000000L    # 0.7675435543060303
        0x3feaed5480000000L    # 0.8414709568023682
        0x3fecdf6040000000L    # 0.902267575263977
        0x3fee5e1500000000L    # 0.9489846229553223
        0x3fef6379c0000000L    # 0.9808930158615112
        0x3fefeb7a80000000L    # 0.9974949359893799
        0x3feff3f800000000L    # 0.9985313415527344
    .end array-data

    :array_10
    .array-data 8
        0x0
        -0x41ce86ee35ca069bL    # -4.068233003401932E-9
        0x3e44f31576ba89dfL    # 9.755392680573412E-9
        0x3e55764213d22a52L    # 1.9987994582857286E-8
        -0x41b8960bdfd0ec98L    # -1.0902938113007961E-8
        -0x419a88421d817238L    # -3.9986783938944604E-8
        0x3e66bf8f0d65b2c7L    # 4.23719669792332E-8
        -0x41940b8da1ad99e2L    # -5.207000323380292E-8
        0x3e5e1219dc0831baL    # 2.800552834259E-8
        0x3e54395b9ba52bdeL    # 1.883511811213715E-8
        -0x41d11418c1f26420L
        0x3e6619369d5ac9deL    # 4.116164446561962E-8
        0x3e6b2c6d8ade6d02L    # 5.0614674548127384E-8
        -0x41ee9934d7791580L    # -1.0129027912496858E-9
    .end array-data

    :array_11
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fefc01540000000L    # 0.9921976327896118
        0x3fef015480000000L    # 0.9689123630523682
        0x3fedc6b800000000L    # 0.9305076599121094
        0x3fec152800000000L    # 0.8775825500488281
        0x3fe9f36900000000L    # 0.8109631538391113
        0x3fe769fec0000000L    # 0.7316888570785522
        0x3fe4830bc0000000L    # 0.6409968137741089
        0x3fe14a2800000000L    # 0.5403022766113281
        0x3fdb986580000000L    # 0.4311765432357788
        0x3fd42e3dc0000000L    # 0.3153223395347595
        0x3fc8e6f080000000L    # 0.19454771280288696
        0x3fb21bd540000000L    # 0.07073719799518585
        -0x405442e500000000L    # -0.05417713522911072
    .end array-data

    :array_12
    .array-data 8
        0x0
        0x3e627d5bd36da3cdL    # 3.4439717236742845E-8
        0x3e6f7deea174f07aL    # 5.865827662008209E-8
        -0x419b9959120a59b2L    # -3.7999795083850525E-8
        0x3e496df53e76deeeL    # 1.184154459111628E-8
        -0x419d912f84b8b7f8L    # -3.43338934259355E-8
        0x3e4954847b9f5d96L    # 1.1795268640216787E-8
        0x3e67d4ceb377de00L    # 4.438921624363781E-8
        0x3e5f6a0d17247090L    # 2.925681159240093E-8
        -0x41a39d05959b3904L    # -2.6437112632041807E-8
        0x3e588bd951d9589eL    # 2.2860509143963117E-8
        -0x41cb530fac069102L    # -4.813899778443457E-9
        0x3e2f8bf34e87d450L    # 3.6725170580355583E-9
        0x3debc96115437580L    # 2.0217439756338078E-10
    .end array-data

    :array_13
    .array-data 8
        0x0
        0x3fc01577c0000000L    # 0.1256551444530487
        0x3fd05785c0000000L    # 0.25534194707870483
        0x3fd9312d80000000L    # 0.3936265707015991
        0x3fe17b4f40000000L    # 0.5463024377822876
        0x3fe7166680000000L    # 0.7214844226837158
        0x3fedcfa380000000L    # 0.9315965175628662
        0x3ff328a380000000L    # 1.1974215507507324
        0x3ff8eb2440000000L    # 1.5574076175689697
        0x4000bd9600000000L    # 2.092571258544922
        0x4008139940000000L    # 3.0095696449279785
        0x40142aebc0000000L    # 5.041914939880371
        0x402c33ed40000000L    # 14.101419448852539
        -0x3fcd91b300000000L    # -18.430862426757812
    .end array-data

    :array_14
    .array-data 8
        0x0
        -0x41bf1511a4e045a1L    # -7.877917738262007E-9
        -0x41a43c4c55e63940L    # -2.5857668567479893E-8
        0x3e366fe2bf10b114L    # 5.2240336371356666E-9
        0x3e6bf3474a431796L    # 5.206150291559893E-8
        0x3e53a83ddf05d806L    # 1.8307188599677033E-8
        -0x419110eeebe0c3faL    # -5.7618793749770706E-8
        0x3e75115a5dbf6d33L    # 7.848361555046424E-8
        0x3e7cbee3a5b8acc8L    # 1.0708593250394448E-7
        0x3e532451b242ac7cL    # 1.7827257129423813E-8
        0x3e5f118d40a85840L    # 2.893485277253286E-8
        0x3e953f29e3a7b3e9L    # 3.1660099222737955E-7
        0x3ea0b887775a6a07L    # 4.983191803254889E-7
        -0x41697a3ba64a83f0L    # -3.356118100840571E-7
    .end array-data

    :array_15
    .array-data 8
        0x28be60db9391054aL
        0x7f09d5f47d4d3770L    # 8.858637187045085E303
        0x36d8a5664f10e410L    # 1.726826568726609E-44
        0x7f9458eaf7aef158L    # 3.5720961930666036E306
        0x6dc91b8e909374b8L    # 7.090433745230334E220
        0x1924bba82746487L
        0x3f877ac72c4a69cfL    # 0.011464649237770267
        -0x45df7282b4512edfL    # -1.044621797628068E-28
        0x3a671c09ad17df90L    # 2.333465466106487E-27
        0x4e64758e60d4ce7dL    # 4.412632339855038E69
        0x272117e2ef7e4a0eL    # 3.309770029673895E-120
        -0x3801da00087e99fdL    # -6.4118634369864365E38
        -0x4343b9d297d64b9L    # -2.114058060274595E288
        -0x24b2604c360d3d93L    # -6.5709692303435024E131
        -0x2c2e702658680575L    # -5.861253522665201E95
        0x5d49eeb1faf97c5eL    # 2.470533517408828E141
        -0x30be31821d6b5b46L    # -6.292310740746215E73
        -0x6501281400000000L    # -1.189283686241432E-178
    .end array-data

    :array_16
    .array-data 8
        -0x36f0255dde973dccL    # -8.879609370493449E43
        -0x3b399d747f23e32fL    # -2.114197916374807E23
    .end array-data

    :array_17
    .array-data 8
        0x0
        0x3fc0000000000000L    # 0.125
        0x3fd0000000000000L    # 0.25
        0x3fd8000000000000L    # 0.375
        0x3fe0000000000000L    # 0.5
        0x3fe4000000000000L    # 0.625
        0x3fe8000000000000L    # 0.75
        0x3fec000000000000L    # 0.875
        0x3ff0000000000000L    # 1.0
        0x3ff2000000000000L    # 1.125
        0x3ff4000000000000L    # 1.25
        0x3ff6000000000000L    # 1.375
        0x3ff8000000000000L    # 1.5
        0x3ffa000000000000L    # 1.625
    .end array-data

    :array_18
    .array-data 8
        0x3fe428a2f98d728bL    # 0.6299605249474366
        0x3fe965fea53d6e3dL    # 0.7937005259840998
        0x3ff0000000000000L    # 1.0
        0x3ff428a2f98d728bL    # 1.2599210498948732
        0x3ff965fea53d6e3cL    # 1.5874010519681994
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IEEEremainder(DD)D
    .locals 2
    .param p0, "dividend"    # D
    .param p2, "divisor"    # D

    .line 3729
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->IEEEremainder(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(D)D
    .locals 4
    .param p0, "x"    # D

    .line 3125
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .locals 2
    .param p0, "x"    # F

    .line 3116
    const v0, 0x7fffffff

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .locals 2
    .param p0, "x"    # I

    .line 3092
    ushr-int/lit8 v0, p0, 0x1f

    .line 3093
    .local v0, "i":I
    not-int v1, v0

    add-int/lit8 v1, v1, 0x1

    xor-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public static abs(J)J
    .locals 6
    .param p0, "x"    # J

    .line 3102
    const/16 v0, 0x3f

    ushr-long v0, p0, v0

    .line 3107
    .local v0, "l":J
    not-long v2, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    xor-long/2addr v2, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static acos(D)D
    .locals 29
    .param p0, "x"    # D

    .line 2879
    cmpl-double v0, p0, p0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_0

    .line 2880
    return-wide v1

    .line 2883
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v3

    if-gtz v0, :cond_7

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpg-double v0, p0, v5

    if-gez v0, :cond_1

    goto/16 :goto_1

    .line 2887
    :cond_1
    cmpl-double v0, p0, v5

    if-nez v0, :cond_2

    .line 2888
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    return-wide v0

    .line 2891
    :cond_2
    cmpl-double v0, p0, v3

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    .line 2892
    return-wide v1

    .line 2895
    :cond_3
    cmpl-double v0, p0, v1

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-nez v0, :cond_4

    .line 2896
    return-wide v5

    .line 2902
    :cond_4
    const-wide/high16 v7, 0x41d0000000000000L    # 1.073741824E9

    mul-double v9, p0, v7

    .line 2903
    .local v9, "temp":D
    add-double v11, p0, v9

    sub-double/2addr v11, v9

    .line 2904
    .local v11, "xa":D
    sub-double v13, p0, v11

    .line 2907
    .local v13, "xb":D
    move-wide v15, v1

    mul-double v1, v11, v11

    .line 2908
    .local v1, "ya":D
    mul-double v17, v11, v13

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    mul-double v17, v17, v19

    mul-double v21, v13, v13

    move-wide/from16 v23, v3

    add-double v3, v17, v21

    .line 2911
    .local v3, "yb":D
    neg-double v0, v1

    .line 2912
    .end local v1    # "ya":D
    .local v0, "ya":D
    neg-double v2, v3

    .line 2914
    .end local v3    # "yb":D
    .local v2, "yb":D
    add-double v17, v0, v23

    .line 2915
    .local v17, "za":D
    sub-double v21, v17, v23

    move-wide/from16 v23, v5

    sub-double v5, v21, v0

    neg-double v4, v5

    .line 2917
    .local v4, "zb":D
    add-double v9, v17, v2

    .line 2918
    sub-double v21, v9, v17

    move-wide/from16 v25, v7

    sub-double v7, v21, v2

    neg-double v6, v7

    add-double/2addr v4, v6

    .line 2919
    move-wide v6, v9

    .line 2922
    .end local v17    # "za":D
    .local v6, "za":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    .line 2923
    .local v17, "y":D
    mul-double v8, v17, v25

    .line 2924
    .end local v9    # "temp":D
    .local v8, "temp":D
    add-double v21, v17, v8

    sub-double v21, v21, v8

    .line 2925
    .end local v0    # "ya":D
    .local v21, "ya":D
    sub-double v0, v17, v21

    .line 2928
    .end local v2    # "yb":D
    .local v0, "yb":D
    mul-double v2, v21, v21

    sub-double v2, v6, v2

    mul-double v25, v21, v19

    mul-double v25, v25, v0

    sub-double v2, v2, v25

    mul-double v25, v0, v0

    sub-double v2, v2, v25

    mul-double v25, v17, v19

    div-double v2, v2, v25

    add-double/2addr v0, v2

    .line 2931
    mul-double v19, v19, v17

    div-double v2, v4, v19

    add-double/2addr v0, v2

    .line 2932
    add-double v2, v21, v0

    .line 2933
    .end local v17    # "y":D
    .local v2, "y":D
    sub-double v17, v2, v21

    move-wide/from16 v19, v0

    .end local v0    # "yb":D
    .local v19, "yb":D
    sub-double v0, v17, v19

    neg-double v0, v0

    .line 2936
    .end local v19    # "yb":D
    .restart local v0    # "yb":D
    div-double v17, v2, p0

    .line 2939
    .local v17, "r":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2940
    return-wide v23

    .line 2943
    :cond_5
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v19

    .line 2944
    .local v19, "ra":D
    sub-double v23, v17, v19

    .line 2946
    .local v23, "rb":D
    mul-double v25, v19, v11

    sub-double v25, v2, v25

    mul-double v27, v19, v13

    sub-double v25, v25, v27

    mul-double v27, v23, v11

    sub-double v25, v25, v27

    mul-double v27, v23, v13

    sub-double v25, v25, v27

    div-double v25, v25, p0

    add-double v23, v23, v25

    .line 2947
    div-double v25, v0, p0

    add-double v23, v23, v25

    .line 2949
    add-double v8, v19, v23

    .line 2950
    sub-double v25, v8, v19

    move-wide/from16 v27, v0

    .end local v0    # "yb":D
    .local v27, "yb":D
    sub-double v0, v25, v23

    neg-double v0, v0

    .line 2951
    .end local v23    # "rb":D
    .local v0, "rb":D
    move-wide/from16 v23, v8

    .line 2953
    .end local v19    # "ra":D
    .local v23, "ra":D
    cmpg-double v10, p0, v15

    if-gez v10, :cond_6

    const/4 v10, 0x1

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    :goto_0
    move-wide v15, v2

    move-wide/from16 v2, v23

    .end local v23    # "ra":D
    .local v2, "ra":D
    .local v15, "y":D
    invoke-static {v2, v3, v0, v1, v10}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v19

    return-wide v19

    .line 2884
    .end local v0    # "rb":D
    .end local v2    # "ra":D
    .end local v4    # "zb":D
    .end local v6    # "za":D
    .end local v8    # "temp":D
    .end local v11    # "xa":D
    .end local v13    # "xb":D
    .end local v15    # "y":D
    .end local v17    # "r":D
    .end local v21    # "ya":D
    .end local v27    # "yb":D
    :cond_7
    :goto_1
    return-wide v1
.end method

.method public static acosh(D)D
    .locals 4
    .param p0, "a"    # D

    .line 720
    mul-double v0, p0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static addExact(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3819
    add-int v0, p0, p1

    .line 3822
    .local v0, "sum":I
    xor-int v1, p0, p1

    if-ltz v1, :cond_1

    xor-int v1, v0, p1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 3823
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 3826
    :cond_1
    :goto_0
    return v0
.end method

.method public static addExact(JJ)J
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3840
    add-long v0, p0, p2

    .line 3843
    .local v0, "sum":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    xor-long v2, v0, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    .line 3844
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 3847
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static asin(D)D
    .locals 31
    .param p0, "x"    # D

    .line 2803
    move-wide/from16 v0, p0

    cmpl-double v2, v0, v0

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-eqz v2, :cond_0

    .line 2804
    return-wide v3

    .line 2807
    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v5

    if-gtz v2, :cond_5

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpg-double v2, v0, v7

    if-gez v2, :cond_1

    goto/16 :goto_0

    .line 2811
    :cond_1
    cmpl-double v2, v0, v5

    if-nez v2, :cond_2

    .line 2812
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    return-wide v2

    .line 2815
    :cond_2
    cmpl-double v2, v0, v7

    if-nez v2, :cond_3

    .line 2816
    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    return-wide v2

    .line 2819
    :cond_3
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_4

    .line 2820
    return-wide v0

    .line 2826
    :cond_4
    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    mul-double v7, v0, v2

    .line 2827
    .local v7, "temp":D
    add-double v9, v0, v7

    sub-double/2addr v9, v7

    .line 2828
    .local v9, "xa":D
    sub-double v11, v0, v9

    .line 2831
    .local v11, "xb":D
    mul-double v13, v9, v9

    .line 2832
    .local v13, "ya":D
    mul-double v15, v9, v11

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v15, v15, v17

    mul-double v19, v11, v11

    move-wide/from16 v21, v2

    add-double v2, v15, v19

    .line 2835
    .local v2, "yb":D
    neg-double v13, v13

    .line 2836
    neg-double v2, v2

    .line 2838
    add-double v15, v13, v5

    .line 2839
    .local v15, "za":D
    sub-double v4, v15, v5

    sub-double/2addr v4, v13

    neg-double v4, v4

    .line 2841
    .local v4, "zb":D
    add-double v6, v15, v2

    .line 2842
    .end local v7    # "temp":D
    .local v6, "temp":D
    sub-double v19, v6, v15

    move-wide/from16 v23, v2

    .end local v2    # "yb":D
    .local v23, "yb":D
    sub-double v2, v19, v23

    neg-double v2, v2

    add-double/2addr v4, v2

    .line 2843
    move-wide v2, v6

    .line 2847
    .end local v15    # "za":D
    .local v2, "za":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    .line 2848
    .local v15, "y":D
    mul-double v6, v15, v21

    .line 2849
    add-double v19, v15, v6

    sub-double v19, v19, v6

    .line 2850
    .end local v13    # "ya":D
    .local v19, "ya":D
    sub-double v13, v15, v19

    .line 2853
    .end local v23    # "yb":D
    .local v13, "yb":D
    mul-double v23, v19, v19

    sub-double v23, v2, v23

    mul-double v25, v19, v17

    mul-double v25, v25, v13

    sub-double v23, v23, v25

    mul-double v25, v13, v13

    sub-double v23, v23, v25

    mul-double v25, v15, v17

    div-double v23, v23, v25

    add-double v13, v13, v23

    .line 2856
    mul-double v17, v17, v15

    div-double v17, v4, v17

    .line 2859
    .local v17, "dx":D
    div-double v23, v0, v15

    .line 2860
    .local v23, "r":D
    mul-double v6, v23, v21

    .line 2861
    add-double v21, v23, v6

    sub-double v21, v21, v6

    .line 2862
    .local v21, "ra":D
    sub-double v25, v23, v21

    .line 2864
    .local v25, "rb":D
    mul-double v27, v21, v19

    sub-double v27, v0, v27

    mul-double v29, v21, v13

    sub-double v27, v27, v29

    mul-double v29, v25, v19

    sub-double v27, v27, v29

    mul-double v29, v25, v13

    sub-double v27, v27, v29

    div-double v27, v27, v15

    add-double v25, v25, v27

    .line 2865
    move-wide/from16 v27, v2

    .end local v2    # "za":D
    .local v27, "za":D
    neg-double v2, v0

    mul-double v2, v2, v17

    div-double/2addr v2, v15

    div-double/2addr v2, v15

    add-double v25, v25, v2

    .line 2867
    add-double v2, v21, v25

    .line 2868
    .end local v6    # "temp":D
    .local v2, "temp":D
    sub-double v6, v2, v21

    sub-double v6, v6, v25

    neg-double v6, v6

    .line 2869
    .end local v25    # "rb":D
    .local v6, "rb":D
    move-wide/from16 v25, v2

    .line 2871
    .end local v21    # "ra":D
    .local v25, "ra":D
    const/4 v8, 0x0

    move-wide/from16 v0, v25

    .end local v25    # "ra":D
    .local v0, "ra":D
    invoke-static {v0, v1, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v21

    return-wide v21

    .line 2808
    .end local v0    # "ra":D
    .end local v2    # "temp":D
    .end local v4    # "zb":D
    .end local v6    # "rb":D
    .end local v9    # "xa":D
    .end local v11    # "xb":D
    .end local v13    # "yb":D
    .end local v15    # "y":D
    .end local v17    # "dx":D
    .end local v19    # "ya":D
    .end local v23    # "r":D
    .end local v27    # "za":D
    :cond_5
    :goto_0
    return-wide v3
.end method

.method public static asinh(D)D
    .locals 36
    .param p0, "a"    # D

    .line 728
    move-wide/from16 v0, p0

    const/4 v2, 0x0

    .line 729
    .local v2, "negative":Z
    const-wide/16 v3, 0x0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    .line 730
    const/4 v2, 0x1

    .line 731
    neg-double v0, v0

    .line 735
    .end local p0    # "a":D
    .local v0, "a":D
    :cond_0
    const-wide v3, 0x3fc5604189374bc7L    # 0.167

    cmpl-double v3, v0, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_1

    .line 736
    mul-double v6, v0, v0

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v3, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    .local v3, "absAsinh":D
    goto/16 :goto_0

    .line 738
    .end local v3    # "absAsinh":D
    :cond_1
    mul-double v6, v0, v0

    .line 739
    .local v6, "a2":D
    const-wide v8, 0x3fb8d4fdf3b645a2L    # 0.097

    cmpl-double v3, v0, v8

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    const-wide v10, 0x3fed555555555555L    # 0.9166666666666666

    const-wide v12, 0x3fb3b13b13b13b14L    # 0.07692307692307693

    const-wide v14, 0x3fb745d1745d1746L    # 0.09090909090909091

    const-wide v16, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    const-wide/high16 v18, 0x3fec000000000000L    # 0.875

    const-wide v20, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    const-wide v22, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    const-wide v28, 0x3fc999999999999aL    # 0.2

    const-wide v30, 0x3fd5555555555555L    # 0.3333333333333333

    if-lez v3, :cond_2

    .line 740
    const-wide v32, 0x3fae1e1e1e1e1e1eL    # 0.058823529411764705

    mul-double v32, v32, v6

    const-wide/high16 v34, 0x3fee000000000000L    # 0.9375

    mul-double v32, v32, v34

    const-wide v34, 0x3fb1111111111111L    # 0.06666666666666667

    sub-double v34, v34, v32

    mul-double v34, v34, v6

    const-wide v32, 0x3fedb6db6db6db6eL    # 0.9285714285714286

    mul-double v34, v34, v32

    sub-double v12, v12, v34

    mul-double/2addr v12, v6

    mul-double/2addr v12, v10

    sub-double/2addr v14, v12

    mul-double/2addr v14, v6

    mul-double/2addr v14, v8

    sub-double v20, v20, v14

    mul-double v20, v20, v6

    mul-double v20, v20, v18

    sub-double v22, v22, v20

    mul-double v22, v22, v6

    mul-double v22, v22, v16

    sub-double v28, v28, v22

    mul-double v28, v28, v6

    mul-double v28, v28, v26

    sub-double v30, v30, v28

    mul-double v30, v30, v6

    mul-double v30, v30, v24

    sub-double v4, v4, v30

    mul-double v3, v0, v4

    .restart local v3    # "absAsinh":D
    goto :goto_0

    .line 741
    .end local v3    # "absAsinh":D
    :cond_2
    const-wide v32, 0x3fa26e978d4fdf3bL    # 0.036

    cmpl-double v3, v0, v32

    if-lez v3, :cond_3

    .line 742
    mul-double/2addr v12, v6

    mul-double/2addr v12, v10

    sub-double/2addr v14, v12

    mul-double/2addr v14, v6

    mul-double/2addr v14, v8

    sub-double v20, v20, v14

    mul-double v20, v20, v6

    mul-double v20, v20, v18

    sub-double v22, v22, v20

    mul-double v22, v22, v6

    mul-double v22, v22, v16

    sub-double v28, v28, v22

    mul-double v28, v28, v6

    mul-double v28, v28, v26

    sub-double v30, v30, v28

    mul-double v30, v30, v6

    mul-double v30, v30, v24

    sub-double v4, v4, v30

    mul-double v3, v0, v4

    .restart local v3    # "absAsinh":D
    goto :goto_0

    .line 743
    .end local v3    # "absAsinh":D
    :cond_3
    const-wide v8, 0x3f6d7dbf487fcb92L    # 0.0036

    cmpl-double v3, v0, v8

    if-lez v3, :cond_4

    .line 744
    mul-double v20, v20, v6

    mul-double v20, v20, v18

    sub-double v22, v22, v20

    mul-double v22, v22, v6

    mul-double v22, v22, v16

    sub-double v28, v28, v22

    mul-double v28, v28, v6

    mul-double v28, v28, v26

    sub-double v30, v30, v28

    mul-double v30, v30, v6

    mul-double v30, v30, v24

    sub-double v4, v4, v30

    mul-double v3, v0, v4

    .restart local v3    # "absAsinh":D
    goto :goto_0

    .line 746
    .end local v3    # "absAsinh":D
    :cond_4
    mul-double v28, v28, v6

    mul-double v28, v28, v26

    sub-double v30, v30, v28

    mul-double v30, v30, v6

    mul-double v30, v30, v24

    sub-double v4, v4, v30

    mul-double v3, v0, v4

    .line 750
    .end local v6    # "a2":D
    .restart local v3    # "absAsinh":D
    :goto_0
    if-eqz v2, :cond_5

    neg-double v5, v3

    goto :goto_1

    :cond_5
    move-wide v5, v3

    :goto_1
    return-wide v5
.end method

.method public static atan(D)D
    .locals 3
    .param p0, "x"    # D

    .line 2519
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v0

    return-wide v0
.end method

.method private static atan(DDZ)D
    .locals 40
    .param p0, "xa"    # D
    .param p2, "xb"    # D
    .param p4, "leftPlane"    # Z

    .line 2529
    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    if-nez v4, :cond_1

    .line 2530
    if-eqz p4, :cond_0

    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2

    .line 2534
    :cond_1
    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 2536
    neg-double v0, v0

    .line 2537
    .end local p0    # "xa":D
    .local v0, "xa":D
    move-wide/from16 v2, p2

    neg-double v2, v2

    .line 2538
    .end local p2    # "xb":D
    .local v2, "xb":D
    const/4 v4, 0x1

    .local v4, "negate":Z
    goto :goto_1

    .line 2540
    .end local v0    # "xa":D
    .end local v2    # "xb":D
    .end local v4    # "negate":Z
    .restart local p0    # "xa":D
    .restart local p2    # "xb":D
    :cond_2
    move-wide/from16 v2, p2

    const/4 v4, 0x0

    .line 2543
    .end local p0    # "xa":D
    .end local p2    # "xb":D
    .restart local v0    # "xa":D
    .restart local v2    # "xb":D
    .restart local v4    # "negate":Z
    :goto_1
    const-wide v7, 0x434d02967c31cdb5L    # 1.633123935319537E16

    cmpl-double v7, v0, v7

    if-lez v7, :cond_4

    .line 2544
    xor-int v5, v4, p4

    if-eqz v5, :cond_3

    const-wide v5, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_2

    :cond_3
    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_2
    return-wide v5

    .line 2549
    :cond_4
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v0, v7

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    const-wide v12, -0x400487ed5110b461L    # -1.7168146928204135

    if-gez v9, :cond_5

    .line 2550
    mul-double/2addr v12, v0

    mul-double/2addr v12, v0

    add-double/2addr v12, v10

    mul-double/2addr v12, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v9

    double-to-int v9, v12

    .local v9, "idx":I
    goto :goto_3

    .line 2552
    .end local v9    # "idx":I
    :cond_5
    div-double v14, v7, v0

    .line 2553
    .local v14, "oneOverXa":D
    mul-double/2addr v12, v14

    mul-double/2addr v12, v14

    add-double/2addr v12, v10

    mul-double/2addr v12, v14

    neg-double v9, v12

    const-wide v11, 0x402a23d70a3d70a4L    # 13.07

    add-double/2addr v9, v11

    double-to-int v9, v9

    .line 2556
    .end local v14    # "oneOverXa":D
    .restart local v9    # "idx":I
    :goto_3
    sget-object v10, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_A:[D

    aget-wide v10, v10, v9

    .line 2557
    .local v10, "ttA":D
    sget-object v12, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_B:[D

    aget-wide v12, v12, v9

    .line 2559
    .local v12, "ttB":D
    sub-double v14, v0, v10

    .line 2560
    .local v14, "epsA":D
    sub-double v16, v14, v0

    move-wide/from16 v18, v5

    add-double v5, v16, v10

    neg-double v5, v5

    .line 2561
    .local v5, "epsB":D
    sub-double v16, v2, v12

    add-double v5, v5, v16

    .line 2563
    add-double v16, v14, v5

    .line 2564
    .local v16, "temp":D
    sub-double v20, v16, v14

    move-wide/from16 p0, v7

    sub-double v7, v20, v5

    neg-double v5, v7

    .line 2565
    move-wide/from16 v7, v16

    .line 2568
    .end local v14    # "epsA":D
    .local v7, "epsA":D
    const-wide/high16 v14, 0x41d0000000000000L    # 1.073741824E9

    mul-double v16, v0, v14

    .line 2569
    add-double v20, v0, v16

    sub-double v20, v20, v16

    .line 2570
    .local v20, "ya":D
    add-double v22, v2, v0

    sub-double v22, v22, v20

    .line 2571
    .local v22, "yb":D
    move-wide/from16 v0, v20

    .line 2572
    add-double v2, v2, v22

    .line 2575
    if-nez v9, :cond_6

    .line 2578
    add-double v14, v0, v2

    add-double v24, v10, v12

    mul-double v14, v14, v24

    add-double v14, v14, p0

    div-double v14, p0, v14

    .line 2580
    .local v14, "denom":D
    mul-double v20, v7, v14

    .line 2581
    mul-double/2addr v14, v5

    .line 2582
    .end local v22    # "yb":D
    .local v14, "yb":D
    move-wide/from16 v30, v0

    goto :goto_4

    .line 2583
    .end local v14    # "yb":D
    .restart local v22    # "yb":D
    :cond_6
    mul-double v24, v0, v10

    .line 2584
    .local v24, "temp2":D
    add-double v26, v24, p0

    .line 2585
    .local v26, "za":D
    sub-double v28, v26, p0

    move-wide/from16 p2, v14

    sub-double v14, v28, v24

    neg-double v14, v14

    .line 2586
    .local v14, "zb":D
    mul-double v28, v2, v10

    mul-double v30, v0, v12

    add-double v28, v28, v30

    .line 2587
    .end local v24    # "temp2":D
    .local v28, "temp2":D
    add-double v16, v26, v28

    .line 2588
    sub-double v24, v16, v26

    move-wide/from16 v30, v0

    .end local v0    # "xa":D
    .local v30, "xa":D
    sub-double v0, v24, v28

    neg-double v0, v0

    add-double/2addr v14, v0

    .line 2589
    move-wide/from16 v0, v16

    .line 2591
    .end local v26    # "za":D
    .local v0, "za":D
    mul-double v24, v2, v12

    add-double v14, v14, v24

    .line 2592
    div-double v20, v7, v0

    .line 2594
    mul-double v16, v20, p2

    .line 2595
    add-double v24, v20, v16

    sub-double v24, v24, v16

    .line 2596
    .local v24, "yaa":D
    sub-double v26, v20, v24

    .line 2598
    .local v26, "yab":D
    mul-double v16, v0, p2

    .line 2599
    add-double v32, v0, v16

    sub-double v32, v32, v16

    .line 2600
    .local v32, "zaa":D
    sub-double v34, v0, v32

    .line 2603
    .local v34, "zab":D
    mul-double v36, v24, v32

    sub-double v36, v7, v36

    mul-double v38, v24, v34

    sub-double v36, v36, v38

    mul-double v38, v26, v32

    sub-double v36, v36, v38

    mul-double v38, v26, v34

    sub-double v36, v36, v38

    div-double v36, v36, v0

    .line 2605
    .end local v22    # "yb":D
    .local v36, "yb":D
    move-wide/from16 p2, v0

    .end local v0    # "za":D
    .local p2, "za":D
    neg-double v0, v7

    mul-double/2addr v0, v14

    div-double v0, v0, p2

    div-double v0, v0, p2

    add-double v36, v36, v0

    .line 2606
    div-double v0, v5, p2

    add-double v0, v36, v0

    move-wide v14, v0

    .line 2610
    .end local v24    # "yaa":D
    .end local v26    # "yab":D
    .end local v28    # "temp2":D
    .end local v32    # "zaa":D
    .end local v34    # "zab":D
    .end local v36    # "yb":D
    .end local p2    # "za":D
    .local v14, "yb":D
    :goto_4
    move-wide/from16 v0, v20

    .line 2611
    .end local v7    # "epsA":D
    .local v0, "epsA":D
    move-wide v5, v14

    .line 2614
    mul-double v7, v0, v0

    .line 2625
    .local v7, "epsA2":D
    const-wide v14, 0x3fb32d2f6f8219e7L    # 0.07490822288864472

    .line 2626
    mul-double v22, v14, v7

    const-wide v24, 0x3fb74435086a6a2fL    # 0.09088450866185192

    sub-double v22, v22, v24

    .line 2627
    .end local v14    # "yb":D
    .restart local v22    # "yb":D
    mul-double v14, v22, v7

    const-wide v24, 0x3fbc71c490f31505L    # 0.11111095942313305

    add-double v14, v14, v24

    .line 2628
    .end local v22    # "yb":D
    .restart local v14    # "yb":D
    mul-double v22, v14, v7

    const-wide v24, 0x3fc24924913c3052L    # 0.1428571423679182

    sub-double v22, v22, v24

    .line 2629
    .end local v14    # "yb":D
    .restart local v22    # "yb":D
    mul-double v14, v22, v7

    const-wide v24, 0x3fc9999999992e0dL    # 0.19999999999923582

    add-double v14, v14, v24

    .line 2630
    .end local v22    # "yb":D
    .restart local v14    # "yb":D
    mul-double v22, v14, v7

    const-wide v24, 0x3fd555555555554dL    # 0.33333333333333287

    sub-double v22, v22, v24

    .line 2631
    .end local v14    # "yb":D
    .restart local v22    # "yb":D
    mul-double v14, v22, v7

    mul-double/2addr v14, v0

    .line 2634
    .end local v22    # "yb":D
    .restart local v14    # "yb":D
    nop

    .line 2636
    add-double v16, v20, v14

    .line 2637
    sub-double v22, v16, v20

    move-wide/from16 p2, v0

    .end local v0    # "epsA":D
    .local p2, "epsA":D
    sub-double v0, v22, v14

    neg-double v0, v0

    .line 2638
    .end local v14    # "yb":D
    .local v0, "yb":D
    move-wide/from16 v14, v16

    .line 2641
    .end local v20    # "ya":D
    .local v14, "ya":D
    mul-double v20, p2, p2

    add-double v20, v20, p0

    div-double v20, v5, v20

    add-double v0, v0, v20

    .line 2643
    sget-object v20, Lorg/apache/commons/math3/util/FastMath;->EIGHTHS:[D

    aget-wide v20, v20, v9

    .line 2646
    .local v20, "eighths":D
    add-double v22, v20, v14

    .line 2647
    .local v22, "za":D
    sub-double v24, v22, v20

    move-wide/from16 p0, v0

    .end local v0    # "yb":D
    .local p0, "yb":D
    sub-double v0, v24, v14

    neg-double v0, v0

    .line 2648
    .local v0, "zb":D
    add-double v16, v22, p0

    .line 2649
    sub-double v24, v16, v22

    move-wide/from16 v26, v0

    .end local v0    # "zb":D
    .local v26, "zb":D
    sub-double v0, v24, p0

    neg-double v0, v0

    add-double v0, v26, v0

    .line 2650
    .end local v26    # "zb":D
    .restart local v0    # "zb":D
    move-wide/from16 v22, v16

    .line 2652
    add-double v24, v22, v0

    .line 2654
    .local v24, "result":D
    if-eqz p4, :cond_7

    .line 2656
    sub-double v26, v24, v22

    move-wide/from16 v28, v0

    .end local v0    # "zb":D
    .local v28, "zb":D
    sub-double v0, v26, v28

    neg-double v0, v0

    .line 2657
    .local v0, "resultb":D
    const-wide v26, 0x400921fb54442d18L    # Math.PI

    .line 2658
    .local v26, "pia":D
    const-wide v32, 0x3ca1a62633145c07L    # 1.2246467991473532E-16

    .line 2660
    .local v32, "pib":D
    sub-double v22, v18, v24

    .line 2661
    sub-double v18, v22, v18

    move-wide/from16 v34, v0

    .end local v0    # "resultb":D
    .local v34, "resultb":D
    add-double v0, v18, v24

    neg-double v0, v0

    .line 2662
    .end local v28    # "zb":D
    .local v0, "zb":D
    const-wide v18, 0x3ca1a62633145c07L    # 1.2246467991473532E-16

    sub-double v18, v18, v34

    add-double v0, v0, v18

    .line 2664
    add-double v24, v22, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v24

    goto :goto_5

    .line 2654
    .end local v26    # "pia":D
    .end local v32    # "pib":D
    .end local v34    # "resultb":D
    :cond_7
    move-wide/from16 v28, v0

    .end local v0    # "zb":D
    .restart local v28    # "zb":D
    move-wide/from16 v18, v28

    move-wide/from16 v0, v24

    .line 2668
    .end local v24    # "result":D
    .end local v28    # "zb":D
    .local v0, "result":D
    .local v18, "zb":D
    :goto_5
    xor-int v24, v4, p4

    if-eqz v24, :cond_8

    .line 2669
    neg-double v0, v0

    .line 2672
    :cond_8
    return-wide v0
.end method

.method public static atan2(DD)D
    .locals 21
    .param p0, "y"    # D
    .param p2, "x"    # D

    .line 2682
    move-wide/from16 v0, p0

    cmpl-double v2, p2, p2

    if-nez v2, :cond_1e

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 2686
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const-wide v5, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_7

    .line 2687
    mul-double v11, p2, v0

    .line 2688
    .local v11, "result":D
    div-double v13, v9, p2

    .line 2689
    .local v13, "invx":D
    div-double/2addr v9, v0

    .line 2691
    .local v9, "invy":D
    cmpl-double v4, v13, v2

    if-nez v4, :cond_2

    .line 2692
    cmpl-double v2, p2, v2

    if-lez v2, :cond_1

    .line 2693
    return-wide v0

    .line 2695
    :cond_1
    invoke-static {v7, v8, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v2

    return-wide v2

    .line 2699
    :cond_2
    cmpg-double v4, p2, v2

    if-ltz v4, :cond_4

    cmpg-double v4, v13, v2

    if-gez v4, :cond_3

    goto :goto_0

    .line 2706
    :cond_3
    return-wide v11

    .line 2700
    :cond_4
    :goto_0
    cmpg-double v4, v0, v2

    if-ltz v4, :cond_6

    cmpg-double v2, v9, v2

    if-gez v2, :cond_5

    goto :goto_1

    .line 2703
    :cond_5
    return-wide v7

    .line 2701
    :cond_6
    :goto_1
    return-wide v5

    .line 2712
    .end local v9    # "invy":D
    .end local v11    # "result":D
    .end local v13    # "invx":D
    :cond_7
    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v0, v11

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/high16 v15, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v4, :cond_a

    .line 2713
    cmpl-double v2, p2, v11

    if-nez v2, :cond_8

    .line 2714
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    return-wide v2

    .line 2717
    :cond_8
    cmpl-double v2, p2, v15

    if-nez v2, :cond_9

    .line 2718
    const-wide v2, 0x4002d97c7f3321d2L    # 2.356194490192345

    return-wide v2

    .line 2721
    :cond_9
    return-wide v13

    .line 2724
    :cond_a
    cmpl-double v4, v0, v15

    const-wide v17, -0x4006de04abbbd2e8L    # -1.5707963267948966

    if-nez v4, :cond_d

    .line 2725
    cmpl-double v2, p2, v11

    if-nez v2, :cond_b

    .line 2726
    const-wide v2, -0x4016de04abbbd2e8L    # -0.7853981633974483

    return-wide v2

    .line 2729
    :cond_b
    cmpl-double v2, p2, v15

    if-nez v2, :cond_c

    .line 2730
    const-wide v2, -0x3ffd268380ccde2eL    # -2.356194490192345

    return-wide v2

    .line 2733
    :cond_c
    return-wide v17

    .line 2736
    :cond_d
    cmpl-double v4, p2, v11

    if-nez v4, :cond_11

    .line 2737
    cmpl-double v4, v0, v2

    if-gtz v4, :cond_10

    div-double v11, v9, v0

    cmpl-double v4, v11, v2

    if-lez v4, :cond_e

    goto :goto_2

    .line 2741
    :cond_e
    cmpg-double v4, v0, v2

    if-ltz v4, :cond_f

    div-double v11, v9, v0

    cmpg-double v4, v11, v2

    if-gez v4, :cond_11

    .line 2742
    :cond_f
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .line 2738
    :cond_10
    :goto_2
    return-wide v2

    .line 2746
    :cond_11
    cmpl-double v4, p2, v15

    if-nez v4, :cond_15

    .line 2748
    cmpl-double v4, v0, v2

    if-gtz v4, :cond_14

    div-double v11, v9, v0

    cmpl-double v4, v11, v2

    if-lez v4, :cond_12

    goto :goto_3

    .line 2752
    :cond_12
    cmpg-double v4, v0, v2

    if-ltz v4, :cond_13

    div-double v7, v9, v0

    cmpg-double v4, v7, v2

    if-gez v4, :cond_15

    .line 2753
    :cond_13
    return-wide v5

    .line 2749
    :cond_14
    :goto_3
    return-wide v7

    .line 2759
    :cond_15
    cmpl-double v4, p2, v2

    if-nez v4, :cond_19

    .line 2760
    cmpl-double v4, v0, v2

    if-gtz v4, :cond_18

    div-double v4, v9, v0

    cmpl-double v4, v4, v2

    if-lez v4, :cond_16

    goto :goto_4

    .line 2764
    :cond_16
    cmpg-double v4, v0, v2

    if-ltz v4, :cond_17

    div-double/2addr v9, v0

    cmpg-double v4, v9, v2

    if-gez v4, :cond_19

    .line 2765
    :cond_17
    return-wide v17

    .line 2761
    :cond_18
    :goto_4
    return-wide v13

    .line 2770
    :cond_19
    div-double v4, v0, p2

    .line 2771
    .local v4, "r":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2772
    cmpg-double v6, p2, v2

    if-gez v6, :cond_1a

    const/4 v7, 0x1

    goto :goto_5

    :cond_1a
    const/4 v7, 0x0

    :goto_5
    invoke-static {v4, v5, v2, v3, v7}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v2

    return-wide v2

    .line 2775
    :cond_1b
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v9

    .line 2776
    .local v9, "ra":D
    sub-double v11, v4, v9

    .line 2779
    .local v11, "rb":D
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v13

    .line 2780
    .local v13, "xa":D
    sub-double v15, p2, v13

    .line 2782
    .local v15, "xb":D
    mul-double v17, v9, v13

    sub-double v17, v0, v17

    mul-double v19, v9, v15

    sub-double v17, v17, v19

    mul-double v19, v11, v13

    sub-double v17, v17, v19

    mul-double v19, v11, v15

    sub-double v17, v17, v19

    div-double v17, v17, p2

    add-double v11, v11, v17

    .line 2784
    add-double v17, v9, v11

    .line 2785
    .local v17, "temp":D
    sub-double v19, v17, v9

    sub-double v7, v19, v11

    neg-double v7, v7

    .line 2786
    .end local v11    # "rb":D
    .local v7, "rb":D
    move-wide/from16 v9, v17

    .line 2788
    cmpl-double v11, v9, v2

    if-nez v11, :cond_1c

    .line 2789
    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v9

    .line 2793
    :cond_1c
    cmpg-double v2, p2, v2

    if-gez v2, :cond_1d

    const/4 v6, 0x1

    goto :goto_6

    :cond_1d
    const/4 v6, 0x0

    :goto_6
    invoke-static {v9, v10, v7, v8, v6}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v2

    .line 2795
    .local v2, "result":D
    return-wide v2

    .line 2683
    .end local v2    # "result":D
    .end local v4    # "r":D
    .end local v7    # "rb":D
    .end local v9    # "ra":D
    .end local v13    # "xa":D
    .end local v15    # "xb":D
    .end local v17    # "temp":D
    :cond_1e
    :goto_7
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    return-wide v2
.end method

.method public static atanh(D)D
    .locals 24
    .param p0, "a"    # D

    .line 758
    move-wide/from16 v0, p0

    const/4 v2, 0x0

    .line 759
    .local v2, "negative":Z
    const-wide/16 v3, 0x0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    .line 760
    const/4 v2, 0x1

    .line 761
    neg-double v0, v0

    .line 765
    .end local p0    # "a":D
    .local v0, "a":D
    :cond_0
    const-wide v3, 0x3fc3333333333333L    # 0.15

    cmpl-double v3, v0, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_1

    .line 766
    add-double v6, v0, v4

    sub-double/2addr v4, v0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    .local v3, "absAtanh":D
    goto/16 :goto_0

    .line 768
    .end local v3    # "absAtanh":D
    :cond_1
    mul-double v6, v0, v0

    .line 769
    .local v6, "a2":D
    const-wide v8, 0x3fb645a1cac08312L    # 0.087

    cmpl-double v3, v0, v8

    const-wide v8, 0x3fb3b13b13b13b14L    # 0.07692307692307693

    const-wide v10, 0x3fb745d1745d1746L    # 0.09090909090909091

    const-wide v12, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    const-wide v14, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide v16, 0x3fc999999999999aL    # 0.2

    const-wide v18, 0x3fd5555555555555L    # 0.3333333333333333

    if-lez v3, :cond_2

    .line 770
    const-wide v20, 0x3fae1e1e1e1e1e1eL    # 0.058823529411764705

    mul-double v20, v20, v6

    const-wide v22, 0x3fb1111111111111L    # 0.06666666666666667

    add-double v20, v20, v22

    mul-double v20, v20, v6

    add-double v20, v20, v8

    mul-double v20, v20, v6

    add-double v20, v20, v10

    mul-double v20, v20, v6

    add-double v20, v20, v12

    mul-double v20, v20, v6

    add-double v20, v20, v14

    mul-double v20, v20, v6

    add-double v20, v20, v16

    mul-double v20, v20, v6

    add-double v20, v20, v18

    mul-double v20, v20, v6

    add-double v20, v20, v4

    mul-double v3, v0, v20

    .restart local v3    # "absAtanh":D
    goto :goto_0

    .line 771
    .end local v3    # "absAtanh":D
    :cond_2
    const-wide v20, 0x3f9fbe76c8b43958L    # 0.031

    cmpl-double v3, v0, v20

    if-lez v3, :cond_3

    .line 772
    mul-double/2addr v8, v6

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    add-double/2addr v8, v12

    mul-double/2addr v8, v6

    add-double/2addr v8, v14

    mul-double/2addr v8, v6

    add-double v8, v8, v16

    mul-double/2addr v8, v6

    add-double v8, v8, v18

    mul-double/2addr v8, v6

    add-double/2addr v8, v4

    mul-double v3, v0, v8

    .restart local v3    # "absAtanh":D
    goto :goto_0

    .line 773
    .end local v3    # "absAtanh":D
    :cond_3
    const-wide v8, 0x3f689374bc6a7efaL    # 0.003

    cmpl-double v3, v0, v8

    if-lez v3, :cond_4

    .line 774
    mul-double/2addr v12, v6

    add-double/2addr v12, v14

    mul-double/2addr v12, v6

    add-double v12, v12, v16

    mul-double/2addr v12, v6

    add-double v12, v12, v18

    mul-double/2addr v12, v6

    add-double/2addr v12, v4

    mul-double v3, v0, v12

    .restart local v3    # "absAtanh":D
    goto :goto_0

    .line 776
    .end local v3    # "absAtanh":D
    :cond_4
    mul-double v16, v16, v6

    add-double v16, v16, v18

    mul-double v16, v16, v6

    add-double v16, v16, v4

    mul-double v3, v0, v16

    .line 780
    .end local v6    # "a2":D
    .restart local v3    # "absAtanh":D
    :goto_0
    if-eqz v2, :cond_5

    neg-double v5, v3

    goto :goto_1

    :cond_5
    move-wide v5, v3

    :goto_1
    return-wide v5
.end method

.method public static cbrt(D)D
    .locals 35
    .param p0, "x"    # D

    .line 2962
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 2963
    .local v0, "inbits":J
    const/16 v2, 0x34

    shr-long v3, v0, v2

    const-wide/16 v5, 0x7ff

    and-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit16 v3, v3, -0x3ff

    .line 2964
    .local v3, "exponent":I
    const/4 v4, 0x0

    .line 2966
    .local v4, "subnormal":Z
    const/16 v7, -0x3ff

    if-ne v3, v7, :cond_1

    .line 2967
    const-wide/16 v7, 0x0

    cmpl-double v7, p0, v7

    if-nez v7, :cond_0

    .line 2968
    return-wide p0

    .line 2972
    :cond_0
    const/4 v4, 0x1

    .line 2973
    const-wide/high16 v7, 0x4350000000000000L    # 1.8014398509481984E16

    mul-double v7, v7, p0

    .line 2974
    .end local p0    # "x":D
    .local v7, "x":D
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 2975
    shr-long v9, v0, v2

    and-long/2addr v5, v9

    long-to-int v5, v5

    add-int/lit16 v3, v5, -0x3ff

    goto :goto_0

    .line 2966
    .end local v7    # "x":D
    .restart local p0    # "x":D
    :cond_1
    move-wide/from16 v7, p0

    .line 2978
    .end local p0    # "x":D
    .restart local v7    # "x":D
    :goto_0
    const/16 v5, 0x400

    if-ne v3, v5, :cond_2

    .line 2980
    return-wide v7

    .line 2984
    :cond_2
    div-int/lit8 v5, v3, 0x3

    .line 2987
    .local v5, "exp3":I
    const-wide/high16 v9, -0x8000000000000000L

    and-long/2addr v9, v0

    add-int/lit16 v6, v5, 0x3ff

    and-int/lit16 v6, v6, 0x7ff

    int-to-long v11, v6

    shl-long/2addr v11, v2

    or-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 2991
    .local v9, "p2":D
    const-wide v11, 0xfffffffffffffL

    and-long/2addr v11, v0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    or-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    .line 2994
    .local v11, "mant":D
    const-wide v13, -0x407a0e6a8db69e58L    # -0.010714690733195933

    .line 2995
    .local v13, "est":D
    mul-double v15, v13, v11

    const-wide v17, 0x3fb66c0dc5466945L    # 0.0875862700108075

    add-double v15, v15, v17

    .line 2996
    .end local v13    # "est":D
    .local v15, "est":D
    mul-double v13, v15, v11

    const-wide v17, -0x402c6dbf3a3bd7a4L    # -0.3058015757857271

    add-double v13, v13, v17

    .line 2997
    .end local v15    # "est":D
    .restart local v13    # "est":D
    mul-double v15, v13, v11

    const-wide v17, 0x3fe733323180162bL    # 0.7249995199969751

    add-double v15, v15, v17

    .line 2998
    .end local v13    # "est":D
    .restart local v15    # "est":D
    mul-double v13, v15, v11

    const-wide v17, 0x3fe01ff6c0b8a77fL    # 0.5039018405998233

    add-double v13, v13, v17

    .line 3000
    .end local v15    # "est":D
    .restart local v13    # "est":D
    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->CBRTTWO:[D

    rem-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x2

    aget-wide v15, v2, v6

    mul-double/2addr v13, v15

    .line 3005
    mul-double v15, v9, v9

    mul-double/2addr v15, v9

    div-double v15, v7, v15

    .line 3006
    .local v15, "xs":D
    mul-double v17, v13, v13

    mul-double v17, v17, v13

    sub-double v17, v15, v17

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    mul-double v21, v13, v19

    mul-double v21, v21, v13

    div-double v17, v17, v21

    add-double v13, v13, v17

    .line 3007
    mul-double v17, v13, v13

    mul-double v17, v17, v13

    sub-double v17, v15, v17

    mul-double v21, v13, v19

    mul-double v21, v21, v13

    div-double v17, v17, v21

    add-double v13, v13, v17

    .line 3010
    const-wide/high16 v17, 0x41d0000000000000L    # 1.073741824E9

    mul-double v21, v13, v17

    .line 3011
    .local v21, "temp":D
    add-double v23, v13, v21

    sub-double v23, v23, v21

    .line 3012
    .local v23, "ya":D
    sub-double v25, v13, v23

    .line 3014
    .local v25, "yb":D
    mul-double v27, v23, v23

    .line 3015
    .local v27, "za":D
    mul-double v29, v23, v25

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    mul-double v29, v29, v31

    mul-double v31, v25, v25

    add-double v29, v29, v31

    .line 3016
    .local v29, "zb":D
    mul-double v17, v17, v27

    .line 3017
    .end local v21    # "temp":D
    .local v17, "temp":D
    add-double v21, v27, v17

    sub-double v21, v21, v17

    .line 3018
    .local v21, "temp2":D
    sub-double v31, v27, v21

    add-double v29, v29, v31

    .line 3019
    move-wide/from16 v27, v21

    .line 3021
    mul-double v31, v27, v25

    mul-double v33, v23, v29

    add-double v31, v31, v33

    mul-double v33, v29, v25

    add-double v31, v31, v33

    .line 3022
    .end local v29    # "zb":D
    .local v31, "zb":D
    mul-double v27, v27, v23

    .line 3024
    sub-double v29, v15, v27

    .line 3025
    .local v29, "na":D
    sub-double v33, v29, v15

    move-wide/from16 p0, v0

    .end local v0    # "inbits":J
    .local p0, "inbits":J
    add-double v0, v33, v27

    neg-double v0, v0

    .line 3026
    .local v0, "nb":D
    sub-double v0, v0, v31

    .line 3028
    add-double v33, v29, v0

    mul-double v19, v19, v13

    mul-double v19, v19, v13

    div-double v33, v33, v19

    add-double v13, v13, v33

    .line 3031
    mul-double/2addr v13, v9

    .line 3033
    if-eqz v4, :cond_3

    .line 3034
    const-wide/high16 v19, 0x3ed0000000000000L    # 3.814697265625E-6

    mul-double v13, v13, v19

    .line 3037
    :cond_3
    return-wide v13
.end method

.method public static ceil(D)D
    .locals 4
    .param p0, "x"    # D

    .line 3466
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    .line 3467
    return-wide p0

    .line 3470
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .line 3471
    .local v0, "y":D
    cmpl-double v2, v0, p0

    if-nez v2, :cond_1

    .line 3472
    return-wide v0

    .line 3475
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    .line 3477
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_2

    .line 3478
    mul-double v2, p0, v0

    return-wide v2

    .line 3481
    :cond_2
    return-wide v0
.end method

.method public static copySign(DD)D
    .locals 8
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .line 4058
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 4059
    .local v0, "m":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 4060
    .local v2, "s":J
    xor-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 4061
    return-wide p0

    .line 4063
    :cond_0
    neg-double v4, p0

    return-wide v4
.end method

.method public static copySign(FF)F
    .locals 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .line 4079
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 4080
    .local v0, "m":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 4081
    .local v1, "s":I
    xor-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 4082
    return p0

    .line 4084
    :cond_0
    neg-float v2, p0

    return v2
.end method

.method public static cos(D)D
    .locals 11
    .param p0, "x"    # D

    .line 2389
    const/4 v0, 0x0

    .line 2392
    .local v0, "quadrant":I
    move-wide v1, p0

    .line 2393
    .local v1, "xa":D
    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_0

    .line 2394
    neg-double v1, v1

    .line 2397
    :cond_0
    cmpl-double v3, v1, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    if-nez v3, :cond_4

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, v1, v6

    if-nez v3, :cond_1

    goto :goto_2

    .line 2402
    :cond_1
    const-wide/16 v6, 0x0

    .line 2403
    .local v6, "xb":D
    const-wide v8, 0x414921fb00000000L    # 3294198.0

    cmpl-double v3, v1, v8

    const/4 v8, 0x3

    if-lez v3, :cond_2

    .line 2407
    new-array v3, v8, [D

    .line 2408
    .local v3, "reduceResults":[D
    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->reducePayneHanek(D[D)V

    .line 2409
    const/4 v9, 0x0

    aget-wide v9, v3, v9

    double-to-int v9, v9

    and-int/lit8 v0, v9, 0x3

    .line 2410
    const/4 v8, 0x1

    aget-wide v1, v3, v8

    .line 2411
    const/4 v8, 0x2

    aget-wide v6, v3, v8

    .end local v3    # "reduceResults":[D
    goto :goto_0

    .line 2412
    :cond_2
    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v3, v1, v9

    if-lez v3, :cond_3

    .line 2413
    new-instance v3, Lorg/apache/commons/math3/util/FastMath$CodyWaite;

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;-><init>(D)V

    .line 2414
    .local v3, "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getK()I

    move-result v9

    and-int/lit8 v0, v9, 0x3

    .line 2415
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemA()D

    move-result-wide v1

    .line 2416
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemB()D

    move-result-wide v6

    goto :goto_1

    .line 2412
    .end local v3    # "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    :cond_3
    :goto_0
    nop

    .line 2422
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2432
    return-wide v4

    .line 2430
    :pswitch_0
    invoke-static {v1, v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v3

    return-wide v3

    .line 2428
    :pswitch_1
    invoke-static {v1, v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cosQ(DD)D

    move-result-wide v3

    neg-double v3, v3

    return-wide v3

    .line 2426
    :pswitch_2
    invoke-static {v1, v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v3

    neg-double v3, v3

    return-wide v3

    .line 2424
    :pswitch_3
    invoke-static {v1, v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cosQ(DD)D

    move-result-wide v3

    return-wide v3

    .line 2398
    .end local v6    # "xb":D
    :cond_4
    :goto_2
    return-wide v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static cosQ(DD)D
    .locals 10
    .param p0, "xa"    # D
    .param p2, "xb"    # D

    .line 1937
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 1938
    .local v0, "pi2a":D
    const-wide v2, 0x3c91a62633145c07L    # 6.123233995736766E-17

    .line 1940
    .local v2, "pi2b":D
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v6, v4, p0

    .line 1941
    .local v6, "a":D
    sub-double v4, v6, v4

    add-double/2addr v4, p0

    neg-double v4, v4

    .line 1942
    .local v4, "b":D
    const-wide v8, 0x3c91a62633145c07L    # 6.123233995736766E-17

    sub-double/2addr v8, p2

    add-double/2addr v4, v8

    .line 1944
    invoke-static {v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v8

    return-wide v8
.end method

.method public static cosh(D)D
    .locals 26
    .param p0, "x"    # D

    .line 402
    move-wide/from16 v0, p0

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    .line 403
    return-wide v0

    .line 411
    :cond_0
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-lez v2, :cond_2

    .line 412
    sget-wide v5, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    cmpl-double v2, v0, v5

    if-ltz v2, :cond_1

    .line 414
    mul-double v5, v0, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    .line 415
    .local v5, "t":D
    mul-double/2addr v3, v5

    mul-double/2addr v3, v5

    return-wide v3

    .line 417
    .end local v5    # "t":D
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    return-wide v5

    .line 419
    :cond_2
    const-wide/high16 v5, -0x3fcc000000000000L    # -20.0

    cmpg-double v2, v0, v5

    if-gez v2, :cond_4

    .line 420
    sget-wide v5, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    neg-double v5, v5

    cmpg-double v2, v0, v5

    if-gtz v2, :cond_3

    .line 422
    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    .line 423
    .restart local v5    # "t":D
    mul-double/2addr v3, v5

    mul-double/2addr v3, v5

    return-wide v3

    .line 425
    .end local v5    # "t":D
    :cond_3
    neg-double v5, v0

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    return-wide v5

    .line 429
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [D

    .line 430
    .local v2, "hiPrec":[D
    const-wide/16 v5, 0x0

    cmpg-double v7, v0, v5

    if-gez v7, :cond_5

    .line 431
    neg-double v0, v0

    .line 433
    .end local p0    # "x":D
    .local v0, "x":D
    :cond_5
    invoke-static {v0, v1, v5, v6, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    .line 435
    const/4 v5, 0x0

    aget-wide v6, v2, v5

    const/4 v8, 0x1

    aget-wide v9, v2, v8

    add-double/2addr v6, v9

    .line 436
    .local v6, "ya":D
    aget-wide v9, v2, v5

    sub-double v9, v6, v9

    aget-wide v11, v2, v8

    sub-double/2addr v9, v11

    neg-double v8, v9

    .line 438
    .local v8, "yb":D
    const-wide/high16 v10, 0x41d0000000000000L    # 1.073741824E9

    mul-double v12, v6, v10

    .line 439
    .local v12, "temp":D
    add-double v14, v6, v12

    sub-double/2addr v14, v12

    .line 440
    .local v14, "yaa":D
    sub-double v16, v6, v14

    .line 443
    .local v16, "yab":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v20, v18, v6

    .line 444
    .local v20, "recip":D
    mul-double v10, v10, v20

    .line 445
    .end local v12    # "temp":D
    .local v10, "temp":D
    add-double v12, v20, v10

    sub-double/2addr v12, v10

    .line 446
    .local v12, "recipa":D
    sub-double v22, v20, v12

    .line 449
    .local v22, "recipb":D
    mul-double v24, v14, v12

    sub-double v18, v18, v24

    mul-double v24, v14, v22

    sub-double v18, v18, v24

    mul-double v24, v16, v12

    sub-double v18, v18, v24

    mul-double v24, v16, v22

    sub-double v18, v18, v24

    mul-double v18, v18, v20

    add-double v22, v22, v18

    .line 451
    move-wide/from16 v18, v3

    neg-double v3, v8

    mul-double v3, v3, v20

    mul-double v3, v3, v20

    add-double v22, v22, v3

    .line 454
    add-double v3, v6, v12

    .line 455
    .end local v10    # "temp":D
    .local v3, "temp":D
    sub-double v10, v3, v6

    sub-double/2addr v10, v12

    neg-double v10, v10

    add-double/2addr v8, v10

    .line 456
    move-wide v5, v3

    .line 457
    .end local v6    # "ya":D
    .local v5, "ya":D
    add-double v3, v5, v22

    .line 458
    sub-double v10, v3, v5

    sub-double v10, v10, v22

    neg-double v10, v10

    add-double/2addr v8, v10

    .line 459
    move-wide v5, v3

    .line 461
    add-double v10, v5, v8

    .line 462
    .local v10, "result":D
    mul-double v10, v10, v18

    .line 463
    return-wide v10
.end method

.method public static decrementExact(I)I
    .locals 4
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3785
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 3789
    add-int/lit8 v0, p0, -0x1

    return v0

    .line 3786
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static decrementExact(J)J
    .locals 4
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3801
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 3805
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0

    .line 3802
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static doubleHighPart(D)D
    .locals 4
    .param p0, "d"    # D

    .line 380
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    neg-double v0, v0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 381
    return-wide p0

    .line 383
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 384
    .local v0, "xl":J
    const-wide/32 v2, -0x40000000

    and-long/2addr v0, v2

    .line 385
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static exp(D)D
    .locals 3
    .param p0, "x"    # D

    .line 864
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static exp(DD[D)D
    .locals 33
    .param p0, "x"    # D
    .param p2, "extra"    # D
    .param p4, "hiPrec"    # [D

    .line 877
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    double-to-int v5, v0

    .line 883
    .local v5, "intVal":I
    const-wide/16 v6, 0x0

    cmpg-double v8, v0, v6

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-gez v8, :cond_6

    .line 887
    const-wide v13, -0x3f78b00000000000L    # -746.0

    cmpg-double v8, v0, v13

    if-gez v8, :cond_1

    .line 888
    if-eqz v4, :cond_0

    .line 889
    aput-wide v6, v4, v12

    .line 890
    aput-wide v6, v4, v11

    .line 892
    :cond_0
    return-wide v6

    .line 895
    :cond_1
    const/16 v8, -0x2c5

    if-ge v5, v8, :cond_3

    .line 897
    const-wide v6, 0x4044188000000000L    # 40.19140625

    add-double/2addr v6, v0

    invoke-static {v6, v7, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    move-result-wide v6

    const-wide v8, 0x438fa553a68e6b40L    # 2.8504009514401178E17

    div-double/2addr v6, v8

    .line 898
    .local v6, "result":D
    if-eqz v4, :cond_2

    .line 899
    aget-wide v13, v4, v12

    div-double/2addr v13, v8

    aput-wide v13, v4, v12

    .line 900
    aget-wide v12, v4, v11

    div-double/2addr v12, v8

    aput-wide v12, v4, v11

    .line 902
    :cond_2
    return-wide v6

    .line 905
    .end local v6    # "result":D
    :cond_3
    if-ne v5, v8, :cond_5

    .line 907
    const-wide v6, 0x3ff7e80000000000L    # 1.494140625

    add-double/2addr v6, v0

    invoke-static {v6, v7, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    move-result-wide v6

    const-wide v8, 0x4011d270274c83abL    # 4.455505956692757

    div-double/2addr v6, v8

    .line 908
    .restart local v6    # "result":D
    if-eqz v4, :cond_4

    .line 909
    aget-wide v13, v4, v12

    div-double/2addr v13, v8

    aput-wide v13, v4, v12

    .line 910
    aget-wide v12, v4, v11

    div-double/2addr v12, v8

    aput-wide v12, v4, v11

    .line 912
    :cond_4
    return-wide v6

    .line 915
    .end local v6    # "result":D
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 918
    :cond_6
    const/16 v8, 0x2c5

    if-le v5, v8, :cond_8

    .line 919
    if-eqz v4, :cond_7

    .line 920
    aput-wide v9, v4, v12

    .line 921
    aput-wide v6, v4, v11

    .line 923
    :cond_7
    return-wide v9

    .line 928
    :cond_8
    :goto_0
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->access$000()[D

    move-result-object v8

    add-int/lit16 v13, v5, 0x2ee

    aget-wide v13, v8, v13

    .line 929
    .local v13, "intPartA":D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->access$100()[D

    move-result-object v8

    add-int/lit16 v15, v5, 0x2ee

    aget-wide v15, v8, v15

    .line 935
    .local v15, "intPartB":D
    move-wide/from16 v17, v6

    int-to-double v6, v5

    sub-double v6, v0, v6

    const-wide/high16 v19, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v19

    double-to-int v6, v6

    .line 936
    .local v6, "intFrac":I
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$200()[D

    move-result-object v7

    aget-wide v7, v7, v6

    .line 937
    .local v7, "fracPartA":D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$300()[D

    move-result-object v21

    aget-wide v21, v21, v6

    .line 943
    .local v21, "fracPartB":D
    move-wide/from16 v23, v9

    int-to-double v9, v5

    move/from16 v25, v11

    move/from16 v26, v12

    int-to-double v11, v6

    div-double v11, v11, v19

    add-double/2addr v9, v11

    sub-double v9, v0, v9

    .line 952
    .local v9, "epsilon":D
    const-wide v11, 0x3fa5580030b20837L    # 0.04168701738764507

    .line 953
    .local v11, "z":D
    mul-double v19, v11, v9

    const-wide v27, 0x3fc55555329ee223L    # 0.1666666505023083

    add-double v19, v19, v27

    .line 954
    .end local v11    # "z":D
    .local v19, "z":D
    mul-double v11, v19, v9

    const-wide v27, 0x3fe0000000009631L    # 0.5000000000042687

    add-double v11, v11, v27

    .line 955
    .end local v19    # "z":D
    .restart local v11    # "z":D
    mul-double v19, v11, v9

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    add-double v19, v19, v27

    .line 956
    .end local v11    # "z":D
    .restart local v19    # "z":D
    mul-double v11, v19, v9

    const-wide v27, -0x4418bd44dd9ed4efL    # -3.940510424527919E-20

    add-double v11, v11, v27

    .line 963
    .end local v19    # "z":D
    .restart local v11    # "z":D
    mul-double v19, v13, v7

    .line 964
    .local v19, "tempA":D
    mul-double v27, v13, v21

    mul-double v29, v15, v7

    add-double v27, v27, v29

    mul-double v29, v15, v21

    add-double v27, v27, v29

    .line 970
    .local v27, "tempB":D
    add-double v29, v27, v19

    .line 974
    .local v29, "tempC":D
    cmpl-double v31, v29, v23

    if-nez v31, :cond_9

    .line 975
    return-wide v23

    .line 979
    :cond_9
    cmpl-double v17, v2, v17

    if-eqz v17, :cond_a

    .line 980
    mul-double v17, v29, v2

    mul-double v17, v17, v11

    mul-double v23, v29, v2

    add-double v17, v17, v23

    mul-double v23, v29, v11

    add-double v17, v17, v23

    add-double v17, v17, v27

    add-double v17, v17, v19

    .local v17, "result":D
    goto :goto_1

    .line 982
    .end local v17    # "result":D
    :cond_a
    mul-double v17, v29, v11

    add-double v17, v17, v27

    add-double v17, v17, v19

    .line 985
    .restart local v17    # "result":D
    :goto_1
    if-eqz v4, :cond_b

    .line 987
    aput-wide v19, v4, v26

    .line 988
    mul-double v23, v29, v2

    mul-double v23, v23, v11

    mul-double v31, v29, v2

    add-double v23, v23, v31

    mul-double v31, v29, v11

    add-double v23, v23, v31

    add-double v23, v23, v27

    aput-wide v23, v4, v25

    .line 991
    :cond_b
    return-wide v17
.end method

.method public static expm1(D)D
    .locals 2
    .param p0, "x"    # D

    .line 999
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->expm1(D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static expm1(D[D)D
    .locals 37
    .param p0, "x"    # D
    .param p2, "hiPrecOut"    # [D

    .line 1008
    move-wide/from16 v0, p0

    cmpl-double v2, v0, v0

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 1012
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpg-double v6, v0, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-lez v6, :cond_5

    cmpl-double v6, v0, v9

    if-ltz v6, :cond_1

    move-wide/from16 v27, v9

    const/16 v21, 0x0

    const/16 v24, 0x1

    goto/16 :goto_1

    .line 1030
    :cond_1
    const/4 v4, 0x0

    .line 1032
    .local v4, "negative":Z
    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 1033
    neg-double v0, v0

    .line 1034
    .end local p0    # "x":D
    .local v0, "x":D
    const/4 v4, 0x1

    .line 1038
    :cond_2
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double v5, v0, v2

    double-to-int v5, v5

    .line 1039
    .local v5, "intFrac":I
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$200()[D

    move-result-object v6

    aget-wide v11, v6, v5

    sub-double/2addr v11, v9

    .line 1040
    .local v11, "tempA":D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$300()[D

    move-result-object v6

    aget-wide v13, v6, v5

    .line 1042
    .local v13, "tempB":D
    add-double v15, v11, v13

    .line 1043
    .local v15, "temp":D
    sub-double v17, v15, v11

    move-wide/from16 p0, v2

    sub-double v2, v17, v13

    neg-double v2, v2

    .line 1044
    .end local v13    # "tempB":D
    .local v2, "tempB":D
    move-wide v11, v15

    .line 1046
    const-wide/high16 v13, 0x41d0000000000000L    # 1.073741824E9

    mul-double v15, v11, v13

    .line 1047
    add-double v17, v11, v15

    sub-double v17, v17, v15

    .line 1048
    .local v17, "baseA":D
    sub-double v19, v11, v17

    add-double v19, v2, v19

    .line 1050
    .local v19, "baseB":D
    const/4 v6, 0x1

    const/16 v21, 0x0

    int-to-double v7, v5

    div-double v7, v7, p0

    sub-double v2, v0, v7

    .line 1055
    .end local v5    # "intFrac":I
    .end local v11    # "tempA":D
    .end local v15    # "temp":D
    .local v2, "epsilon":D
    const-wide v7, 0x3f8112dba54d5643L    # 0.008336750013465571

    .line 1056
    .local v7, "zb":D
    mul-double v11, v7, v2

    const-wide v15, 0x3fa555553d639997L    # 0.041666663879186654

    add-double/2addr v11, v15

    .line 1057
    .end local v7    # "zb":D
    .local v11, "zb":D
    mul-double v7, v11, v2

    const-wide v15, 0x3fc555555555c421L    # 0.16666666666745392

    add-double/2addr v7, v15

    .line 1058
    .end local v11    # "zb":D
    .restart local v7    # "zb":D
    mul-double v11, v7, v2

    const-wide v15, 0x3fdfffffffffffffL    # 0.49999999999999994

    add-double/2addr v11, v15

    .line 1059
    .end local v7    # "zb":D
    .restart local v11    # "zb":D
    mul-double/2addr v11, v2

    .line 1060
    mul-double/2addr v11, v2

    .line 1062
    move-wide v7, v2

    .line 1063
    .local v7, "za":D
    add-double v15, v7, v11

    .line 1064
    .restart local v15    # "temp":D
    sub-double v22, v15, v7

    move/from16 v24, v6

    move-wide/from16 p0, v7

    .end local v7    # "za":D
    .local p0, "za":D
    sub-double v6, v22, v11

    neg-double v5, v6

    .line 1065
    .end local v11    # "zb":D
    .local v5, "zb":D
    move-wide v7, v15

    .line 1067
    .end local p0    # "za":D
    .restart local v7    # "za":D
    mul-double v11, v7, v13

    .line 1068
    .end local v15    # "temp":D
    .local v11, "temp":D
    add-double v15, v7, v11

    sub-double/2addr v15, v11

    .line 1069
    .end local v11    # "temp":D
    .restart local v15    # "temp":D
    sub-double v11, v7, v15

    add-double/2addr v5, v11

    .line 1070
    move-wide v7, v15

    .line 1073
    mul-double v11, v7, v17

    .line 1075
    .local v11, "ya":D
    mul-double v22, v7, v19

    add-double v22, v11, v22

    .line 1076
    .end local v15    # "temp":D
    .local v22, "temp":D
    sub-double v15, v22, v11

    mul-double v25, v7, v19

    move-wide/from16 v27, v9

    sub-double v9, v15, v25

    neg-double v9, v9

    .line 1077
    .local v9, "yb":D
    move-wide/from16 v11, v22

    .line 1079
    mul-double v15, v5, v17

    add-double/2addr v15, v11

    .line 1080
    .end local v22    # "temp":D
    .restart local v15    # "temp":D
    sub-double v22, v15, v11

    mul-double v25, v5, v17

    move-wide/from16 p0, v13

    sub-double v13, v22, v25

    neg-double v13, v13

    add-double/2addr v9, v13

    .line 1081
    move-wide v11, v15

    .line 1083
    mul-double v13, v5, v19

    add-double/2addr v13, v11

    .line 1084
    .end local v15    # "temp":D
    .local v13, "temp":D
    sub-double v15, v13, v11

    mul-double v22, v5, v19

    move-wide/from16 v25, v0

    .end local v0    # "x":D
    .local v25, "x":D
    sub-double v0, v15, v22

    neg-double v0, v0

    add-double/2addr v9, v0

    .line 1085
    move-wide v0, v13

    .line 1089
    .end local v11    # "ya":D
    .local v0, "ya":D
    add-double v11, v0, v17

    .line 1090
    .end local v13    # "temp":D
    .local v11, "temp":D
    sub-double v13, v11, v17

    sub-double/2addr v13, v0

    neg-double v13, v13

    add-double/2addr v9, v13

    .line 1091
    move-wide v0, v11

    .line 1093
    add-double v11, v0, v7

    .line 1095
    sub-double v13, v11, v0

    sub-double/2addr v13, v7

    neg-double v13, v13

    add-double/2addr v9, v13

    .line 1096
    move-wide v0, v11

    .line 1098
    add-double v11, v0, v19

    .line 1100
    sub-double v13, v11, v0

    sub-double v13, v13, v19

    neg-double v13, v13

    add-double/2addr v9, v13

    .line 1101
    move-wide v0, v11

    .line 1103
    add-double v11, v0, v5

    .line 1105
    sub-double v13, v11, v0

    sub-double/2addr v13, v5

    neg-double v13, v13

    add-double/2addr v9, v13

    .line 1106
    move-wide v0, v11

    .line 1108
    if-eqz v4, :cond_3

    .line 1110
    add-double v13, v0, v27

    .line 1111
    .local v13, "denom":D
    div-double v15, v27, v13

    .line 1112
    .local v15, "denomr":D
    sub-double v22, v13, v27

    move-wide/from16 v29, v2

    .end local v2    # "epsilon":D
    .local v29, "epsilon":D
    sub-double v2, v22, v0

    neg-double v2, v2

    add-double/2addr v2, v9

    .line 1113
    .local v2, "denomb":D
    mul-double v22, v0, v15

    .line 1114
    .local v22, "ratio":D
    mul-double v11, v22, p0

    .line 1115
    add-double v27, v22, v11

    move-wide/from16 v31, v2

    .end local v2    # "denomb":D
    .local v31, "denomb":D
    sub-double v2, v27, v11

    .line 1116
    .local v2, "ra":D
    sub-double v27, v22, v2

    .line 1118
    .local v27, "rb":D
    mul-double v11, v13, p0

    .line 1119
    add-double v33, v13, v11

    sub-double v7, v33, v11

    .line 1120
    sub-double v5, v13, v7

    .line 1122
    mul-double v33, v7, v2

    sub-double v33, v0, v33

    mul-double v35, v7, v27

    sub-double v33, v33, v35

    mul-double v35, v5, v2

    sub-double v33, v33, v35

    mul-double v35, v5, v27

    sub-double v33, v33, v35

    mul-double v33, v33, v15

    add-double v27, v27, v33

    .line 1133
    mul-double v33, v9, v15

    add-double v27, v27, v33

    .line 1134
    move/from16 p0, v4

    move-wide/from16 v33, v5

    .end local v4    # "negative":Z
    .end local v5    # "zb":D
    .local v33, "zb":D
    .local p0, "negative":Z
    neg-double v4, v0

    mul-double v4, v4, v31

    mul-double/2addr v4, v15

    mul-double/2addr v4, v15

    add-double v4, v27, v4

    .line 1137
    .end local v27    # "rb":D
    .local v4, "rb":D
    neg-double v0, v2

    .line 1138
    neg-double v9, v4

    move-wide/from16 v5, v33

    goto :goto_0

    .line 1108
    .end local v13    # "denom":D
    .end local v15    # "denomr":D
    .end local v22    # "ratio":D
    .end local v29    # "epsilon":D
    .end local v31    # "denomb":D
    .end local v33    # "zb":D
    .end local p0    # "negative":Z
    .local v2, "epsilon":D
    .local v4, "negative":Z
    .restart local v5    # "zb":D
    :cond_3
    move-wide/from16 v29, v2

    move/from16 p0, v4

    .line 1141
    .end local v2    # "epsilon":D
    .end local v4    # "negative":Z
    .restart local v29    # "epsilon":D
    .restart local p0    # "negative":Z
    :goto_0
    if-eqz p2, :cond_4

    .line 1142
    aput-wide v0, p2, v21

    .line 1143
    aput-wide v9, p2, v24

    .line 1146
    :cond_4
    add-double v2, v0, v9

    return-wide v2

    .line 1012
    .end local v0    # "ya":D
    .end local v5    # "zb":D
    .end local v7    # "za":D
    .end local v9    # "yb":D
    .end local v11    # "temp":D
    .end local v17    # "baseA":D
    .end local v19    # "baseB":D
    .end local v25    # "x":D
    .end local v29    # "epsilon":D
    .local p0, "x":D
    :cond_5
    move-wide/from16 v27, v9

    const/16 v21, 0x0

    const/16 v24, 0x1

    .line 1015
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [D

    .line 1016
    .local v6, "hiPrec":[D
    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    .line 1017
    cmpl-double v2, v0, v2

    if-lez v2, :cond_6

    .line 1018
    aget-wide v2, v6, v21

    add-double/2addr v2, v4

    aget-wide v4, v6, v24

    add-double/2addr v2, v4

    return-wide v2

    .line 1020
    :cond_6
    aget-wide v2, v6, v21

    add-double/2addr v2, v4

    .line 1021
    .local v2, "ra":D
    add-double v9, v2, v27

    aget-wide v4, v6, v21

    sub-double/2addr v9, v4

    neg-double v4, v9

    .line 1022
    .local v4, "rb":D
    aget-wide v7, v6, v24

    add-double/2addr v4, v7

    .line 1023
    add-double v7, v2, v4

    return-wide v7

    .line 1009
    .end local v2    # "ra":D
    .end local v4    # "rb":D
    .end local v6    # "hiPrec":[D
    :cond_7
    :goto_2
    return-wide v0
.end method

.method public static floor(D)D
    .locals 4
    .param p0, "x"    # D

    .line 3439
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    .line 3440
    return-wide p0

    .line 3443
    :cond_0
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    cmpl-double v0, p0, v0

    if-gez v0, :cond_4

    const-wide/high16 v0, -0x3cd0000000000000L    # -4.503599627370496E15

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 3447
    :cond_1
    double-to-long v0, p0

    .line 3448
    .local v0, "y":J
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_2

    long-to-double v2, v0

    cmpl-double v2, v2, p0

    if-eqz v2, :cond_2

    .line 3449
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 3452
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 3453
    long-to-double v2, v0

    mul-double/2addr v2, p0

    return-wide v2

    .line 3456
    :cond_3
    long-to-double v2, v0

    return-wide v2

    .line 3444
    .end local v0    # "y":J
    :cond_4
    :goto_0
    return-wide p0
.end method

.method public static floorDiv(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3940
    if-eqz p1, :cond_2

    .line 3944
    rem-int v0, p0, p1

    .line 3945
    .local v0, "m":I
    xor-int v1, p0, p1

    if-gez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3950
    :cond_0
    div-int v1, p0, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 3947
    :cond_1
    :goto_0
    div-int v1, p0, p1

    return v1

    .line 3941
    .end local v0    # "m":I
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static floorDiv(JJ)J
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3970
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 3974
    rem-long v2, p0, p2

    .line 3975
    .local v2, "m":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3980
    :cond_0
    div-long v0, p0, p2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    return-wide v0

    .line 3977
    :cond_1
    :goto_0
    div-long v0, p0, p2

    return-wide v0

    .line 3971
    .end local v2    # "m":J
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static floorMod(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 4000
    if-eqz p1, :cond_2

    .line 4004
    rem-int v0, p0, p1

    .line 4005
    .local v0, "m":I
    xor-int v1, p0, p1

    if-gez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4010
    :cond_0
    add-int v1, p1, v0

    return v1

    .line 4007
    :cond_1
    :goto_0
    return v0

    .line 4001
    .end local v0    # "m":I
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static floorMod(JJ)J
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 4030
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 4034
    rem-long v2, p0, p2

    .line 4035
    .local v2, "m":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4040
    :cond_0
    add-long v0, p2, v2

    return-wide v0

    .line 4037
    :cond_1
    :goto_0
    return-wide v2

    .line 4031
    .end local v2    # "m":J
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getExponent(D)I
    .locals 4
    .param p0, "d"    # D

    .line 4098
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x34

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x3ff

    return v0
.end method

.method public static getExponent(F)I
    .locals 1
    .param p0, "f"    # F

    .line 4112
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x17

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static hypot(DD)D
    .locals 11
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 3674
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3676
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3680
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v0

    .line 3681
    .local v0, "expX":I
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v1

    .line 3682
    .local v1, "expY":I
    add-int/lit8 v2, v1, 0x1b

    if-le v0, v2, :cond_2

    .line 3684
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    return-wide v2

    .line 3685
    :cond_2
    add-int/lit8 v2, v0, 0x1b

    if-le v1, v2, :cond_3

    .line 3687
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    return-wide v2

    .line 3691
    :cond_3
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 3694
    .local v2, "middleExp":I
    neg-int v3, v2

    invoke-static {p0, p1, v3}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v3

    .line 3695
    .local v3, "scaledX":D
    neg-int v5, v2

    invoke-static {p2, p3, v5}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v5

    .line 3698
    .local v5, "scaledY":D
    mul-double v7, v3, v3

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 3701
    .local v7, "scaledH":D
    invoke-static {v7, v8, v2}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v9

    return-wide v9

    .line 3677
    .end local v0    # "expX":I
    .end local v1    # "expY":I
    .end local v2    # "middleExp":I
    .end local v3    # "scaledX":D
    .end local v5    # "scaledY":D
    .end local v7    # "scaledH":D
    :cond_4
    :goto_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3675
    :cond_5
    :goto_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public static incrementExact(I)I
    .locals 4
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3753
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    .line 3757
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 3754
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static incrementExact(J)J
    .locals 4
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3769
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 3773
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0

    .line 3770
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static log(D)D
    .locals 2
    .param p0, "x"    # D

    .line 1156
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->log(D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static log(DD)D
    .locals 4
    .param p0, "base"    # D
    .param p2, "x"    # D

    .line 1464
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static log(D[D)D
    .locals 41
    .param p0, "x"    # D
    .param p2, "hiPrec"    # [D

    .line 1166
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v2, :cond_0

    .line 1167
    return-wide v3

    .line 1169
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    .line 1172
    .local v5, "bits":J
    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    const/4 v7, 0x0

    if-nez v2, :cond_1

    cmpl-double v2, p0, p0

    if-eqz v2, :cond_3

    :cond_1
    cmpl-double v2, p0, v0

    if-eqz v2, :cond_3

    .line 1173
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p2, :cond_2

    .line 1174
    aput-wide v0, p2, v7

    .line 1177
    :cond_2
    return-wide v0

    .line 1181
    :cond_3
    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v11

    if-nez v2, :cond_5

    .line 1182
    if-eqz p2, :cond_4

    .line 1183
    aput-wide v11, p2, v7

    .line 1186
    :cond_4
    return-wide v11

    .line 1190
    :cond_5
    const/16 v2, 0x34

    shr-long v11, v5, v2

    long-to-int v2, v11

    add-int/lit16 v2, v2, -0x3ff

    .line 1192
    .local v2, "exp":I
    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v11, v5

    cmp-long v8, v11, v9

    const/4 v11, 0x1

    if-nez v8, :cond_8

    .line 1194
    cmpl-double v0, p0, v0

    if-nez v0, :cond_7

    .line 1196
    if-eqz p2, :cond_6

    .line 1197
    aput-wide v3, p2, v7

    .line 1200
    :cond_6
    return-wide v3

    .line 1204
    :cond_7
    shl-long v0, v5, v11

    move-wide v5, v0

    .line 1205
    :goto_0
    const-wide/high16 v0, 0x10000000000000L

    and-long/2addr v0, v5

    cmp-long v0, v0, v9

    if-nez v0, :cond_8

    .line 1206
    add-int/lit8 v2, v2, -0x1

    .line 1207
    shl-long/2addr v5, v11

    goto :goto_0

    .line 1212
    :cond_8
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v3, -0x1

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    if-eq v2, v3, :cond_a

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    move/from16 v18, v7

    goto/16 :goto_3

    :cond_a
    :goto_1
    const-wide v3, 0x3ff028f5c28f5c29L    # 1.01

    cmpg-double v3, p0, v3

    if-gez v3, :cond_c

    const-wide v3, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v3, p0, v3

    if-lez v3, :cond_c

    if-nez p2, :cond_c

    .line 1217
    sub-double v3, p0, v0

    .line 1218
    .local v3, "xa":D
    sub-double v12, v3, p0

    add-double/2addr v12, v0

    .line 1219
    .local v12, "xb":D
    mul-double v0, v3, v8

    .line 1220
    .local v0, "tmp":D
    add-double v14, v3, v0

    sub-double/2addr v14, v0

    .line 1221
    .local v14, "aa":D
    sub-double v16, v3, v14

    .line 1222
    .local v16, "ab":D
    move-wide v3, v14

    .line 1223
    move-wide/from16 v12, v16

    .line 1225
    sget-object v10, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    move/from16 v18, v7

    sget-object v7, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    array-length v7, v7

    sub-int/2addr v7, v11

    aget-object v7, v10, v7

    .line 1226
    .local v7, "lnCoef_last":[D
    aget-wide v19, v7, v18

    .line 1227
    .local v19, "ya":D
    aget-wide v21, v7, v11

    .line 1229
    .local v21, "yb":D
    sget-object v10, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    array-length v10, v10

    add-int/lit8 v10, v10, -0x2

    .local v10, "i":I
    :goto_2
    if-ltz v10, :cond_b

    .line 1231
    mul-double v14, v19, v3

    .line 1232
    mul-double v23, v19, v12

    mul-double v25, v21, v3

    add-double v23, v23, v25

    mul-double v25, v21, v12

    add-double v23, v23, v25

    .line 1234
    .end local v16    # "ab":D
    .local v23, "ab":D
    mul-double v0, v14, v8

    .line 1235
    add-double v16, v14, v0

    sub-double v16, v16, v0

    .line 1236
    .end local v19    # "ya":D
    .local v16, "ya":D
    sub-double v19, v14, v16

    add-double v19, v19, v23

    .line 1239
    .end local v21    # "yb":D
    .local v19, "yb":D
    sget-object v21, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    aget-object v21, v21, v10

    .line 1240
    .local v21, "lnCoef_i":[D
    aget-wide v25, v21, v18

    add-double v14, v16, v25

    .line 1241
    aget-wide v25, v21, v11

    add-double v22, v19, v25

    .line 1243
    .end local v23    # "ab":D
    .local v22, "ab":D
    mul-double v0, v14, v8

    .line 1244
    add-double v24, v14, v0

    sub-double v16, v24, v0

    .line 1245
    sub-double v24, v14, v16

    add-double v19, v24, v22

    .line 1229
    .end local v21    # "lnCoef_i":[D
    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v39, v19

    move-wide/from16 v19, v16

    move-wide/from16 v16, v22

    move-wide/from16 v21, v39

    goto :goto_2

    .line 1249
    .end local v10    # "i":I
    .end local v22    # "ab":D
    .local v16, "ab":D
    .local v19, "ya":D
    .local v21, "yb":D
    :cond_b
    mul-double v10, v19, v3

    .line 1250
    .end local v14    # "aa":D
    .local v10, "aa":D
    mul-double v14, v19, v12

    mul-double v23, v21, v3

    add-double v14, v14, v23

    mul-double v23, v21, v12

    add-double v14, v14, v23

    .line 1252
    .end local v16    # "ab":D
    .local v14, "ab":D
    mul-double/2addr v8, v10

    .line 1253
    .end local v0    # "tmp":D
    .local v8, "tmp":D
    add-double v0, v10, v8

    sub-double/2addr v0, v8

    .line 1254
    .end local v19    # "ya":D
    .local v0, "ya":D
    sub-double v16, v10, v0

    add-double v16, v16, v14

    .line 1256
    .end local v21    # "yb":D
    .local v16, "yb":D
    add-double v18, v0, v16

    return-wide v18

    .line 1212
    .end local v0    # "ya":D
    .end local v3    # "xa":D
    .end local v7    # "lnCoef_last":[D
    .end local v8    # "tmp":D
    .end local v10    # "aa":D
    .end local v12    # "xb":D
    .end local v14    # "ab":D
    .end local v16    # "yb":D
    :cond_c
    move/from16 v18, v7

    .line 1260
    :goto_3
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$lnMant;->access$400()[[D

    move-result-object v3

    const-wide v12, 0xffc0000000000L

    and-long v14, v5, v12

    const/16 v4, 0x2a

    shr-long/2addr v14, v4

    long-to-int v4, v14

    aget-object v3, v3, v4

    .line 1271
    .local v3, "lnm":[D
    const-wide v14, 0x3ffffffffffL

    move-wide/from16 v16, v0

    and-long v0, v5, v14

    long-to-double v0, v0

    move-wide/from16 v19, v8

    and-long v8, v5, v12

    long-to-double v7, v8

    const-wide/high16 v9, 0x4330000000000000L    # 4.503599627370496E15

    add-double/2addr v7, v9

    div-double/2addr v0, v7

    .line 1273
    .local v0, "epsilon":D
    const-wide/16 v7, 0x0

    .line 1274
    .local v7, "lnza":D
    const-wide/16 v21, 0x0

    .line 1276
    .local v21, "lnzb":D
    if-eqz p2, :cond_e

    .line 1278
    mul-double v16, v0, v19

    .line 1279
    .local v16, "tmp":D
    add-double v23, v0, v16

    sub-double v23, v23, v16

    .line 1280
    .local v23, "aa":D
    sub-double v25, v0, v23

    .line 1281
    .local v25, "ab":D
    move-wide/from16 v27, v23

    .line 1282
    .local v27, "xa":D
    move-wide/from16 v29, v25

    .line 1285
    .local v29, "xb":D
    and-long/2addr v14, v5

    long-to-double v14, v14

    .line 1286
    .local v14, "numer":D
    and-long/2addr v12, v5

    long-to-double v12, v12

    add-double/2addr v12, v9

    .line 1287
    .local v12, "denom":D
    mul-double v9, v27, v12

    sub-double v9, v14, v9

    mul-double v31, v29, v12

    sub-double v9, v9, v31

    .line 1288
    .end local v23    # "aa":D
    .local v9, "aa":D
    div-double v23, v9, v12

    add-double v29, v29, v23

    .line 1291
    sget-object v4, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    move/from16 v23, v11

    sget-object v11, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v4, v4, v11

    .line 1292
    .local v4, "lnCoef_last":[D
    aget-wide v31, v4, v18

    .line 1293
    .local v31, "ya":D
    aget-wide v33, v4, v23

    .line 1295
    .local v33, "yb":D
    sget-object v11, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    .local v11, "i":I
    :goto_4
    if-ltz v11, :cond_d

    .line 1297
    mul-double v9, v31, v27

    .line 1298
    mul-double v35, v31, v29

    mul-double v37, v33, v27

    add-double v35, v35, v37

    mul-double v37, v33, v29

    add-double v35, v35, v37

    .line 1300
    .end local v25    # "ab":D
    .local v35, "ab":D
    mul-double v16, v9, v19

    .line 1301
    add-double v24, v9, v16

    sub-double v24, v24, v16

    .line 1302
    .end local v31    # "ya":D
    .local v24, "ya":D
    sub-double v31, v9, v24

    add-double v31, v31, v35

    .line 1305
    .end local v33    # "yb":D
    .local v31, "yb":D
    sget-object v26, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    aget-object v26, v26, v11

    .line 1306
    .local v26, "lnCoef_i":[D
    aget-wide v33, v26, v18

    add-double v9, v24, v33

    .line 1307
    aget-wide v33, v26, v23

    add-double v33, v31, v33

    .line 1309
    .end local v35    # "ab":D
    .local v33, "ab":D
    mul-double v16, v9, v19

    .line 1310
    add-double v35, v9, v16

    sub-double v24, v35, v16

    .line 1311
    sub-double v35, v9, v24

    add-double v31, v35, v33

    .line 1295
    .end local v26    # "lnCoef_i":[D
    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v39, v31

    move-wide/from16 v31, v24

    move-wide/from16 v25, v33

    move-wide/from16 v33, v39

    goto :goto_4

    .line 1315
    .end local v11    # "i":I
    .end local v24    # "ya":D
    .restart local v25    # "ab":D
    .local v31, "ya":D
    .local v33, "yb":D
    :cond_d
    mul-double v9, v31, v27

    .line 1316
    mul-double v19, v31, v29

    mul-double v35, v33, v27

    add-double v19, v19, v35

    mul-double v35, v33, v29

    add-double v19, v19, v35

    .line 1324
    .end local v25    # "ab":D
    .local v19, "ab":D
    add-double v7, v9, v19

    .line 1325
    sub-double v24, v7, v9

    move-wide/from16 v35, v0

    .end local v0    # "epsilon":D
    .local v35, "epsilon":D
    sub-double v0, v24, v19

    neg-double v0, v0

    .line 1326
    .end local v4    # "lnCoef_last":[D
    .end local v9    # "aa":D
    .end local v12    # "denom":D
    .end local v14    # "numer":D
    .end local v16    # "tmp":D
    .end local v19    # "ab":D
    .end local v21    # "lnzb":D
    .end local v27    # "xa":D
    .end local v29    # "xb":D
    .end local v31    # "ya":D
    .end local v33    # "yb":D
    .local v0, "lnzb":D
    move-wide/from16 v21, v0

    goto :goto_5

    .line 1329
    .end local v35    # "epsilon":D
    .local v0, "epsilon":D
    .restart local v21    # "lnzb":D
    :cond_e
    move-wide/from16 v35, v0

    move/from16 v23, v11

    .end local v0    # "epsilon":D
    .restart local v35    # "epsilon":D
    const-wide v0, -0x403ab85bc817c0f3L    # -0.16624882440418567

    .line 1330
    .end local v7    # "lnza":D
    .local v0, "lnza":D
    mul-double v7, v0, v35

    const-wide v9, 0x3fc99995c0570824L    # 0.19999954120254515

    add-double/2addr v7, v9

    .line 1331
    .end local v0    # "lnza":D
    .restart local v7    # "lnza":D
    mul-double v0, v7, v35

    const-wide v9, -0x40300000007fae53L    # -0.2499999997677497

    add-double/2addr v0, v9

    .line 1332
    .end local v7    # "lnza":D
    .restart local v0    # "lnza":D
    mul-double v7, v0, v35

    const-wide v9, 0x3fd5555555555198L    # 0.3333333333332802

    add-double/2addr v7, v9

    .line 1333
    .end local v0    # "lnza":D
    .restart local v7    # "lnza":D
    mul-double v0, v7, v35

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    add-double/2addr v0, v9

    .line 1334
    .end local v7    # "lnza":D
    .restart local v0    # "lnza":D
    mul-double v7, v0, v35

    add-double v7, v7, v16

    .line 1335
    .end local v0    # "lnza":D
    .restart local v7    # "lnza":D
    mul-double v7, v7, v35

    .line 1352
    :goto_5
    const-wide v0, 0x3fe62e42c0000000L    # 0.6931470632553101

    int-to-double v9, v2

    mul-double/2addr v9, v0

    .line 1353
    .local v9, "a":D
    const-wide/16 v0, 0x0

    .line 1354
    .local v0, "b":D
    aget-wide v11, v3, v18

    add-double/2addr v11, v9

    .line 1355
    .local v11, "c":D
    sub-double v13, v11, v9

    aget-wide v15, v3, v18

    sub-double/2addr v13, v15

    neg-double v13, v13

    .line 1356
    .local v13, "d":D
    move-wide v9, v11

    .line 1357
    add-double/2addr v0, v13

    .line 1359
    add-double v11, v9, v7

    .line 1360
    sub-double v15, v11, v9

    move-wide/from16 v19, v0

    .end local v0    # "b":D
    .local v19, "b":D
    sub-double v0, v15, v7

    neg-double v0, v0

    .line 1361
    .end local v13    # "d":D
    .local v0, "d":D
    move-wide v9, v11

    .line 1362
    add-double v13, v19, v0

    .line 1364
    .end local v19    # "b":D
    .local v13, "b":D
    move-wide v15, v0

    .end local v0    # "d":D
    .local v15, "d":D
    int-to-double v0, v2

    const-wide v19, 0x3e7f7d1cf79abc9eL    # 1.1730463525082348E-7

    mul-double v0, v0, v19

    add-double/2addr v0, v9

    .line 1365
    .end local v11    # "c":D
    .local v0, "c":D
    sub-double v11, v0, v9

    move-wide/from16 v24, v0

    .end local v0    # "c":D
    .local v24, "c":D
    int-to-double v0, v2

    mul-double v0, v0, v19

    sub-double/2addr v11, v0

    neg-double v0, v11

    .line 1366
    .end local v15    # "d":D
    .local v0, "d":D
    move-wide/from16 v9, v24

    .line 1367
    add-double/2addr v13, v0

    .line 1369
    aget-wide v11, v3, v23

    add-double/2addr v11, v9

    .line 1370
    .end local v24    # "c":D
    .restart local v11    # "c":D
    sub-double v15, v11, v9

    aget-wide v19, v3, v23

    move-wide/from16 v24, v0

    .end local v0    # "d":D
    .local v24, "d":D
    sub-double v0, v15, v19

    neg-double v0, v0

    .line 1371
    .end local v24    # "d":D
    .restart local v0    # "d":D
    move-wide v9, v11

    .line 1372
    add-double/2addr v13, v0

    .line 1374
    add-double v11, v9, v21

    .line 1375
    sub-double v15, v11, v9

    move-wide/from16 v19, v0

    .end local v0    # "d":D
    .local v19, "d":D
    sub-double v0, v15, v21

    neg-double v0, v0

    .line 1376
    .end local v19    # "d":D
    .restart local v0    # "d":D
    move-wide v9, v11

    .line 1377
    add-double/2addr v13, v0

    .line 1379
    if-eqz p2, :cond_f

    .line 1380
    aput-wide v9, p2, v18

    .line 1381
    aput-wide v13, p2, v23

    .line 1384
    :cond_f
    add-double v15, v9, v13

    return-wide v15
.end method

.method public static log10(D)D
    .locals 22
    .param p0, "x"    # D

    .line 1430
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 1432
    .local v0, "hiPrec":[D
    move-wide/from16 v1, p0

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMath;->log(D[D)D

    move-result-wide v3

    .line 1433
    .local v3, "lores":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1434
    return-wide v3

    .line 1437
    :cond_0
    const/4 v5, 0x0

    aget-wide v6, v0, v5

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v6, v8

    .line 1438
    .local v6, "tmp":D
    aget-wide v8, v0, v5

    add-double/2addr v8, v6

    sub-double/2addr v8, v6

    .line 1439
    .local v8, "lna":D
    aget-wide v10, v0, v5

    sub-double/2addr v10, v8

    const/4 v5, 0x1

    aget-wide v12, v0, v5

    add-double/2addr v10, v12

    .line 1441
    .local v10, "lnb":D
    const-wide v12, 0x3fdbcb7b00000000L    # 0.4342944622039795

    .line 1442
    .local v12, "rln10a":D
    const-wide v14, 0x3e5526e50e32a6abL    # 1.9699272335463627E-8

    .line 1444
    .local v14, "rln10b":D
    const-wide v16, 0x3e5526e50e32a6abL    # 1.9699272335463627E-8

    mul-double v18, v10, v16

    mul-double v16, v16, v8

    add-double v18, v18, v16

    const-wide v16, 0x3fdbcb7b00000000L    # 0.4342944622039795

    mul-double v20, v10, v16

    add-double v18, v18, v20

    mul-double v16, v16, v8

    add-double v18, v18, v16

    return-wide v18
.end method

.method public static log1p(D)D
    .locals 15
    .param p0, "x"    # D

    .line 1394
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 1395
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    .line 1398
    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    .line 1399
    return-wide v0

    .line 1402
    :cond_1
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gtz v0, :cond_3

    const-wide v5, -0x414f39085f4a1273L    # -1.0E-6

    cmpg-double v0, p0, v5

    if-gez v0, :cond_2

    goto :goto_0

    .line 1420
    :cond_2
    const-wide v5, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v5, p0

    sub-double/2addr v5, v1

    mul-double/2addr v5, p0

    add-double/2addr v5, v3

    .line 1421
    .local v5, "y":D
    mul-double v0, v5, p0

    return-wide v0

    .line 1404
    .end local v5    # "y":D
    :cond_3
    :goto_0
    add-double v5, p0, v3

    .line 1405
    .local v5, "xpa":D
    sub-double v7, v5, v3

    sub-double/2addr v7, p0

    neg-double v7, v7

    .line 1407
    .local v7, "xpb":D
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 1408
    .local v0, "hiPrec":[D
    invoke-static {v5, v6, v0}, Lorg/apache/commons/math3/util/FastMath;->log(D[D)D

    move-result-wide v9

    .line 1409
    .local v9, "lores":D
    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1410
    return-wide v9

    .line 1415
    :cond_4
    div-double v11, v7, v5

    .line 1416
    .local v11, "fx1":D
    mul-double/2addr v1, v11

    add-double/2addr v1, v3

    .line 1417
    .local v1, "epsilon":D
    mul-double v3, v1, v11

    const/4 v13, 0x1

    aget-wide v13, v0, v13

    add-double/2addr v3, v13

    const/4 v13, 0x0

    aget-wide v13, v0, v13

    add-double/2addr v3, v13

    return-wide v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/String;

    .line 4121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 4122
    .local v0, "out":Ljava/io/PrintStream;
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->access$000()[D

    move-result-object v1

    const-string v2, "EXP_INT_TABLE_A"

    const/16 v3, 0x5dc

    invoke-static {v0, v2, v3, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4123
    const-string v1, "EXP_INT_TABLE_B"

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->access$100()[D

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4124
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$200()[D

    move-result-object v1

    const-string v2, "EXP_FRAC_TABLE_A"

    const/16 v3, 0x401

    invoke-static {v0, v2, v3, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4125
    const-string v1, "EXP_FRAC_TABLE_B"

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$300()[D

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4126
    const/16 v1, 0x400

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$lnMant;->access$400()[[D

    move-result-object v2

    const-string v3, "LN_MANT"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[[D)V

    .line 4127
    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_A:[D

    const-string v2, "SINE_TABLE_A"

    const/16 v3, 0xe

    invoke-static {v0, v2, v3, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4128
    const-string v1, "SINE_TABLE_B"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_B:[D

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4129
    const-string v1, "COSINE_TABLE_A"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_A:[D

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4130
    const-string v1, "COSINE_TABLE_B"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_B:[D

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4131
    const-string v1, "TANGENT_TABLE_A"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_A:[D

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4132
    const-string v1, "TANGENT_TABLE_B"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_B:[D

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4133
    return-void
.end method

.method public static max(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 3640
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 3641
    return-wide p0

    .line 3643
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 3644
    return-wide p2

    .line 3647
    :cond_1
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_2

    .line 3648
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3652
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 3653
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 3654
    return-wide p2

    .line 3656
    :cond_3
    return-wide p0
.end method

.method public static max(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 3615
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 3616
    return p0

    .line 3618
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 3619
    return p1

    .line 3622
    :cond_1
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_2

    .line 3623
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 3627
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 3628
    .local v0, "bits":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 3629
    return p1

    .line 3631
    :cond_3
    return p0
.end method

.method public static max(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 3597
    if-gt p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 3606
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method public static min(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 3572
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 3573
    return-wide p2

    .line 3575
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 3576
    return-wide p0

    .line 3579
    :cond_1
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_2

    .line 3580
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3584
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 3585
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 3586
    return-wide p0

    .line 3588
    :cond_3
    return-wide p2
.end method

.method public static min(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 3547
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 3548
    return p1

    .line 3550
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 3551
    return p0

    .line 3554
    :cond_1
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_2

    .line 3555
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 3559
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 3560
    .local v0, "bits":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 3561
    return p0

    .line 3563
    :cond_3
    return p1
.end method

.method public static min(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 3529
    if-gt p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 3538
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    return-wide v0
.end method

.method public static multiplyExact(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 3901
    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    if-lez p1, :cond_0

    div-int v2, v0, p1

    if-gt p0, v2, :cond_2

    div-int v2, v1, p1

    if-lt p0, v2, :cond_2

    :cond_0
    const/4 v2, -0x1

    if-ge p1, v2, :cond_1

    div-int v3, v1, p1

    if-gt p0, v3, :cond_2

    div-int/2addr v0, p1

    if-lt p0, v0, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-eq p0, v1, :cond_2

    goto :goto_0

    .line 3904
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_MULTIPLICATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3906
    :cond_3
    :goto_0
    mul-int v0, p0, p1

    return v0
.end method

.method public static multiplyExact(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 3917
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide v1, 0x7fffffffffffffffL

    const-wide/high16 v3, -0x8000000000000000L

    if-lez v0, :cond_0

    div-long v5, v1, p2

    cmp-long v0, p0, v5

    if-gtz v0, :cond_2

    div-long v5, v3, p2

    cmp-long v0, p0, v5

    if-ltz v0, :cond_2

    :cond_0
    const-wide/16 v5, -0x1

    cmp-long v0, p2, v5

    if-gez v0, :cond_1

    div-long v7, v3, p2

    cmp-long v0, p0, v7

    if-gtz v0, :cond_2

    div-long/2addr v1, p2

    cmp-long v0, p0, v1

    if-ltz v0, :cond_2

    :cond_1
    cmp-long v0, p2, v5

    if-nez v0, :cond_3

    cmp-long v0, p0, v3

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3920
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_MULTIPLICATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3922
    :cond_3
    :goto_0
    mul-long v0, p0, p2

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .locals 9
    .param p0, "d"    # D
    .param p2, "direction"    # D

    .line 3354
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 3356
    :cond_0
    cmpl-double v0, p0, p2

    if-nez v0, :cond_1

    .line 3357
    return-wide p2

    .line 3358
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 3359
    cmpg-double v0, p0, v1

    if-gez v0, :cond_2

    const-wide v0, -0x10000000000001L

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    return-wide v0

    .line 3360
    :cond_3
    cmpl-double v0, p0, v1

    if-nez v0, :cond_5

    .line 3361
    cmpg-double v0, p2, v1

    if-gez v0, :cond_4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x1

    :goto_1
    return-wide v0

    .line 3366
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 3367
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    .line 3368
    .local v2, "sign":J
    cmpg-double v4, p2, p0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v4, :cond_6

    move v4, v5

    goto :goto_2

    :cond_6
    move v4, v6

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    move v5, v6

    :goto_3
    xor-int/2addr v4, v5

    const-wide/16 v5, 0x1

    const-wide v7, 0x7fffffffffffffffL

    if-eqz v4, :cond_8

    .line 3369
    and-long/2addr v7, v0

    add-long/2addr v7, v5

    or-long v4, v2, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4

    .line 3371
    :cond_8
    and-long/2addr v7, v0

    sub-long/2addr v7, v5

    or-long v4, v2, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4

    .line 3355
    .end local v0    # "bits":J
    .end local v2    # "sign":J
    :cond_9
    :goto_4
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static nextAfter(FD)F
    .locals 5
    .param p0, "f"    # F
    .param p1, "direction"    # D

    .line 3410
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 3412
    :cond_0
    float-to-double v0, p0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_1

    .line 3413
    double-to-float v0, p1

    return v0

    .line 3414
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3415
    cmpg-float v0, p0, v1

    if-gez v0, :cond_2

    const v0, -0x800001

    goto :goto_0

    :cond_2
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    return v0

    .line 3416
    :cond_3
    cmpl-float v0, p0, v1

    if-nez v0, :cond_5

    .line 3417
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_4

    const v0, -0x7fffffff

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3422
    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3423
    .local v0, "bits":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    .line 3424
    .local v1, "sign":I
    float-to-double v2, p0

    cmpg-double v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_6

    move v2, v4

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    if-nez v1, :cond_7

    move v3, v4

    :cond_7
    xor-int/2addr v2, v3

    const v3, 0x7fffffff

    if-eqz v2, :cond_8

    .line 3425
    and-int v2, v0, v3

    add-int/2addr v2, v4

    or-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2

    .line 3427
    :cond_8
    and-int v2, v0, v3

    sub-int/2addr v2, v4

    or-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2

    .line 3411
    .end local v0    # "bits":I
    .end local v1    # "sign":I
    :cond_9
    :goto_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public static nextDown(D)D
    .locals 2
    .param p0, "a"    # D

    .line 823
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDown(F)F
    .locals 2
    .param p0, "a"    # F

    .line 832
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextUp(D)D
    .locals 2
    .param p0, "a"    # D

    .line 806
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 2
    .param p0, "a"    # F

    .line 814
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method private static polyCosine(D)D
    .locals 8
    .param p0, "x"    # D

    .line 1794
    mul-double v0, p0, p0

    .line 1796
    .local v0, "x2":D
    const-wide v2, 0x3efa0097667cf584L    # 2.479773539153719E-5

    .line 1797
    .local v2, "p":D
    mul-double v4, v2, v0

    const-wide v6, -0x40a93e93eebce3e0L    # -0.0013888888689039883

    add-double/2addr v4, v6

    .line 1798
    .end local v2    # "p":D
    .local v4, "p":D
    mul-double v2, v4, v0

    const-wide v6, 0x3fa5555555553bb8L    # 0.041666666666621166

    add-double/2addr v2, v6

    .line 1799
    .end local v4    # "p":D
    .restart local v2    # "p":D
    mul-double v4, v2, v0

    const-wide v6, -0x4020000000000001L    # -0.49999999999999994

    add-double/2addr v4, v6

    .line 1800
    .end local v2    # "p":D
    .restart local v4    # "p":D
    mul-double/2addr v4, v0

    .line 1802
    return-wide v4
.end method

.method private static polySine(D)D
    .locals 8
    .param p0, "x"    # D

    .line 1774
    mul-double v0, p0, p0

    .line 1776
    .local v0, "x2":D
    const-wide v2, 0x3ec71d2322488cdeL    # 2.7553817452272217E-6

    .line 1777
    .local v2, "p":D
    mul-double v4, v2, v0

    const-wide v6, -0x40d5fe5fe9fd292eL    # -1.9841269659586505E-4

    add-double/2addr v4, v6

    .line 1778
    .end local v2    # "p":D
    .local v4, "p":D
    mul-double v2, v4, v0

    const-wide v6, 0x3f811111111107c0L    # 0.008333333333329196

    add-double/2addr v2, v6

    .line 1779
    .end local v4    # "p":D
    .restart local v2    # "p":D
    mul-double v4, v2, v0

    const-wide v6, -0x403aaaaaaaaaaaabL    # -0.16666666666666666

    add-double/2addr v4, v6

    .line 1782
    .end local v2    # "p":D
    .restart local v4    # "p":D
    mul-double v2, v4, v0

    mul-double/2addr v2, p0

    .line 1784
    .end local v4    # "p":D
    .restart local v2    # "p":D
    return-wide v2
.end method

.method public static pow(DD)D
    .locals 41
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 1476
    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v4, p2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_0

    .line 1478
    return-wide v5

    .line 1481
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    .line 1482
    .local v7, "yBits":J
    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v11, v7, v9

    const/16 v4, 0x34

    shr-long/2addr v11, v4

    long-to-int v11, v11

    .line 1483
    .local v11, "yRawExp":I
    const-wide v12, 0xfffffffffffffL

    and-long v14, v7, v12

    .line 1484
    .local v14, "yRawMantissa":J
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v16

    .line 1485
    .local v16, "xBits":J
    and-long v9, v16, v9

    shr-long/2addr v9, v4

    long-to-int v4, v9

    .line 1486
    .local v4, "xRawExp":I
    and-long v9, v16, v12

    .line 1488
    .local v9, "xRawMantissa":J
    const/16 v12, 0x43d

    const/4 v13, 0x1

    const/16 v18, 0x0

    const-wide/high16 v19, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v21, v2

    const/16 v2, 0x3ff

    const-wide/high16 v23, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v25, 0x0

    const/16 v3, 0x7ff

    if-le v11, v12, :cond_9

    .line 1491
    if-ne v11, v3, :cond_1

    cmp-long v12, v14, v25

    if-nez v12, :cond_2

    :cond_1
    if-ne v4, v3, :cond_3

    cmp-long v12, v9, v25

    if-eqz v12, :cond_3

    .line 1494
    :cond_2
    return-wide v23

    .line 1495
    :cond_3
    if-ne v4, v2, :cond_5

    cmp-long v12, v9, v25

    if-nez v12, :cond_5

    .line 1497
    if-ne v11, v3, :cond_4

    .line 1499
    return-wide v23

    .line 1502
    :cond_4
    return-wide v5

    .line 1510
    :cond_5
    cmpl-double v3, p2, v21

    if-lez v3, :cond_6

    move v3, v13

    goto :goto_0

    :cond_6
    move/from16 v3, v18

    :goto_0
    if-ge v4, v2, :cond_7

    goto :goto_1

    :cond_7
    move/from16 v13, v18

    :goto_1
    xor-int v2, v3, v13

    if-eqz v2, :cond_8

    .line 1513
    return-wide v19

    .line 1517
    :cond_8
    return-wide v21

    .line 1524
    :cond_9
    if-lt v11, v2, :cond_e

    .line 1526
    const-wide/high16 v27, 0x10000000000000L

    or-long v27, v14, v27

    .line 1527
    .local v27, "yFullMantissa":J
    const/16 v2, 0x433

    if-ge v11, v2, :cond_c

    .line 1529
    rsub-int v2, v11, 0x433

    const-wide/16 v29, -0x1

    shl-long v29, v29, v2

    .line 1530
    .local v29, "integralMask":J
    and-long v31, v27, v29

    cmp-long v2, v31, v27

    if-nez v2, :cond_b

    .line 1532
    rsub-int v2, v11, 0x433

    shr-long v2, v27, v2

    .line 1533
    .local v2, "l":J
    cmpg-double v5, p2, v21

    if-gez v5, :cond_a

    neg-long v5, v2

    goto :goto_2

    :cond_a
    move-wide v5, v2

    :goto_2
    invoke-static {v0, v1, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DJ)D

    move-result-wide v5

    return-wide v5

    .line 1535
    .end local v2    # "l":J
    .end local v29    # "integralMask":J
    :cond_b
    goto :goto_4

    .line 1538
    :cond_c
    add-int/lit16 v2, v11, -0x433

    shl-long v2, v27, v2

    .line 1539
    .restart local v2    # "l":J
    cmpg-double v5, p2, v21

    if-gez v5, :cond_d

    neg-long v5, v2

    goto :goto_3

    :cond_d
    move-wide v5, v2

    :goto_3
    invoke-static {v0, v1, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DJ)D

    move-result-wide v5

    return-wide v5

    .line 1545
    .end local v2    # "l":J
    .end local v27    # "yFullMantissa":J
    :cond_e
    :goto_4
    cmpl-double v2, v0, v21

    if-nez v2, :cond_10

    .line 1548
    cmpg-double v2, p2, v21

    if-gez v2, :cond_f

    move-wide/from16 v2, v19

    goto :goto_5

    :cond_f
    move-wide/from16 v2, v21

    :goto_5
    return-wide v2

    .line 1549
    :cond_10
    if-ne v4, v3, :cond_13

    .line 1550
    cmp-long v2, v9, v25

    if-nez v2, :cond_12

    .line 1552
    cmpg-double v2, p2, v21

    if-gez v2, :cond_11

    move-wide/from16 v2, v21

    goto :goto_6

    :cond_11
    move-wide/from16 v2, v19

    :goto_6
    return-wide v2

    .line 1555
    :cond_12
    return-wide v23

    .line 1557
    :cond_13
    cmpg-double v2, v0, v21

    if-gez v2, :cond_14

    .line 1559
    return-wide v23

    .line 1565
    :cond_14
    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    mul-double v19, p2, v2

    .line 1566
    .local v19, "tmp":D
    add-double v21, p2, v19

    sub-double v21, v21, v19

    .line 1567
    .local v21, "ya":D
    sub-double v23, p2, v21

    .line 1570
    .local v23, "yb":D
    const/4 v12, 0x2

    new-array v12, v12, [D

    .line 1571
    .local v12, "lns":[D
    invoke-static {v0, v1, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D[D)D

    move-result-wide v25

    .line 1572
    .local v25, "lores":D
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 1573
    return-wide v25

    .line 1576
    :cond_15
    aget-wide v27, v12, v18

    .line 1577
    .local v27, "lna":D
    aget-wide v29, v12, v13

    .line 1580
    .local v29, "lnb":D
    mul-double v2, v2, v27

    .line 1581
    .local v2, "tmp1":D
    add-double v31, v27, v2

    sub-double v31, v31, v2

    .line 1582
    .local v31, "tmp2":D
    sub-double v33, v27, v31

    add-double v29, v29, v33

    .line 1583
    move-wide/from16 v27, v31

    .line 1586
    mul-double v33, v27, v21

    .line 1587
    .local v33, "aa":D
    mul-double v35, v27, v23

    mul-double v37, v29, v21

    add-double v35, v35, v37

    mul-double v37, v29, v23

    add-double v35, v35, v37

    .line 1589
    .local v35, "ab":D
    move-wide/from16 v37, v5

    add-double v5, v33, v35

    .line 1590
    .end local v27    # "lna":D
    .local v5, "lna":D
    sub-double v27, v5, v33

    sub-double v0, v27, v35

    neg-double v0, v0

    .line 1592
    .end local v29    # "lnb":D
    .local v0, "lnb":D
    const-wide v27, 0x3f81111111111111L    # 0.008333333333333333

    .line 1593
    .local v27, "z":D
    mul-double v29, v27, v0

    const-wide v39, 0x3fa5555555555555L    # 0.041666666666666664

    add-double v29, v29, v39

    .line 1594
    .end local v27    # "z":D
    .local v29, "z":D
    mul-double v27, v29, v0

    const-wide v39, 0x3fc5555555555555L    # 0.16666666666666666

    add-double v27, v27, v39

    .line 1595
    .end local v29    # "z":D
    .restart local v27    # "z":D
    mul-double v29, v27, v0

    const-wide/high16 v39, 0x3fe0000000000000L    # 0.5

    add-double v29, v29, v39

    .line 1596
    .end local v27    # "z":D
    .restart local v29    # "z":D
    mul-double v27, v29, v0

    add-double v27, v27, v37

    .line 1597
    .end local v29    # "z":D
    .restart local v27    # "z":D
    move-wide/from16 v29, v0

    .end local v0    # "lnb":D
    .local v29, "lnb":D
    mul-double v0, v27, v29

    .line 1599
    .end local v27    # "z":D
    .local v0, "z":D
    const/4 v13, 0x0

    invoke-static {v5, v6, v0, v1, v13}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    move-result-wide v27

    .line 1601
    .local v27, "result":D
    return-wide v27
.end method

.method public static pow(DI)D
    .locals 2
    .param p0, "d"    # D
    .param p2, "e"    # I

    .line 1619
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pow(DJ)D
    .locals 3
    .param p0, "d"    # D
    .param p2, "e"    # J

    .line 1631
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 1632
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 1633
    :cond_0
    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 1634
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(D)V

    invoke-static {v0, p2, p3}, Lorg/apache/commons/math3/util/FastMath$Split;->access$500(Lorg/apache/commons/math3/util/FastMath$Split;J)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath$Split;->access$600(Lorg/apache/commons/math3/util/FastMath$Split;)D

    move-result-wide v0

    return-wide v0

    .line 1636
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(D)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/FastMath$Split;->reciprocal()Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v0

    neg-long v1, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath$Split;->access$500(Lorg/apache/commons/math3/util/FastMath$Split;J)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath$Split;->access$600(Lorg/apache/commons/math3/util/FastMath$Split;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static random()D
    .locals 2

    .line 840
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method private static reducePayneHanek(D[D)V
    .locals 56
    .param p0, "x"    # D
    .param p2, "result"    # [D

    .line 2106
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 2107
    .local v0, "inbits":J
    const/16 v2, 0x34

    shr-long v2, v0, v2

    const-wide/16 v4, 0x7ff

    and-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit16 v2, v2, -0x3ff

    .line 2110
    .local v2, "exponent":I
    const-wide v3, 0xfffffffffffffL

    and-long/2addr v0, v3

    .line 2111
    const-wide/high16 v3, 0x10000000000000L

    or-long/2addr v0, v3

    .line 2114
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 2115
    const/16 v4, 0xb

    shl-long/2addr v0, v4

    .line 2121
    shr-int/lit8 v4, v2, 0x6

    .line 2122
    .local v4, "idx":I
    shl-int/lit8 v5, v4, 0x6

    sub-int v5, v2, v5

    .line 2124
    .local v5, "shift":I
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1

    .line 2125
    if-nez v4, :cond_0

    move-wide v8, v6

    goto :goto_0

    :cond_0
    sget-object v8, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v9, v4, -0x1

    aget-wide v8, v8, v9

    shl-long/2addr v8, v5

    .line 2126
    .local v8, "shpi0":J
    :goto_0
    sget-object v10, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    aget-wide v10, v10, v4

    rsub-int/lit8 v12, v5, 0x40

    ushr-long/2addr v10, v12

    or-long/2addr v8, v10

    .line 2127
    sget-object v10, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    aget-wide v10, v10, v4

    shl-long/2addr v10, v5

    sget-object v12, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v13, v4, 0x1

    aget-wide v12, v12, v13

    rsub-int/lit8 v14, v5, 0x40

    ushr-long/2addr v12, v14

    or-long/2addr v10, v12

    .line 2128
    .local v10, "shpiA":J
    sget-object v12, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v13, v4, 0x1

    aget-wide v12, v12, v13

    shl-long/2addr v12, v5

    sget-object v14, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v15, v4, 0x2

    aget-wide v14, v14, v15

    rsub-int/lit8 v16, v5, 0x40

    ushr-long v14, v14, v16

    or-long/2addr v12, v14

    .local v12, "shpiB":J
    goto :goto_2

    .line 2130
    .end local v8    # "shpi0":J
    .end local v10    # "shpiA":J
    .end local v12    # "shpiB":J
    :cond_1
    if-nez v4, :cond_2

    move-wide v8, v6

    goto :goto_1

    :cond_2
    sget-object v8, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v9, v4, -0x1

    aget-wide v8, v8, v9

    .line 2131
    .restart local v8    # "shpi0":J
    :goto_1
    sget-object v10, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    aget-wide v10, v10, v4

    .line 2132
    .restart local v10    # "shpiA":J
    sget-object v12, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v13, v4, 0x1

    aget-wide v12, v12, v13

    .line 2136
    .restart local v12    # "shpiB":J
    :goto_2
    const/16 v14, 0x20

    ushr-long v15, v0, v14

    .line 2137
    .local v15, "a":J
    const-wide v17, 0xffffffffL

    and-long v19, v0, v17

    .line 2139
    .local v19, "b":J
    ushr-long v21, v10, v14

    .line 2140
    .local v21, "c":J
    and-long v23, v10, v17

    .line 2142
    .local v23, "d":J
    mul-long v25, v15, v21

    .line 2143
    .local v25, "ac":J
    mul-long v27, v19, v23

    .line 2144
    .local v27, "bd":J
    mul-long v29, v19, v21

    .line 2145
    .local v29, "bc":J
    mul-long v31, v15, v23

    .line 2147
    .local v31, "ad":J
    shl-long v33, v31, v14

    add-long v33, v27, v33

    .line 2148
    .local v33, "prodB":J
    ushr-long v35, v31, v14

    add-long v35, v25, v35

    .line 2150
    .local v35, "prodA":J
    const-wide/high16 v37, -0x8000000000000000L

    and-long v39, v27, v37

    cmp-long v39, v39, v6

    const/16 v40, 0x0

    if-eqz v39, :cond_3

    move/from16 v39, v3

    goto :goto_3

    :cond_3
    move/from16 v39, v40

    .line 2151
    .local v39, "bita":Z
    :goto_3
    const-wide v41, 0x80000000L

    and-long v43, v31, v41

    cmp-long v43, v43, v6

    if-eqz v43, :cond_4

    move/from16 v43, v3

    goto :goto_4

    :cond_4
    move/from16 v43, v40

    .line 2152
    .local v43, "bitb":Z
    :goto_4
    and-long v44, v33, v37

    cmp-long v44, v44, v6

    if-eqz v44, :cond_5

    move/from16 v44, v3

    goto :goto_5

    :cond_5
    move/from16 v44, v40

    .line 2155
    .local v44, "bitsum":Z
    :goto_5
    const-wide/16 v45, 0x1

    if-eqz v39, :cond_6

    if-nez v43, :cond_8

    :cond_6
    if-nez v39, :cond_7

    if-eqz v43, :cond_9

    :cond_7
    if-nez v44, :cond_9

    .line 2157
    :cond_8
    add-long v35, v35, v45

    .line 2160
    :cond_9
    and-long v47, v33, v37

    cmp-long v47, v47, v6

    if-eqz v47, :cond_a

    move/from16 v47, v3

    goto :goto_6

    :cond_a
    move/from16 v47, v40

    .line 2161
    .end local v39    # "bita":Z
    .local v47, "bita":Z
    :goto_6
    and-long v48, v29, v41

    cmp-long v39, v48, v6

    if-eqz v39, :cond_b

    move/from16 v39, v3

    goto :goto_7

    :cond_b
    move/from16 v39, v40

    .line 2163
    .end local v43    # "bitb":Z
    .local v39, "bitb":Z
    :goto_7
    shl-long v48, v29, v14

    add-long v33, v33, v48

    .line 2164
    ushr-long v48, v29, v14

    add-long v35, v35, v48

    .line 2166
    and-long v48, v33, v37

    cmp-long v43, v48, v6

    if-eqz v43, :cond_c

    move/from16 v43, v3

    goto :goto_8

    :cond_c
    move/from16 v43, v40

    .line 2169
    .end local v44    # "bitsum":Z
    .local v43, "bitsum":Z
    :goto_8
    if-eqz v47, :cond_d

    if-nez v39, :cond_f

    :cond_d
    if-nez v47, :cond_e

    if-eqz v39, :cond_10

    :cond_e
    if-nez v43, :cond_10

    .line 2171
    :cond_f
    add-long v35, v35, v45

    .line 2175
    :cond_10
    ushr-long v21, v12, v14

    .line 2176
    and-long v23, v12, v17

    .line 2177
    mul-long v25, v15, v21

    .line 2178
    mul-long v29, v19, v21

    .line 2179
    mul-long v31, v15, v23

    .line 2182
    add-long v48, v29, v31

    ushr-long v48, v48, v14

    add-long v25, v25, v48

    .line 2184
    and-long v48, v33, v37

    cmp-long v44, v48, v6

    if-eqz v44, :cond_11

    move/from16 v44, v3

    goto :goto_9

    :cond_11
    move/from16 v44, v40

    .line 2185
    .end local v47    # "bita":Z
    .local v44, "bita":Z
    :goto_9
    and-long v47, v25, v37

    cmp-long v47, v47, v6

    if-eqz v47, :cond_12

    move/from16 v47, v3

    goto :goto_a

    :cond_12
    move/from16 v47, v40

    .line 2186
    .end local v39    # "bitb":Z
    .local v47, "bitb":Z
    :goto_a
    add-long v33, v33, v25

    .line 2187
    and-long v48, v33, v37

    cmp-long v39, v48, v6

    if-eqz v39, :cond_13

    move/from16 v39, v3

    goto :goto_b

    :cond_13
    move/from16 v39, v40

    .line 2189
    .end local v43    # "bitsum":Z
    .local v39, "bitsum":Z
    :goto_b
    if-eqz v44, :cond_14

    if-nez v47, :cond_16

    :cond_14
    if-nez v44, :cond_15

    if-eqz v47, :cond_17

    :cond_15
    if-nez v39, :cond_17

    .line 2191
    :cond_16
    add-long v35, v35, v45

    .line 2195
    :cond_17
    ushr-long v21, v8, v14

    .line 2196
    and-long v23, v8, v17

    .line 2198
    mul-long v27, v19, v23

    .line 2199
    mul-long v29, v19, v21

    .line 2200
    mul-long v31, v15, v23

    .line 2202
    add-long v48, v29, v31

    shl-long v48, v48, v14

    add-long v48, v27, v48

    add-long v35, v35, v48

    .line 2214
    const/16 v43, 0x3e

    move/from16 v48, v3

    move/from16 v49, v4

    .end local v4    # "idx":I
    .local v49, "idx":I
    ushr-long v3, v35, v43

    long-to-int v3, v3

    .line 2217
    .local v3, "intPart":I
    const/4 v4, 0x2

    shl-long v35, v35, v4

    .line 2218
    ushr-long v50, v33, v43

    or-long v35, v35, v50

    .line 2219
    shl-long v33, v33, v4

    .line 2222
    ushr-long v15, v35, v14

    .line 2223
    and-long v19, v35, v17

    .line 2225
    sget-object v43, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    aget-wide v50, v43, v40

    ushr-long v21, v50, v14

    .line 2226
    sget-object v43, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    aget-wide v50, v43, v40

    and-long v23, v50, v17

    .line 2228
    mul-long v25, v15, v21

    .line 2229
    mul-long v27, v19, v23

    .line 2230
    mul-long v29, v19, v21

    .line 2231
    mul-long v31, v15, v23

    .line 2233
    shl-long v50, v31, v14

    add-long v50, v27, v50

    .line 2234
    .local v50, "prod2B":J
    ushr-long v52, v31, v14

    add-long v52, v25, v52

    .line 2236
    .local v52, "prod2A":J
    and-long v54, v27, v37

    cmp-long v43, v54, v6

    if-eqz v43, :cond_18

    move/from16 v43, v48

    goto :goto_c

    :cond_18
    move/from16 v43, v40

    .line 2237
    .end local v44    # "bita":Z
    .local v43, "bita":Z
    :goto_c
    and-long v54, v31, v41

    cmp-long v44, v54, v6

    if-eqz v44, :cond_19

    move/from16 v44, v48

    goto :goto_d

    :cond_19
    move/from16 v44, v40

    .line 2238
    .end local v47    # "bitb":Z
    .local v44, "bitb":Z
    :goto_d
    and-long v54, v50, v37

    cmp-long v47, v54, v6

    if-eqz v47, :cond_1a

    move/from16 v47, v48

    goto :goto_e

    :cond_1a
    move/from16 v47, v40

    .line 2241
    .end local v39    # "bitsum":Z
    .local v47, "bitsum":Z
    :goto_e
    if-eqz v43, :cond_1b

    if-nez v44, :cond_1d

    :cond_1b
    if-nez v43, :cond_1c

    if-eqz v44, :cond_1e

    :cond_1c
    if-nez v47, :cond_1e

    .line 2243
    :cond_1d
    add-long v52, v52, v45

    .line 2246
    :cond_1e
    and-long v54, v50, v37

    cmp-long v39, v54, v6

    if-eqz v39, :cond_1f

    move/from16 v39, v48

    goto :goto_f

    :cond_1f
    move/from16 v39, v40

    .line 2247
    .end local v43    # "bita":Z
    .local v39, "bita":Z
    :goto_f
    and-long v41, v29, v41

    cmp-long v41, v41, v6

    if-eqz v41, :cond_20

    move/from16 v41, v48

    goto :goto_10

    :cond_20
    move/from16 v41, v40

    .line 2249
    .end local v44    # "bitb":Z
    .local v41, "bitb":Z
    :goto_10
    shl-long v42, v29, v14

    add-long v50, v50, v42

    .line 2250
    ushr-long v42, v29, v14

    add-long v52, v52, v42

    .line 2252
    and-long v42, v50, v37

    cmp-long v42, v42, v6

    if-eqz v42, :cond_21

    move/from16 v42, v48

    goto :goto_11

    :cond_21
    move/from16 v42, v40

    .line 2255
    .end local v47    # "bitsum":Z
    .local v42, "bitsum":Z
    :goto_11
    if-eqz v39, :cond_22

    if-nez v41, :cond_24

    :cond_22
    if-nez v39, :cond_23

    if-eqz v41, :cond_25

    :cond_23
    if-nez v42, :cond_25

    .line 2257
    :cond_24
    add-long v52, v52, v45

    .line 2261
    :cond_25
    sget-object v43, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    aget-wide v43, v43, v48

    ushr-long v21, v43, v14

    .line 2262
    sget-object v43, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    aget-wide v43, v43, v48

    and-long v23, v43, v17

    .line 2263
    mul-long v25, v15, v21

    .line 2264
    mul-long v29, v19, v21

    .line 2265
    mul-long v31, v15, v23

    .line 2268
    add-long v43, v29, v31

    ushr-long v43, v43, v14

    add-long v25, v25, v43

    .line 2270
    and-long v43, v50, v37

    cmp-long v43, v43, v6

    if-eqz v43, :cond_26

    move/from16 v43, v48

    goto :goto_12

    :cond_26
    move/from16 v43, v40

    .line 2271
    .end local v39    # "bita":Z
    .restart local v43    # "bita":Z
    :goto_12
    and-long v54, v25, v37

    cmp-long v39, v54, v6

    if-eqz v39, :cond_27

    move/from16 v39, v48

    goto :goto_13

    :cond_27
    move/from16 v39, v40

    .line 2272
    .end local v41    # "bitb":Z
    .local v39, "bitb":Z
    :goto_13
    add-long v50, v50, v25

    .line 2273
    and-long v54, v50, v37

    cmp-long v41, v54, v6

    if-eqz v41, :cond_28

    move/from16 v41, v48

    goto :goto_14

    :cond_28
    move/from16 v41, v40

    .line 2275
    .end local v42    # "bitsum":Z
    .local v41, "bitsum":Z
    :goto_14
    if-eqz v43, :cond_29

    if-nez v39, :cond_2b

    :cond_29
    if-nez v43, :cond_2a

    if-eqz v39, :cond_2c

    :cond_2a
    if-nez v41, :cond_2c

    .line 2277
    :cond_2b
    add-long v52, v52, v45

    .line 2281
    :cond_2c
    ushr-long v15, v33, v14

    .line 2282
    and-long v19, v33, v17

    .line 2283
    sget-object v42, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    aget-wide v54, v42, v40

    ushr-long v21, v54, v14

    .line 2284
    sget-object v42, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    aget-wide v54, v42, v40

    and-long v17, v54, v17

    .line 2285
    .end local v23    # "d":J
    .local v17, "d":J
    mul-long v23, v15, v21

    .line 2286
    .end local v25    # "ac":J
    .local v23, "ac":J
    mul-long v25, v19, v21

    .line 2287
    .end local v29    # "bc":J
    .local v25, "bc":J
    mul-long v29, v15, v17

    .line 2290
    .end local v31    # "ad":J
    .local v29, "ad":J
    add-long v31, v25, v29

    ushr-long v31, v31, v14

    add-long v23, v23, v31

    .line 2292
    and-long v31, v50, v37

    cmp-long v14, v31, v6

    if-eqz v14, :cond_2d

    move/from16 v14, v48

    goto :goto_15

    :cond_2d
    move/from16 v14, v40

    .line 2293
    .end local v43    # "bita":Z
    .local v14, "bita":Z
    :goto_15
    and-long v31, v23, v37

    cmp-long v31, v31, v6

    if-eqz v31, :cond_2e

    move/from16 v31, v48

    goto :goto_16

    :cond_2e
    move/from16 v31, v40

    .line 2294
    .end local v39    # "bitb":Z
    .local v31, "bitb":Z
    :goto_16
    add-long v50, v50, v23

    .line 2295
    and-long v37, v50, v37

    cmp-long v6, v37, v6

    if-eqz v6, :cond_2f

    move/from16 v6, v48

    goto :goto_17

    :cond_2f
    move/from16 v6, v40

    .line 2297
    .end local v41    # "bitsum":Z
    .local v6, "bitsum":Z
    :goto_17
    if-eqz v14, :cond_30

    if-nez v31, :cond_32

    :cond_30
    if-nez v14, :cond_31

    if-eqz v31, :cond_33

    :cond_31
    if-nez v6, :cond_33

    .line 2299
    :cond_32
    add-long v52, v52, v45

    .line 2303
    :cond_33
    const/16 v7, 0xc

    move/from16 v37, v4

    move/from16 v32, v5

    .end local v5    # "shift":I
    .local v32, "shift":I
    ushr-long v4, v52, v7

    long-to-double v4, v4

    const-wide/high16 v38, 0x4330000000000000L    # 4.503599627370496E15

    div-double v4, v4, v38

    .line 2304
    .local v4, "tmpA":D
    const-wide/16 v41, 0xfff

    and-long v41, v52, v41

    const/16 v7, 0x28

    shl-long v41, v41, v7

    const/16 v7, 0x18

    ushr-long v43, v50, v7

    move-wide/from16 v45, v0

    .end local v0    # "inbits":J
    .local v45, "inbits":J
    add-long v0, v41, v43

    long-to-double v0, v0

    div-double v0, v0, v38

    div-double v0, v0, v38

    .line 2306
    .local v0, "tmpB":D
    add-double v38, v4, v0

    .line 2307
    .local v38, "sumA":D
    sub-double v41, v38, v4

    move-wide/from16 v43, v0

    .end local v0    # "tmpB":D
    .local v43, "tmpB":D
    sub-double v0, v41, v43

    neg-double v0, v0

    .line 2310
    .local v0, "sumB":D
    move-wide/from16 v41, v0

    .end local v0    # "sumB":D
    .local v41, "sumB":D
    int-to-double v0, v3

    aput-wide v0, p2, v40

    .line 2311
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v54, v38, v0

    aput-wide v54, p2, v48

    .line 2312
    mul-double v0, v0, v41

    aput-wide v0, p2, v37

    .line 2313
    return-void
.end method

.method public static rint(D)D
    .locals 13
    .param p0, "x"    # D

    .line 3489
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .line 3490
    .local v0, "y":D
    sub-double v2, p0, v0

    .line 3492
    .local v2, "d":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v2, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-lez v6, :cond_1

    .line 3493
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_0

    .line 3494
    const-wide/high16 v4, -0x8000000000000000L

    return-wide v4

    .line 3496
    :cond_0
    add-double/2addr v7, v0

    return-wide v7

    .line 3498
    :cond_1
    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 3499
    return-wide v0

    .line 3503
    :cond_2
    double-to-long v4, v0

    .line 3504
    .local v4, "z":J
    const-wide/16 v9, 0x1

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-nez v6, :cond_3

    move-wide v7, v0

    goto :goto_0

    :cond_3
    add-double/2addr v7, v0

    :goto_0
    return-wide v7
.end method

.method public static round(F)I
    .locals 2
    .param p0, "x"    # F

    .line 3520
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static round(D)J
    .locals 2
    .param p0, "x"    # D

    .line 3512
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static scalb(DI)D
    .locals 25
    .param p0, "d"    # D
    .param p2, "n"    # I

    .line 3161
    move/from16 v0, p2

    const/16 v1, -0x3ff

    const/16 v2, 0x34

    if-le v0, v1, :cond_0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 3162
    add-int/lit16 v1, v0, 0x3ff

    int-to-long v3, v1

    shl-long v1, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    mul-double v1, v1, p0

    return-wide v1

    .line 3166
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_11

    const-wide/16 v3, 0x0

    cmpl-double v1, p0, v3

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 3169
    :cond_1
    const/16 v1, -0x832

    const-wide/high16 v5, -0x8000000000000000L

    if-ge v0, v1, :cond_3

    .line 3170
    cmpl-double v1, p0, v3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, v5

    :goto_0
    return-wide v3

    .line 3172
    :cond_3
    const/16 v1, 0x831

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v9, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-le v0, v1, :cond_5

    .line 3173
    cmpl-double v1, p0, v3

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move-wide v7, v9

    :goto_1
    return-wide v7

    .line 3177
    :cond_5
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    .line 3178
    .local v11, "bits":J
    const-wide/high16 v13, -0x8000000000000000L

    and-long/2addr v13, v11

    .line 3179
    .local v13, "sign":J
    move v1, v2

    ushr-long v2, v11, v1

    long-to-int v2, v2

    const/16 v3, 0x7ff

    and-int/2addr v2, v3

    .line 3180
    .local v2, "exponent":I
    const-wide v17, 0xfffffffffffffL

    and-long v19, v11, v17

    .line 3183
    .local v19, "mantissa":J
    add-int v4, v2, v0

    .line 3185
    .local v4, "scaledExponent":I
    const-wide/16 v21, 0x1

    const-wide/16 v23, 0x0

    if-gez v0, :cond_a

    .line 3187
    if-lez v4, :cond_6

    .line 3189
    int-to-long v5, v4

    shl-long/2addr v5, v1

    or-long/2addr v5, v13

    or-long v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    return-wide v5

    .line 3190
    :cond_6
    const/16 v1, -0x35

    if-le v4, v1, :cond_8

    .line 3194
    const-wide/high16 v5, 0x10000000000000L

    or-long v5, v19, v5

    .line 3197
    .end local v19    # "mantissa":J
    .local v5, "mantissa":J
    neg-int v1, v4

    shl-long v7, v21, v1

    and-long/2addr v7, v5

    .line 3198
    .local v7, "mostSignificantLostBit":J
    rsub-int/lit8 v1, v4, 0x1

    ushr-long/2addr v5, v1

    .line 3199
    cmp-long v1, v7, v23

    if-eqz v1, :cond_7

    .line 3201
    add-long v5, v5, v21

    .line 3203
    :cond_7
    or-long v9, v13, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    return-wide v9

    .line 3207
    .end local v5    # "mantissa":J
    .end local v7    # "mostSignificantLostBit":J
    .restart local v19    # "mantissa":J
    :cond_8
    cmp-long v1, v13, v23

    if-nez v1, :cond_9

    const-wide/16 v15, 0x0

    goto :goto_2

    :cond_9
    move-wide v15, v5

    :goto_2
    return-wide v15

    .line 3211
    :cond_a
    if-nez v2, :cond_e

    .line 3214
    :goto_3
    ushr-long v5, v19, v1

    cmp-long v5, v5, v21

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    .line 3215
    shl-long v19, v19, v6

    .line 3216
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 3218
    :cond_b
    add-int/2addr v4, v6

    .line 3219
    and-long v5, v19, v17

    .line 3221
    .end local v19    # "mantissa":J
    .restart local v5    # "mantissa":J
    if-ge v4, v3, :cond_c

    .line 3222
    int-to-long v7, v4

    shl-long/2addr v7, v1

    or-long/2addr v7, v13

    or-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    return-wide v7

    .line 3224
    :cond_c
    cmp-long v1, v13, v23

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    move-wide v7, v9

    :goto_4
    return-wide v7

    .line 3227
    .end local v5    # "mantissa":J
    .restart local v19    # "mantissa":J
    :cond_e
    if-ge v4, v3, :cond_f

    .line 3228
    int-to-long v5, v4

    shl-long/2addr v5, v1

    or-long/2addr v5, v13

    or-long v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    return-wide v5

    .line 3230
    :cond_f
    cmp-long v1, v13, v23

    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    move-wide v7, v9

    :goto_5
    return-wide v7

    .line 3167
    .end local v2    # "exponent":I
    .end local v4    # "scaledExponent":I
    .end local v11    # "bits":J
    .end local v13    # "sign":J
    .end local v19    # "mantissa":J
    :cond_11
    :goto_6
    return-wide p0
.end method

.method public static scalb(FI)F
    .locals 12
    .param p0, "f"    # F
    .param p1, "n"    # I

    .line 3245
    const/16 v0, -0x7f

    if-le p1, v0, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 3246
    add-int/lit8 v0, p1, 0x7f

    shl-int/lit8 v0, v0, 0x17

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    mul-float/2addr v0, p0

    return v0

    .line 3250
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 3253
    :cond_1
    const/16 v1, -0x115

    const/high16 v2, -0x80000000

    if-ge p1, v1, :cond_3

    .line 3254
    cmpl-float v1, p0, v0

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 3256
    :cond_3
    const/16 v1, 0x114

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    if-le p1, v1, :cond_5

    .line 3257
    cmpl-float v0, p0, v0

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    return v3

    .line 3261
    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3262
    .local v1, "bits":I
    const/high16 v5, -0x80000000

    and-int/2addr v5, v1

    .line 3263
    .local v5, "sign":I
    ushr-int/lit8 v6, v1, 0x17

    const/16 v7, 0xff

    and-int/2addr v6, v7

    .line 3264
    .local v6, "exponent":I
    const v8, 0x7fffff

    and-int v9, v1, v8

    .line 3267
    .local v9, "mantissa":I
    add-int v10, v6, p1

    .line 3269
    .local v10, "scaledExponent":I
    const/4 v11, 0x1

    if-gez p1, :cond_a

    .line 3271
    if-lez v10, :cond_6

    .line 3273
    shl-int/lit8 v0, v10, 0x17

    or-int/2addr v0, v5

    or-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 3274
    :cond_6
    const/16 v3, -0x18

    if-le v10, v3, :cond_8

    .line 3278
    const/high16 v0, 0x800000

    or-int/2addr v0, v9

    .line 3281
    .end local v9    # "mantissa":I
    .local v0, "mantissa":I
    neg-int v2, v10

    shl-int v2, v11, v2

    and-int/2addr v2, v0

    .line 3282
    .local v2, "mostSignificantLostBit":I
    rsub-int/lit8 v3, v10, 0x1

    ushr-int/2addr v0, v3

    .line 3283
    if-eqz v2, :cond_7

    .line 3285
    add-int/lit8 v0, v0, 0x1

    .line 3287
    :cond_7
    or-int v3, v5, v0

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    return v3

    .line 3291
    .end local v0    # "mantissa":I
    .end local v2    # "mostSignificantLostBit":I
    .restart local v9    # "mantissa":I
    :cond_8
    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    move v0, v2

    :goto_2
    return v0

    .line 3295
    :cond_a
    if-nez v6, :cond_e

    .line 3298
    :goto_3
    ushr-int/lit8 v0, v9, 0x17

    if-eq v0, v11, :cond_b

    .line 3299
    shl-int/lit8 v9, v9, 0x1

    .line 3300
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 3302
    :cond_b
    add-int/2addr v10, v11

    .line 3303
    and-int v0, v9, v8

    .line 3305
    .end local v9    # "mantissa":I
    .restart local v0    # "mantissa":I
    if-ge v10, v7, :cond_c

    .line 3306
    shl-int/lit8 v2, v10, 0x17

    or-int/2addr v2, v5

    or-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2

    .line 3308
    :cond_c
    if-nez v5, :cond_d

    goto :goto_4

    :cond_d
    move v3, v4

    :goto_4
    return v3

    .line 3311
    .end local v0    # "mantissa":I
    .restart local v9    # "mantissa":I
    :cond_e
    if-ge v10, v7, :cond_f

    .line 3312
    shl-int/lit8 v0, v10, 0x17

    or-int/2addr v0, v5

    or-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 3314
    :cond_f
    if-nez v5, :cond_10

    goto :goto_5

    :cond_10
    move v3, v4

    :goto_5
    return v3

    .line 3251
    .end local v1    # "bits":I
    .end local v5    # "sign":I
    .end local v6    # "exponent":I
    .end local v9    # "mantissa":I
    .end local v10    # "scaledExponent":I
    :cond_11
    :goto_6
    return p0
.end method

.method public static signum(D)D
    .locals 3
    .param p0, "a"    # D

    .line 789
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method public static signum(F)F
    .locals 2
    .param p0, "a"    # F

    .line 798
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static sin(D)D
    .locals 12
    .param p0, "x"    # D

    .line 2322
    const/4 v0, 0x0

    .line 2323
    .local v0, "negative":Z
    const/4 v1, 0x0

    .line 2325
    .local v1, "quadrant":I
    const-wide/16 v2, 0x0

    .line 2328
    .local v2, "xb":D
    move-wide v4, p0

    .line 2329
    .local v4, "xa":D
    const-wide/16 v6, 0x0

    cmpg-double v8, p0, v6

    if-gez v8, :cond_0

    .line 2330
    const/4 v0, 0x1

    .line 2331
    neg-double v4, v4

    .line 2335
    :cond_0
    cmpl-double v8, v4, v6

    if-nez v8, :cond_2

    .line 2336
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    .line 2337
    .local v8, "bits":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_1

    .line 2338
    const-wide/high16 v6, -0x8000000000000000L

    return-wide v6

    .line 2340
    :cond_1
    return-wide v6

    .line 2343
    .end local v8    # "bits":J
    :cond_2
    cmpl-double v6, v4, v4

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    if-nez v6, :cond_7

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v6, v4, v9

    if-nez v6, :cond_3

    goto :goto_2

    .line 2348
    :cond_3
    const-wide v9, 0x414921fb00000000L    # 3294198.0

    cmpl-double v6, v4, v9

    const/4 v9, 0x3

    if-lez v6, :cond_4

    .line 2352
    new-array v6, v9, [D

    .line 2353
    .local v6, "reduceResults":[D
    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->reducePayneHanek(D[D)V

    .line 2354
    const/4 v10, 0x0

    aget-wide v10, v6, v10

    double-to-int v10, v10

    and-int/lit8 v1, v10, 0x3

    .line 2355
    const/4 v9, 0x1

    aget-wide v4, v6, v9

    .line 2356
    const/4 v9, 0x2

    aget-wide v2, v6, v9

    .end local v6    # "reduceResults":[D
    goto :goto_0

    .line 2357
    :cond_4
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v6, v4, v10

    if-lez v6, :cond_5

    .line 2358
    new-instance v6, Lorg/apache/commons/math3/util/FastMath$CodyWaite;

    invoke-direct {v6, v4, v5}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;-><init>(D)V

    .line 2359
    .local v6, "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getK()I

    move-result v10

    and-int/lit8 v1, v10, 0x3

    .line 2360
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemA()D

    move-result-wide v4

    .line 2361
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemB()D

    move-result-wide v2

    goto :goto_1

    .line 2357
    .end local v6    # "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    :cond_5
    :goto_0
    nop

    .line 2364
    :goto_1
    if-eqz v0, :cond_6

    .line 2365
    xor-int/lit8 v1, v1, 0x2

    .line 2368
    :cond_6
    packed-switch v1, :pswitch_data_0

    .line 2378
    return-wide v7

    .line 2376
    :pswitch_0
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosQ(DD)D

    move-result-wide v6

    neg-double v6, v6

    return-wide v6

    .line 2374
    :pswitch_1
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v6

    neg-double v6, v6

    return-wide v6

    .line 2372
    :pswitch_2
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosQ(DD)D

    move-result-wide v6

    return-wide v6

    .line 2370
    :pswitch_3
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v6

    return-wide v6

    .line 2344
    :cond_7
    :goto_2
    return-wide v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static sinQ(DD)D
    .locals 40
    .param p0, "xa"    # D
    .param p2, "xb"    # D

    .line 1813
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1814
    .local v0, "idx":I
    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->EIGHTHS:[D

    aget-wide v1, v1, v0

    sub-double v1, p0, v1

    .line 1817
    .local v1, "epsilon":D
    sget-object v3, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_A:[D

    aget-wide v3, v3, v0

    .line 1818
    .local v3, "sintA":D
    sget-object v5, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_B:[D

    aget-wide v5, v5, v0

    .line 1819
    .local v5, "sintB":D
    sget-object v7, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_A:[D

    aget-wide v7, v7, v0

    .line 1820
    .local v7, "costA":D
    sget-object v9, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_B:[D

    aget-wide v9, v9, v0

    .line 1823
    .local v9, "costB":D
    move-wide v11, v1

    .line 1824
    .local v11, "sinEpsA":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->polySine(D)D

    move-result-wide v13

    .line 1825
    .local v13, "sinEpsB":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 1826
    .local v15, "cosEpsA":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->polyCosine(D)D

    move-result-wide v17

    .line 1829
    .local v17, "cosEpsB":D
    const-wide/high16 v19, 0x41d0000000000000L    # 1.073741824E9

    mul-double v19, v19, v11

    .line 1830
    .local v19, "temp":D
    add-double v21, v11, v19

    sub-double v21, v21, v19

    .line 1831
    .local v21, "temp2":D
    sub-double v23, v11, v21

    add-double v13, v13, v23

    .line 1832
    move-wide/from16 v11, v21

    .line 1858
    const-wide/16 v23, 0x0

    .line 1859
    .local v23, "a":D
    const-wide/16 v25, 0x0

    .line 1861
    .local v25, "b":D
    move-wide/from16 v27, v3

    .line 1862
    .local v27, "t":D
    add-double v29, v23, v27

    .line 1863
    .local v29, "c":D
    sub-double v31, v29, v23

    move/from16 v33, v0

    move-wide/from16 v34, v1

    .end local v0    # "idx":I
    .end local v1    # "epsilon":D
    .local v33, "idx":I
    .local v34, "epsilon":D
    sub-double v0, v31, v27

    neg-double v0, v0

    .line 1864
    .local v0, "d":D
    move-wide/from16 v23, v29

    .line 1865
    add-double v25, v25, v0

    .line 1867
    mul-double v27, v7, v11

    .line 1868
    add-double v29, v23, v27

    .line 1869
    sub-double v31, v29, v23

    move-wide/from16 v36, v0

    .end local v0    # "d":D
    .local v36, "d":D
    sub-double v0, v31, v27

    neg-double v0, v0

    .line 1870
    .end local v36    # "d":D
    .restart local v0    # "d":D
    move-wide/from16 v23, v29

    .line 1871
    add-double v25, v25, v0

    .line 1873
    mul-double v31, v3, v17

    add-double v31, v25, v31

    mul-double v36, v7, v13

    add-double v31, v31, v36

    .line 1888
    .end local v25    # "b":D
    .local v31, "b":D
    add-double v25, v31, v5

    mul-double v36, v9, v11

    add-double v25, v25, v36

    mul-double v36, v5, v17

    add-double v25, v25, v36

    mul-double v36, v9, v13

    add-double v25, v25, v36

    .line 1915
    .end local v31    # "b":D
    .restart local v25    # "b":D
    const-wide/16 v31, 0x0

    cmpl-double v2, p2, v31

    if-eqz v2, :cond_0

    .line 1916
    add-double v31, v7, v9

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    add-double v36, v17, v36

    mul-double v31, v31, v36

    add-double v36, v3, v5

    add-double v38, v11, v13

    mul-double v36, v36, v38

    sub-double v31, v31, v36

    mul-double v27, v31, p2

    .line 1918
    add-double v29, v23, v27

    .line 1919
    sub-double v31, v29, v23

    move-wide/from16 v36, v0

    .end local v0    # "d":D
    .restart local v36    # "d":D
    sub-double v0, v31, v27

    neg-double v0, v0

    .line 1920
    .end local v36    # "d":D
    .restart local v0    # "d":D
    move-wide/from16 v23, v29

    .line 1921
    add-double v25, v25, v0

    goto :goto_0

    .line 1915
    :cond_0
    move-wide/from16 v36, v0

    .line 1924
    :goto_0
    add-double v31, v23, v25

    .line 1926
    .local v31, "result":D
    return-wide v31
.end method

.method public static sinh(D)D
    .locals 31
    .param p0, "x"    # D

    .line 471
    move-wide/from16 v0, p0

    const/4 v2, 0x0

    .line 472
    .local v2, "negate":Z
    cmpl-double v3, v0, v0

    if-eqz v3, :cond_0

    .line 473
    return-wide v0

    .line 481
    :cond_0
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpl-double v3, v0, v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-lez v3, :cond_2

    .line 482
    sget-wide v6, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    cmpl-double v3, v0, v6

    if-ltz v3, :cond_1

    .line 484
    mul-double v6, v0, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    .line 485
    .local v6, "t":D
    mul-double/2addr v4, v6

    mul-double/2addr v4, v6

    return-wide v4

    .line 487
    .end local v6    # "t":D
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    return-wide v6

    .line 489
    :cond_2
    const-wide/high16 v6, -0x3fcc000000000000L    # -20.0

    cmpg-double v3, v0, v6

    if-gez v3, :cond_4

    .line 490
    sget-wide v3, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    neg-double v3, v3

    cmpg-double v3, v0, v3

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    if-gtz v3, :cond_3

    .line 492
    mul-double v6, v0, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    .line 493
    .restart local v6    # "t":D
    mul-double/2addr v4, v6

    mul-double/2addr v4, v6

    return-wide v4

    .line 495
    .end local v6    # "t":D
    :cond_3
    neg-double v6, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    return-wide v6

    .line 499
    :cond_4
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-nez v3, :cond_5

    .line 500
    return-wide v0

    .line 503
    :cond_5
    cmpg-double v3, v0, v6

    if-gez v3, :cond_6

    .line 504
    neg-double v0, v0

    .line 505
    .end local p0    # "x":D
    .local v0, "x":D
    const/4 v2, 0x1

    .line 510
    :cond_6
    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    cmpl-double v3, v0, v8

    const/4 v8, 0x2

    const-wide/high16 v9, 0x41d0000000000000L    # 1.073741824E9

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_7

    .line 511
    new-array v3, v8, [D

    .line 512
    .local v3, "hiPrec":[D
    invoke-static {v0, v1, v6, v7, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    .line 514
    aget-wide v6, v3, v12

    aget-wide v15, v3, v11

    add-double/2addr v6, v15

    .line 515
    .local v6, "ya":D
    aget-wide v15, v3, v12

    sub-double v15, v6, v15

    aget-wide v11, v3, v11

    sub-double v11, v15, v11

    neg-double v11, v11

    .line 517
    .local v11, "yb":D
    mul-double v15, v6, v9

    .line 518
    .local v15, "temp":D
    add-double v17, v6, v15

    sub-double v17, v17, v15

    .line 519
    .local v17, "yaa":D
    sub-double v19, v6, v17

    .line 522
    .local v19, "yab":D
    div-double v21, v13, v6

    .line 523
    .local v21, "recip":D
    mul-double v9, v9, v21

    .line 524
    .end local v15    # "temp":D
    .local v9, "temp":D
    add-double v15, v21, v9

    move-wide/from16 v23, v4

    sub-double v4, v15, v9

    .line 525
    .local v4, "recipa":D
    sub-double v15, v21, v4

    .line 528
    .local v15, "recipb":D
    mul-double v25, v17, v4

    sub-double v13, v13, v25

    mul-double v25, v17, v15

    sub-double v13, v13, v25

    mul-double v25, v19, v4

    sub-double v13, v13, v25

    mul-double v25, v19, v15

    sub-double v13, v13, v25

    mul-double v13, v13, v21

    add-double/2addr v15, v13

    .line 530
    neg-double v13, v11

    mul-double v13, v13, v21

    mul-double v13, v13, v21

    add-double/2addr v13, v15

    .line 532
    .end local v15    # "recipb":D
    .local v13, "recipb":D
    neg-double v4, v4

    .line 533
    neg-double v13, v13

    .line 536
    add-double v8, v6, v4

    .line 537
    .end local v9    # "temp":D
    .local v8, "temp":D
    sub-double v15, v8, v6

    move/from16 p0, v2

    move-object/from16 v25, v3

    .end local v2    # "negate":Z
    .end local v3    # "hiPrec":[D
    .local v25, "hiPrec":[D
    .local p0, "negate":Z
    sub-double v2, v15, v4

    neg-double v2, v2

    add-double/2addr v11, v2

    .line 538
    move-wide v2, v8

    .line 539
    .end local v6    # "ya":D
    .local v2, "ya":D
    add-double v6, v2, v13

    .line 540
    .end local v8    # "temp":D
    .local v6, "temp":D
    sub-double v8, v6, v2

    sub-double/2addr v8, v13

    neg-double v8, v8

    add-double/2addr v11, v8

    .line 541
    move-wide v2, v6

    .line 543
    add-double v8, v2, v11

    .line 544
    .local v8, "result":D
    mul-double v8, v8, v23

    .line 545
    .end local v2    # "ya":D
    .end local v4    # "recipa":D
    .end local v6    # "temp":D
    .end local v11    # "yb":D
    .end local v13    # "recipb":D
    .end local v17    # "yaa":D
    .end local v19    # "yab":D
    .end local v21    # "recip":D
    .end local v25    # "hiPrec":[D
    move-wide/from16 v27, v0

    goto :goto_0

    .line 547
    .end local v8    # "result":D
    .end local p0    # "negate":Z
    .local v2, "negate":Z
    :cond_7
    move/from16 p0, v2

    move-wide/from16 v23, v4

    .end local v2    # "negate":Z
    .restart local p0    # "negate":Z
    new-array v2, v8, [D

    .line 548
    .local v2, "hiPrec":[D
    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->expm1(D[D)D

    .line 550
    aget-wide v3, v2, v12

    aget-wide v5, v2, v11

    add-double/2addr v3, v5

    .line 551
    .local v3, "ya":D
    aget-wide v5, v2, v12

    sub-double v5, v3, v5

    aget-wide v7, v2, v11

    sub-double/2addr v5, v7

    neg-double v5, v5

    .line 554
    .local v5, "yb":D
    add-double v7, v3, v13

    .line 555
    .local v7, "denom":D
    div-double v11, v13, v7

    .line 556
    .local v11, "denomr":D
    sub-double v13, v7, v13

    sub-double/2addr v13, v3

    neg-double v13, v13

    add-double/2addr v13, v5

    .line 557
    .local v13, "denomb":D
    mul-double v15, v3, v11

    .line 558
    .local v15, "ratio":D
    mul-double v17, v15, v9

    .line 559
    .local v17, "temp":D
    add-double v19, v15, v17

    sub-double v19, v19, v17

    .line 560
    .local v19, "ra":D
    sub-double v21, v15, v19

    .line 562
    .local v21, "rb":D
    mul-double/2addr v9, v7

    .line 563
    .end local v17    # "temp":D
    .restart local v9    # "temp":D
    add-double v17, v7, v9

    sub-double v17, v17, v9

    .line 564
    .local v17, "za":D
    sub-double v25, v7, v17

    .line 566
    .local v25, "zb":D
    mul-double v27, v17, v19

    sub-double v27, v3, v27

    mul-double v29, v17, v21

    sub-double v27, v27, v29

    mul-double v29, v25, v19

    sub-double v27, v27, v29

    mul-double v29, v25, v21

    sub-double v27, v27, v29

    mul-double v27, v27, v11

    add-double v21, v21, v27

    .line 569
    mul-double v27, v5, v11

    add-double v21, v21, v27

    .line 570
    move-wide/from16 v27, v0

    .end local v0    # "x":D
    .local v27, "x":D
    neg-double v0, v3

    mul-double/2addr v0, v13

    mul-double/2addr v0, v11

    mul-double/2addr v0, v11

    add-double v21, v21, v0

    .line 573
    add-double v0, v3, v19

    .line 574
    .end local v9    # "temp":D
    .local v0, "temp":D
    sub-double v9, v0, v3

    sub-double v9, v9, v19

    neg-double v9, v9

    add-double/2addr v5, v9

    .line 575
    move-wide v3, v0

    .line 576
    add-double v0, v3, v21

    .line 577
    sub-double v9, v0, v3

    sub-double v9, v9, v21

    neg-double v9, v9

    add-double/2addr v5, v9

    .line 578
    move-wide v3, v0

    .line 580
    add-double v9, v3, v5

    .line 581
    .local v9, "result":D
    mul-double v9, v9, v23

    move-wide v8, v9

    .line 584
    .end local v0    # "temp":D
    .end local v2    # "hiPrec":[D
    .end local v3    # "ya":D
    .end local v5    # "yb":D
    .end local v7    # "denom":D
    .end local v9    # "result":D
    .end local v11    # "denomr":D
    .end local v13    # "denomb":D
    .end local v15    # "ratio":D
    .end local v17    # "za":D
    .end local v19    # "ra":D
    .end local v21    # "rb":D
    .end local v25    # "zb":D
    .restart local v8    # "result":D
    :goto_0
    if-eqz p0, :cond_8

    .line 585
    neg-double v8, v8

    .line 588
    :cond_8
    return-wide v8
.end method

.method public static sqrt(D)D
    .locals 2
    .param p0, "a"    # D

    .line 394
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static subtractExact(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 3861
    sub-int v0, p0, p1

    .line 3864
    .local v0, "sub":I
    xor-int v1, p0, p1

    if-gez v1, :cond_1

    xor-int v1, v0, p1

    if-gez v1, :cond_0

    goto :goto_0

    .line 3865
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 3868
    :cond_1
    :goto_0
    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 3882
    sub-long v0, p0, p2

    .line 3885
    .local v0, "sub":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    xor-long v2, v0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    .line 3886
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 3889
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static tan(D)D
    .locals 22
    .param p0, "x"    # D

    .line 2443
    const/4 v0, 0x0

    .line 2444
    .local v0, "negative":Z
    const/4 v1, 0x0

    .line 2447
    .local v1, "quadrant":I
    move-wide/from16 v2, p0

    .line 2448
    .local v2, "xa":D
    const-wide/16 v4, 0x0

    cmpg-double v6, p0, v4

    if-gez v6, :cond_0

    .line 2449
    const/4 v0, 0x1

    .line 2450
    neg-double v2, v2

    .line 2454
    :cond_0
    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    .line 2455
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 2456
    .local v6, "bits":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_1

    .line 2457
    const-wide/high16 v4, -0x8000000000000000L

    return-wide v4

    .line 2459
    :cond_1
    return-wide v4

    .line 2462
    .end local v6    # "bits":J
    :cond_2
    cmpl-double v4, v2, v2

    if-nez v4, :cond_9

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v2, v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 2467
    :cond_3
    const-wide/16 v4, 0x0

    .line 2468
    .local v4, "xb":D
    const-wide v6, 0x414921fb00000000L    # 3294198.0

    cmpl-double v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/4 v11, 0x1

    if-lez v6, :cond_4

    .line 2472
    new-array v6, v8, [D

    .line 2473
    .local v6, "reduceResults":[D
    invoke-static {v2, v3, v6}, Lorg/apache/commons/math3/util/FastMath;->reducePayneHanek(D[D)V

    .line 2474
    aget-wide v12, v6, v7

    double-to-int v12, v12

    and-int/lit8 v1, v12, 0x3

    .line 2475
    aget-wide v2, v6, v11

    .line 2476
    const/4 v8, 0x2

    aget-wide v4, v6, v8

    .end local v6    # "reduceResults":[D
    goto :goto_0

    .line 2477
    :cond_4
    cmpl-double v6, v2, v9

    if-lez v6, :cond_5

    .line 2478
    new-instance v6, Lorg/apache/commons/math3/util/FastMath$CodyWaite;

    invoke-direct {v6, v2, v3}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;-><init>(D)V

    .line 2479
    .local v6, "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getK()I

    move-result v12

    and-int/lit8 v1, v12, 0x3

    .line 2480
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemA()D

    move-result-wide v2

    .line 2481
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemB()D

    move-result-wide v4

    goto :goto_1

    .line 2477
    .end local v6    # "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    :cond_5
    :goto_0
    nop

    .line 2484
    :goto_1
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    cmpl-double v6, v2, v12

    if-lez v6, :cond_6

    .line 2486
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 2487
    .local v12, "pi2a":D
    const-wide v14, 0x3c91a62633145c07L    # 6.123233995736766E-17

    .line 2489
    .local v14, "pi2b":D
    sub-double v16, v9, v2

    .line 2490
    .local v16, "a":D
    sub-double v8, v16, v9

    add-double/2addr v8, v2

    neg-double v8, v8

    .line 2491
    .local v8, "b":D
    const-wide v18, 0x3c91a62633145c07L    # 6.123233995736766E-17

    sub-double v18, v18, v4

    add-double v8, v8, v18

    .line 2493
    add-double v2, v16, v8

    .line 2494
    sub-double v18, v2, v16

    move-wide/from16 v20, v12

    .end local v12    # "pi2a":D
    .local v20, "pi2a":D
    sub-double v11, v18, v8

    neg-double v4, v11

    .line 2495
    xor-int/lit8 v1, v1, 0x1

    .line 2496
    xor-int/lit8 v0, v0, 0x1

    .line 2500
    .end local v8    # "b":D
    .end local v14    # "pi2b":D
    .end local v16    # "a":D
    .end local v20    # "pi2a":D
    :cond_6
    and-int/lit8 v8, v1, 0x1

    if-nez v8, :cond_7

    .line 2501
    invoke-static {v2, v3, v4, v5, v7}, Lorg/apache/commons/math3/util/FastMath;->tanQ(DDZ)D

    move-result-wide v6

    .local v6, "result":D
    goto :goto_2

    .line 2503
    .end local v6    # "result":D
    :cond_7
    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->tanQ(DDZ)D

    move-result-wide v6

    neg-double v6, v6

    .line 2506
    .restart local v6    # "result":D
    :goto_2
    if-eqz v0, :cond_8

    .line 2507
    neg-double v6, v6

    .line 2510
    :cond_8
    return-wide v6

    .line 2463
    .end local v4    # "xb":D
    .end local v6    # "result":D
    :cond_9
    :goto_3
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    return-wide v4
.end method

.method private static tanQ(DDZ)D
    .locals 58
    .param p0, "xa"    # D
    .param p2, "xb"    # D
    .param p4, "cotanFlag"    # Z

    .line 1957
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1958
    .local v0, "idx":I
    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->EIGHTHS:[D

    aget-wide v1, v1, v0

    sub-double v1, p0, v1

    .line 1961
    .local v1, "epsilon":D
    sget-object v3, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_A:[D

    aget-wide v3, v3, v0

    .line 1962
    .local v3, "sintA":D
    sget-object v5, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_B:[D

    aget-wide v5, v5, v0

    .line 1963
    .local v5, "sintB":D
    sget-object v7, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_A:[D

    aget-wide v7, v7, v0

    .line 1964
    .local v7, "costA":D
    sget-object v9, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_B:[D

    aget-wide v9, v9, v0

    .line 1967
    .local v9, "costB":D
    move-wide v11, v1

    .line 1968
    .local v11, "sinEpsA":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->polySine(D)D

    move-result-wide v13

    .line 1969
    .local v13, "sinEpsB":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 1970
    .local v15, "cosEpsA":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->polyCosine(D)D

    move-result-wide v17

    .line 1973
    .local v17, "cosEpsB":D
    const-wide/high16 v19, 0x41d0000000000000L    # 1.073741824E9

    mul-double v21, v11, v19

    .line 1974
    .local v21, "temp":D
    add-double v23, v11, v21

    sub-double v23, v23, v21

    .line 1975
    .local v23, "temp2":D
    sub-double v25, v11, v23

    add-double v13, v13, v25

    .line 1976
    move-wide/from16 v11, v23

    .line 2001
    const-wide/16 v25, 0x0

    .line 2002
    .local v25, "a":D
    const-wide/16 v27, 0x0

    .line 2005
    .local v27, "b":D
    move-wide/from16 v29, v3

    .line 2006
    .local v29, "t":D
    add-double v31, v25, v29

    .line 2007
    .local v31, "c":D
    sub-double v33, v31, v25

    move/from16 v35, v0

    move-wide/from16 v36, v1

    .end local v0    # "idx":I
    .end local v1    # "epsilon":D
    .local v35, "idx":I
    .local v36, "epsilon":D
    sub-double v0, v33, v29

    neg-double v0, v0

    .line 2008
    .local v0, "d":D
    move-wide/from16 v25, v31

    .line 2009
    add-double v27, v27, v0

    .line 2011
    mul-double v29, v7, v11

    .line 2012
    add-double v31, v25, v29

    .line 2013
    sub-double v33, v31, v25

    move-wide/from16 v38, v0

    .end local v0    # "d":D
    .local v38, "d":D
    sub-double v0, v33, v29

    neg-double v0, v0

    .line 2014
    .end local v38    # "d":D
    .restart local v0    # "d":D
    move-wide/from16 v25, v31

    .line 2015
    add-double v27, v27, v0

    .line 2017
    mul-double v33, v3, v17

    mul-double v38, v7, v13

    add-double v33, v33, v38

    add-double v27, v27, v33

    .line 2018
    mul-double v33, v9, v11

    add-double v33, v5, v33

    mul-double v38, v5, v17

    add-double v33, v33, v38

    mul-double v38, v9, v13

    add-double v33, v33, v38

    add-double v27, v27, v33

    .line 2020
    add-double v33, v25, v27

    .line 2021
    .local v33, "sina":D
    sub-double v38, v33, v25

    move-wide/from16 v40, v0

    .end local v0    # "d":D
    .local v40, "d":D
    sub-double v0, v38, v27

    neg-double v0, v0

    .line 2025
    .local v0, "sinb":D
    const-wide/16 v38, 0x0

    move-wide/from16 v40, v38

    move-wide/from16 v31, v38

    move-wide/from16 v27, v38

    move-wide/from16 v25, v38

    .line 2027
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    mul-double v29, v7, v42

    .line 2028
    add-double v31, v25, v29

    .line 2029
    sub-double v44, v31, v25

    move-wide/from16 v46, v0

    .end local v0    # "sinb":D
    .local v46, "sinb":D
    sub-double v0, v44, v29

    neg-double v0, v0

    .line 2030
    .end local v40    # "d":D
    .local v0, "d":D
    move-wide/from16 v25, v31

    .line 2031
    add-double v27, v27, v0

    .line 2033
    move-wide/from16 v40, v0

    .end local v0    # "d":D
    .restart local v40    # "d":D
    neg-double v0, v3

    mul-double/2addr v0, v11

    .line 2034
    .end local v29    # "t":D
    .local v0, "t":D
    add-double v29, v25, v0

    .line 2035
    .end local v31    # "c":D
    .local v29, "c":D
    sub-double v31, v29, v25

    move-wide/from16 v44, v0

    .end local v0    # "t":D
    .local v44, "t":D
    sub-double v0, v31, v44

    neg-double v0, v0

    .line 2036
    .end local v40    # "d":D
    .local v0, "d":D
    move-wide/from16 v25, v29

    .line 2037
    add-double v27, v27, v0

    .line 2039
    mul-double v42, v42, v9

    mul-double v31, v7, v17

    add-double v42, v42, v31

    mul-double v31, v9, v17

    add-double v42, v42, v31

    add-double v27, v27, v42

    .line 2040
    mul-double v31, v5, v11

    mul-double v40, v3, v13

    add-double v31, v31, v40

    mul-double v40, v5, v13

    add-double v31, v31, v40

    sub-double v27, v27, v31

    .line 2042
    add-double v31, v25, v27

    .line 2043
    .local v31, "cosa":D
    sub-double v40, v31, v25

    move-wide/from16 v42, v0

    .end local v0    # "d":D
    .local v42, "d":D
    sub-double v0, v40, v27

    neg-double v0, v0

    .line 2045
    .local v0, "cosb":D
    if-eqz p4, :cond_0

    .line 2047
    move-wide/from16 v40, v31

    .local v40, "tmp":D
    move-wide/from16 v31, v33

    move-wide/from16 v33, v40

    .line 2048
    move-wide/from16 v40, v0

    move-wide/from16 v0, v46

    move-wide/from16 v46, v40

    move-wide/from16 v40, v31

    move-wide/from16 v31, v0

    move-wide/from16 v0, v33

    move-wide/from16 v33, v40

    move-wide/from16 v40, v46

    goto :goto_0

    .line 2045
    .end local v40    # "tmp":D
    :cond_0
    move-wide/from16 v40, v31

    move-wide/from16 v31, v0

    move-wide/from16 v0, v33

    move-wide/from16 v33, v40

    move-wide/from16 v40, v46

    .line 2062
    .end local v46    # "sinb":D
    .local v0, "sina":D
    .local v31, "cosb":D
    .local v33, "cosa":D
    .local v40, "sinb":D
    :goto_0
    div-double v46, v0, v33

    .line 2065
    .local v46, "est":D
    mul-double v21, v46, v19

    .line 2066
    add-double v48, v46, v21

    sub-double v48, v48, v21

    .line 2067
    .local v48, "esta":D
    sub-double v50, v46, v48

    .line 2069
    .local v50, "estb":D
    mul-double v19, v19, v33

    .line 2070
    .end local v21    # "temp":D
    .local v19, "temp":D
    add-double v21, v33, v19

    sub-double v21, v21, v19

    .line 2071
    .local v21, "cosaa":D
    sub-double v52, v33, v21

    .line 2074
    .local v52, "cosab":D
    mul-double v54, v48, v21

    sub-double v54, v0, v54

    mul-double v56, v48, v52

    sub-double v54, v54, v56

    mul-double v56, v50, v21

    sub-double v54, v54, v56

    mul-double v56, v50, v52

    sub-double v54, v54, v56

    div-double v54, v54, v33

    .line 2075
    .local v54, "err":D
    div-double v56, v40, v33

    add-double v54, v54, v56

    .line 2076
    move-wide/from16 v56, v3

    .end local v3    # "sintA":D
    .local v56, "sintA":D
    neg-double v2, v0

    mul-double v2, v2, v31

    div-double v2, v2, v33

    div-double v2, v2, v33

    add-double v54, v54, v2

    .line 2078
    cmpl-double v2, p2, v38

    if-eqz v2, :cond_2

    .line 2081
    mul-double v2, v46, v46

    mul-double v2, v2, p2

    add-double v2, p2, v2

    .line 2082
    .local v2, "xbadj":D
    if-eqz p4, :cond_1

    .line 2083
    neg-double v2, v2

    .line 2086
    :cond_1
    add-double v54, v54, v2

    .line 2089
    .end local v2    # "xbadj":D
    :cond_2
    add-double v2, v46, v54

    return-wide v2
.end method

.method public static tanh(D)D
    .locals 33
    .param p0, "x"    # D

    .line 596
    move-wide/from16 v0, p0

    const/4 v2, 0x0

    .line 598
    .local v2, "negate":Z
    cmpl-double v3, v0, v0

    if-eqz v3, :cond_0

    .line 599
    return-wide v0

    .line 608
    :cond_0
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpl-double v3, v0, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_1

    .line 609
    return-wide v4

    .line 612
    :cond_1
    const-wide/high16 v6, -0x3fcc000000000000L    # -20.0

    cmpg-double v3, v0, v6

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    if-gez v3, :cond_2

    .line 613
    return-wide v6

    .line 616
    :cond_2
    const-wide/16 v8, 0x0

    cmpl-double v3, v0, v8

    if-nez v3, :cond_3

    .line 617
    return-wide v0

    .line 620
    :cond_3
    cmpg-double v3, v0, v8

    if-gez v3, :cond_4

    .line 621
    neg-double v0, v0

    .line 622
    .end local p0    # "x":D
    .local v0, "x":D
    const/4 v2, 0x1

    .line 626
    :cond_4
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v0, v10

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    if-ltz v3, :cond_5

    .line 627
    new-array v3, v10, [D

    .line 629
    .local v3, "hiPrec":[D
    move-wide/from16 v17, v4

    mul-double v4, v0, v15

    invoke-static {v4, v5, v8, v9, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    .line 631
    aget-wide v4, v3, v14

    aget-wide v8, v3, v13

    add-double/2addr v4, v8

    .line 632
    .local v4, "ya":D
    aget-wide v8, v3, v14

    sub-double v8, v4, v8

    aget-wide v13, v3, v13

    sub-double/2addr v8, v13

    neg-double v8, v8

    .line 635
    .local v8, "yb":D
    add-double/2addr v6, v4

    .line 636
    .local v6, "na":D
    add-double v13, v6, v17

    sub-double/2addr v13, v4

    neg-double v13, v13

    .line 637
    .local v13, "nb":D
    add-double v15, v6, v8

    .line 638
    .local v15, "temp":D
    sub-double v19, v15, v6

    const-wide/high16 p0, 0x41d0000000000000L    # 1.073741824E9

    sub-double v11, v19, v8

    neg-double v10, v11

    add-double/2addr v13, v10

    .line 639
    move-wide v6, v15

    .line 642
    add-double v10, v4, v17

    .line 643
    .local v10, "da":D
    sub-double v17, v10, v17

    move-wide/from16 v19, v0

    .end local v0    # "x":D
    .local v19, "x":D
    sub-double v0, v17, v4

    neg-double v0, v0

    .line 644
    .local v0, "db":D
    add-double v15, v10, v8

    .line 645
    sub-double v17, v15, v10

    move-wide/from16 v21, v0

    .end local v0    # "db":D
    .local v21, "db":D
    sub-double v0, v17, v8

    neg-double v0, v0

    add-double v0, v21, v0

    .line 646
    .end local v21    # "db":D
    .restart local v0    # "db":D
    move-wide v10, v15

    .line 648
    mul-double v15, v10, p0

    .line 649
    add-double v17, v10, v15

    sub-double v17, v17, v15

    .line 650
    .local v17, "daa":D
    sub-double v21, v10, v17

    .line 653
    .local v21, "dab":D
    div-double v23, v6, v10

    .line 654
    .local v23, "ratio":D
    mul-double v15, v23, p0

    .line 655
    add-double v25, v23, v15

    sub-double v25, v25, v15

    .line 656
    .local v25, "ratioa":D
    sub-double v27, v23, v25

    .line 659
    .local v27, "ratiob":D
    mul-double v29, v17, v25

    sub-double v29, v6, v29

    mul-double v31, v17, v27

    sub-double v29, v29, v31

    mul-double v31, v21, v25

    sub-double v29, v29, v31

    mul-double v31, v21, v27

    sub-double v29, v29, v31

    div-double v29, v29, v10

    add-double v27, v27, v29

    .line 662
    div-double v29, v13, v10

    add-double v27, v27, v29

    .line 664
    move v12, v2

    move-object/from16 v29, v3

    .end local v2    # "negate":Z
    .end local v3    # "hiPrec":[D
    .local v12, "negate":Z
    .local v29, "hiPrec":[D
    neg-double v2, v0

    mul-double/2addr v2, v6

    div-double/2addr v2, v10

    div-double/2addr v2, v10

    add-double v27, v27, v2

    .line 666
    add-double v25, v25, v27

    .line 667
    .end local v0    # "db":D
    .end local v4    # "ya":D
    .end local v6    # "na":D
    .end local v8    # "yb":D
    .end local v10    # "da":D
    .end local v13    # "nb":D
    .end local v15    # "temp":D
    .end local v17    # "daa":D
    .end local v21    # "dab":D
    .end local v23    # "ratio":D
    .end local v27    # "ratiob":D
    .end local v29    # "hiPrec":[D
    .local v25, "result":D
    move-wide/from16 v0, v25

    goto :goto_0

    .line 669
    .end local v12    # "negate":Z
    .end local v19    # "x":D
    .end local v25    # "result":D
    .local v0, "x":D
    .restart local v2    # "negate":Z
    :cond_5
    move-wide/from16 v19, v0

    move v12, v2

    const-wide/high16 p0, 0x41d0000000000000L    # 1.073741824E9

    .end local v0    # "x":D
    .end local v2    # "negate":Z
    .restart local v12    # "negate":Z
    .restart local v19    # "x":D
    new-array v0, v10, [D

    .line 671
    .local v0, "hiPrec":[D
    mul-double v1, v19, v15

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/util/FastMath;->expm1(D[D)D

    .line 673
    aget-wide v1, v0, v14

    aget-wide v3, v0, v13

    add-double/2addr v1, v3

    .line 674
    .local v1, "ya":D
    aget-wide v3, v0, v14

    sub-double v3, v1, v3

    aget-wide v5, v0, v13

    sub-double/2addr v3, v5

    neg-double v3, v3

    .line 677
    .local v3, "yb":D
    move-wide v5, v1

    .line 678
    .local v5, "na":D
    move-wide v7, v3

    .line 681
    .local v7, "nb":D
    add-double v9, v1, v15

    .line 682
    .local v9, "da":D
    sub-double v13, v9, v15

    sub-double/2addr v13, v1

    neg-double v13, v13

    .line 683
    .local v13, "db":D
    add-double v15, v9, v3

    .line 684
    .restart local v15    # "temp":D
    sub-double v17, v15, v9

    move-object v11, v0

    move-wide/from16 v21, v1

    .end local v0    # "hiPrec":[D
    .end local v1    # "ya":D
    .local v11, "hiPrec":[D
    .local v21, "ya":D
    sub-double v0, v17, v3

    neg-double v0, v0

    add-double/2addr v13, v0

    .line 685
    move-wide v0, v15

    .line 687
    .end local v9    # "da":D
    .local v0, "da":D
    mul-double v9, v0, p0

    .line 688
    .end local v15    # "temp":D
    .local v9, "temp":D
    add-double v15, v0, v9

    sub-double/2addr v15, v9

    .line 689
    .local v15, "daa":D
    sub-double v17, v0, v15

    .line 692
    .local v17, "dab":D
    div-double v23, v5, v0

    .line 693
    .restart local v23    # "ratio":D
    mul-double v9, v23, p0

    .line 694
    add-double v25, v23, v9

    sub-double v25, v25, v9

    .line 695
    .local v25, "ratioa":D
    sub-double v27, v23, v25

    .line 698
    .restart local v27    # "ratiob":D
    mul-double v29, v15, v25

    sub-double v29, v5, v29

    mul-double v31, v15, v27

    sub-double v29, v29, v31

    mul-double v31, v17, v25

    sub-double v29, v29, v31

    mul-double v31, v17, v27

    sub-double v29, v29, v31

    div-double v29, v29, v0

    add-double v27, v27, v29

    .line 701
    div-double v29, v7, v0

    add-double v27, v27, v29

    .line 703
    move-wide/from16 p0, v0

    .end local v0    # "da":D
    .local p0, "da":D
    neg-double v0, v13

    mul-double/2addr v0, v5

    div-double v0, v0, p0

    div-double v0, v0, p0

    add-double v27, v27, v0

    .line 705
    add-double v0, v25, v27

    .line 708
    .end local v3    # "yb":D
    .end local v5    # "na":D
    .end local v7    # "nb":D
    .end local v9    # "temp":D
    .end local v11    # "hiPrec":[D
    .end local v13    # "db":D
    .end local v15    # "daa":D
    .end local v17    # "dab":D
    .end local v21    # "ya":D
    .end local v23    # "ratio":D
    .end local v25    # "ratioa":D
    .end local v27    # "ratiob":D
    .end local p0    # "da":D
    .local v0, "result":D
    :goto_0
    if-eqz v12, :cond_6

    .line 709
    neg-double v0, v0

    .line 712
    :cond_6
    return-wide v0
.end method

.method public static toDegrees(D)D
    .locals 16
    .param p0, "x"    # D

    .line 3072
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3077
    :cond_0
    const-wide v0, 0x404ca5dc00000000L    # 57.2957763671875

    .line 3078
    .local v0, "facta":D
    const-wide v2, 0x3eca63c1f7b86153L    # 3.145894820876798E-6

    .line 3080
    .local v2, "factb":D
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v4

    .line 3081
    .local v4, "xa":D
    sub-double v6, p0, v4

    .line 3083
    .local v6, "xb":D
    const-wide v8, 0x3eca63c1f7b86153L    # 3.145894820876798E-6

    mul-double v10, v6, v8

    const-wide v12, 0x404ca5dc00000000L    # 57.2957763671875

    mul-double v14, v6, v12

    add-double/2addr v10, v14

    mul-double/2addr v8, v4

    add-double/2addr v10, v8

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    return-wide v10

    .line 3073
    .end local v0    # "facta":D
    .end local v2    # "factb":D
    .end local v4    # "xa":D
    .end local v6    # "xb":D
    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static toIntExact(J)I
    .locals 3
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 3739
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 3742
    long-to-int v0, p0

    return v0

    .line 3740
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static toRadians(D)D
    .locals 18
    .param p0, "x"    # D

    .line 3047
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 3052
    :cond_0
    const-wide v2, 0x3f91df4680000000L    # 0.01745329052209854

    .line 3053
    .local v2, "facta":D
    const-wide v4, 0x3e21294e9c8ae0ecL    # 1.997844754509471E-9

    .line 3055
    .local v4, "factb":D
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v6

    .line 3056
    .local v6, "xa":D
    sub-double v8, p0, v6

    .line 3058
    .local v8, "xb":D
    const-wide v10, 0x3e21294e9c8ae0ecL    # 1.997844754509471E-9

    mul-double v12, v8, v10

    const-wide v14, 0x3f91df4680000000L    # 0.01745329052209854

    mul-double v16, v8, v14

    add-double v12, v12, v16

    mul-double/2addr v10, v6

    add-double/2addr v12, v10

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    .line 3059
    .local v12, "result":D
    cmpl-double v0, v12, v0

    if-nez v0, :cond_1

    .line 3060
    mul-double v12, v12, p0

    .line 3062
    :cond_1
    return-wide v12

    .line 3048
    .end local v2    # "facta":D
    .end local v4    # "factb":D
    .end local v6    # "xa":D
    .end local v8    # "xb":D
    .end local v12    # "result":D
    :cond_2
    :goto_0
    return-wide p0
.end method

.method public static ulp(D)D
    .locals 4
    .param p0, "x"    # D

    .line 3134
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3135
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 3137
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(F)F
    .locals 1
    .param p0, "x"    # F

    .line 3146
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3147
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0

    .line 3149
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float v0, p0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v0

    return v0
.end method
