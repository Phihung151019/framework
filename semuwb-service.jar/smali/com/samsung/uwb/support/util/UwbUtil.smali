.class public final Lcom/samsung/uwb/support/util/UwbUtil;
.super Ljava/lang/Object;
.source "UwbUtil.java"


# static fields
.field public static final BYTE_TO_INT:I = 0xff

.field public static final BYTE_TO_LONG:J = 0xffL

.field public static final C:F = 3.0E8f

.field private static HEXCHARS:[C = null

.field public static final INT_TO_LONG:J = 0xffffffffL

.field public static final LAMBDA_5:F = 0.046232086f

.field public static final LAMBDA_9:F = 0.037561037f

.field public static final PI:F = 3.141592f

.field public static final SHORT_TO_INT:I = 0xffff

.field public static final SHORT_TO_LONG:J = 0xffffL

.field public static final TAG_TYPE_APP:I = 0x0

.field public static final TAG_TYPE_APP_EXT:I = 0x1

.field public static final TAG_TYPE_DEBUG:I = 0x3

.field public static final TAG_TYPE_DEVICE:I = 0x2

.field public static final TAG_TYPE_TEST:I = 0x4

.field public static final TYPE_BYTE:B = 0x1t

.field public static final TYPE_BYTE_ARRAY:B = 0x4t

.field public static final TYPE_INT:B = 0x3t

.field public static final TYPE_SHORT:B = 0x2t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calibrateAoaMeasurements(DDDDDDDDD)D
    .locals 29
    .param p0, "aoaRaw"    # D
    .param p2, "start"    # D
    .param p4, "end"    # D
    .param p6, "d1"    # D
    .param p8, "d2"    # D
    .param p10, "d3"    # D
    .param p12, "phi1"    # D
    .param p14, "phi2"    # D
    .param p16, "phi3"    # D

    .line 586
    const-wide v0, 0x41fdcd6500000000L    # 8.0E9

    .line 587
    .local v0, "fc":D
    const-wide v2, 0x41b1e1a300000000L    # 3.0E8

    .line 588
    .local v2, "c":D
    div-double v4, v2, v0

    .line 590
    .local v4, "lambda":D
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v8, p8, v6

    .line 591
    .local v8, "d_prime":D
    move-wide/from16 v10, p14

    .line 592
    .local v10, "offset":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v14, v8, v12

    div-double/2addr v14, v4

    .line 593
    .local v14, "beta_prime":D
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v14, v16

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    add-double v18, v18, v20

    .line 596
    .local v18, "Delta_theta_prime":D
    cmpl-double v20, p0, p2

    if-ltz v20, :cond_0

    cmpg-double v20, p0, p4

    if-gtz v20, :cond_0

    .line 597
    div-double v6, p8, v6

    .line 598
    .local v6, "d":D
    mul-double/2addr v12, v6

    div-double/2addr v12, v4

    .line 599
    .local v12, "beta":D
    invoke-static/range {p14 .. p15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .local v20, "Delta_phi":D
    goto :goto_0

    .line 600
    .end local v6    # "d":D
    .end local v12    # "beta":D
    .end local v20    # "Delta_phi":D
    :cond_0
    cmpl-double v20, p0, p4

    if-lez v20, :cond_1

    .line 601
    div-double v6, p10, v6

    .line 602
    .restart local v6    # "d":D
    mul-double/2addr v12, v6

    div-double/2addr v12, v4

    .line 603
    .restart local v12    # "beta":D
    invoke-static/range {p16 .. p17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .restart local v20    # "Delta_phi":D
    goto :goto_0

    .line 605
    .end local v6    # "d":D
    .end local v12    # "beta":D
    .end local v20    # "Delta_phi":D
    :cond_1
    div-double v6, p6, v6

    .line 606
    .restart local v6    # "d":D
    mul-double/2addr v12, v6

    div-double/2addr v12, v4

    .line 607
    .restart local v12    # "beta":D
    invoke-static/range {p12 .. p13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 610
    .restart local v20    # "Delta_phi":D
    :goto_0
    sub-double v22, v18, v20

    .line 611
    .local v22, "Delta_theta":D
    const-wide v24, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    mul-double v24, v24, v12

    cmpg-double v24, v22, v24

    const-wide v25, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v24, :cond_2

    .line 612
    add-double v22, v22, v25

    goto :goto_1

    .line 613
    :cond_2
    mul-double v27, v12, v16

    cmpl-double v24, v22, v27

    if-lez v24, :cond_3

    .line 614
    sub-double v22, v22, v25

    .line 617
    :cond_3
    :goto_1
    mul-double v24, v12, v16

    div-double v24, v22, v24

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v24, v26

    if-gtz v24, :cond_5

    mul-double v24, v12, v16

    div-double v24, v22, v24

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_4

    goto :goto_2

    .line 621
    :cond_4
    mul-double v16, v16, v12

    div-double v16, v22, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    .line 622
    .local v16, "aoaCalibrated":D
    return-wide v16

    .line 618
    .end local v16    # "aoaCalibrated":D
    :cond_5
    :goto_2
    return-wide p0
.end method

.method public static convertFloatToQFormat(FII)I
    .locals 5
    .param p0, "in"    # F
    .param p1, "nInts"    # I
    .param p2, "nFracs"    # I

    .line 471
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 472
    float-to-int v0, p0

    .line 473
    .local v0, "qInt":I
    int-to-float v2, v0

    sub-float v2, p0, v2

    shl-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 474
    .local v1, "qFracs":I
    shl-int v2, v0, p2

    add-int/2addr v2, v1

    .local v2, "inputStream":I
    goto :goto_0

    .line 476
    .end local v0    # "qInt":I
    .end local v1    # "qFracs":I
    .end local v2    # "inputStream":I
    :cond_0
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 477
    .restart local v0    # "qInt":I
    int-to-float v2, v0

    sub-float v2, p0, v2

    shl-int v3, v1, p2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 478
    .local v2, "qFracs":I
    add-int/lit8 v3, p1, 0x1

    shl-int/2addr v1, v3

    add-int/2addr v1, v0

    shl-int/2addr v1, p2

    add-int/2addr v1, v2

    move v4, v2

    move v2, v1

    move v1, v4

    .line 481
    .restart local v1    # "qFracs":I
    .local v2, "inputStream":I
    :goto_0
    return v2
.end method

.method public static convertQFormatToFloat(III)F
    .locals 7
    .param p0, "qIn"    # I
    .param p1, "nInts"    # I
    .param p2, "nFracs"    # I

    .line 453
    shr-int v0, p0, p2

    .line 454
    .local v0, "intPart":I
    const/4 v1, 0x1

    shl-int v2, v1, p2

    sub-int/2addr v2, v1

    and-int v1, p0, v2

    int-to-double v1, v1

    .line 455
    .local v1, "fracPart":D
    neg-int v3, p2

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v1

    .line 456
    .end local v1    # "fracPart":D
    .local v3, "fracPart":D
    int-to-float v1, v0

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public static convertToIntArrayFormat([B)V
    .locals 3
    .param p0, "byteArray"    # [B

    .line 423
    if-nez p0, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 427
    .local v0, "intArray":[I
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 428
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 429
    return-void
.end method

.method public static final convertToInteger(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x10

    if-le v0, v1, :cond_0

    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    :goto_0
    return v0
.end method

.method public static convertToRequiredFormat([BB)V
    .locals 1
    .param p0, "byteArray"    # [B
    .param p1, "type"    # B

    .line 432
    if-nez p0, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 436
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->convertToShortArrayFormat([B)V

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 438
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->convertToIntArrayFormat([B)V

    .line 440
    :cond_2
    :goto_0
    return-void
.end method

.method public static convertToShortArrayFormat([B)V
    .locals 3
    .param p0, "byteArray"    # [B

    .line 414
    if-nez p0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 418
    .local v0, "shortArray":[S
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 419
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 420
    return-void
.end method

.method public static degToRad(F)F
    .locals 4
    .param p0, "angleInDegrees"    # F

    .line 402
    const v0, 0x40490fd8

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static floor(FI)F
    .locals 5
    .param p0, "in"    # F
    .param p1, "n"    # I

    .line 543
    const/high16 v0, 0x3f800000    # 1.0f

    .line 544
    .local v0, "shift":F
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 545
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    goto :goto_0

    .line 548
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    mul-float v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    goto :goto_1

    :cond_1
    mul-float v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    :goto_1
    float-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public static get3dAoaAzimuth(IFF)F
    .locals 16
    .param p0, "dist"    # I
    .param p1, "aoa_x"    # F
    .param p2, "aoa_z"    # F

    .line 520
    move/from16 v1, p0

    int-to-double v2, v1

    const/high16 v0, 0x43340000    # 180.0f

    div-float v4, p1, v0

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 521
    .local v2, "x_cord":D
    int-to-double v4, v1

    div-float v0, p2, v0

    float-to-double v8, v0

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    .line 522
    .local v4, "z_cord":D
    const-wide/16 v8, 0x0

    .line 523
    .local v8, "y_cord":D
    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v10, v14

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v10, v14

    const-wide/16 v14, 0x0

    cmpl-double v0, v10, v14

    if-lez v0, :cond_0

    .line 524
    int-to-double v10, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v10, v14

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 526
    :cond_0
    div-double v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-double/2addr v10, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v6

    double-to-float v0, v10

    return v0

    .line 527
    .end local v2    # "x_cord":D
    .end local v4    # "z_cord":D
    .end local v8    # "y_cord":D
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method public static get3dAoaElevation(F)F
    .locals 1
    .param p0, "aoa_z"    # F

    .line 539
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method public static getAppParameterValueType(Ljava/lang/String;)I
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .line 562
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "30"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "2B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "2A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "27"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v0, "0F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_6
    const-string v0, "0A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "09"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "08"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 577
    return v1

    .line 575
    :pswitch_0
    return v2

    .line 569
    :pswitch_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x608 -> :sswitch_8
        0x609 -> :sswitch_7
        0x611 -> :sswitch_6
        0x616 -> :sswitch_5
        0x61f -> :sswitch_4
        0x645 -> :sswitch_3
        0x64f -> :sswitch_2
        0x650 -> :sswitch_1
        0x65d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAverage([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 626
    const-wide/16 v0, 0x0

    .line 628
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 629
    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    .line 628
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    .end local v2    # "i":I
    :cond_0
    array-length v2, p0

    int-to-double v2, v2

    div-double v2, v0, v2

    return-wide v2
.end method

.method public static getByte(Ljava/nio/ByteBuffer;)B
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 287
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public static getByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .line 355
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 356
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 357
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getByteArray(Ljava/nio/ByteBuffer;I)[B
    .locals 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .line 317
    new-array v0, p1, [B

    .line 318
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 319
    return-object v0
.end method

.method public static getByteArray(S)[B
    .locals 2
    .param p0, "value"    # S

    .line 338
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 339
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 340
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getByteArray([BJ)[B
    .locals 2
    .param p0, "b"    # [B
    .param p1, "value"    # J

    .line 330
    long-to-int v0, p1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    .line 331
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p0, v1

    .line 332
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p0, v1

    .line 333
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p0, v1

    .line 334
    return-object p0
.end method

.method public static getByteArray([I)[B
    .locals 3
    .param p0, "valueArray"    # [I

    .line 361
    if-nez p0, :cond_0

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 364
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 365
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 366
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getByteArray([S)[B
    .locals 3
    .param p0, "valueArray"    # [S

    .line 344
    if-nez p0, :cond_0

    .line 345
    const/4 v0, 0x0

    return-object v0

    .line 347
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 348
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 349
    aget-short v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getByteArrayFromByteBuffer(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 179
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static getByteArrayLE(Ljava/nio/ByteBuffer;I)[B
    .locals 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .line 324
    new-array v0, p1, [B

    .line 325
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 326
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->getReverseArray([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getDecimalString(Ljava/nio/ByteOrder;[B)Ljava/lang/String;
    .locals 3
    .param p0, "order"    # Ljava/nio/ByteOrder;
    .param p1, "byteArray"    # [B

    .line 653
    array-length v0, p1

    if-gtz v0, :cond_0

    .line 654
    const/4 v0, 0x0

    return-object v0

    .line 656
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    invoke-static {p1}, Lcom/samsung/uwb/support/util/UwbUtil;->getReverseArray([B)[B

    .line 659
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 660
    .local v0, "res":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    .line 661
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 663
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getExtAppParameterValueType(Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 581
    const/4 v0, 0x1

    return v0
.end method

.method public static getFloat(Ljava/nio/ByteBuffer;)F
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 312
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 307
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/nio/ByteBuffer;B)I
    .locals 3
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 263
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getByte(Ljava/nio/ByteBuffer;)B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    goto :goto_0

    .line 264
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 265
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getShort(Ljava/nio/ByteBuffer;)S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 267
    :cond_1
    :goto_0
    return v0
.end method

.method public static getIntArrayFromByteBuffer(Ljava/nio/ByteBuffer;)[I
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 197
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    .line 198
    .local v0, "length":I
    const/4 v1, 0x0

    .line 199
    .local v1, "i":I
    div-int/lit8 v2, v0, 0x4

    new-array v2, v2, [I

    .line 200
    .local v2, "intArray":[I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 202
    .local v3, "x":I
    div-int/lit8 v4, v1, 0x4

    aput v3, v2, v4

    .line 203
    nop

    .end local v3    # "x":I
    add-int/lit8 v1, v1, 0x4

    .line 204
    goto :goto_0

    .line 205
    :cond_0
    return-object v2
.end method

.method public static getIntLE(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static getIntLE(Ljava/nio/ByteBuffer;B)I
    .locals 3
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 277
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getByte(Ljava/nio/ByteBuffer;)B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    goto :goto_0

    .line 278
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 279
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getShortLE(Ljava/nio/ByteBuffer;)S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 281
    :cond_1
    :goto_0
    return v0
.end method

.method public static getLong(I)J
    .locals 4
    .param p0, "val"    # I

    .line 213
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getLong(Ljava/nio/ByteBuffer;B)J
    .locals 6
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B

    .line 229
    const-wide/16 v0, 0x0

    .line 230
    .local v0, "value":J
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 231
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getByte(Ljava/nio/ByteBuffer;)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long v0, v2, v4

    goto :goto_0

    .line 232
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 233
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getShort(Ljava/nio/ByteBuffer;)S

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long v0, v2, v4

    goto :goto_0

    .line 234
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 235
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v0, v2, v4

    .line 237
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static getLong([B)J
    .locals 3
    .param p0, "bytes"    # [B

    .line 220
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 221
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getLongLE(Ljava/nio/ByteBuffer;B)J
    .locals 6
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B

    .line 245
    const-wide/16 v0, 0x0

    .line 246
    .local v0, "value":J
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 247
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getByte(Ljava/nio/ByteBuffer;)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long v0, v2, v4

    goto :goto_0

    .line 248
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 249
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getShortLE(Ljava/nio/ByteBuffer;)S

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long v0, v2, v4

    goto :goto_0

    .line 250
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 251
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getIntLE(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v0, v2, v4

    .line 253
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static getReverseArray([B)[B
    .locals 5
    .param p0, "array"    # [B

    .line 372
    if-nez p0, :cond_0

    .line 373
    const/4 v0, 0x0

    return-object v0

    .line 375
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 377
    .local v0, "res":[B
    const/4 v1, 0x0

    .line 378
    .local v1, "i":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .line 379
    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_1

    .line 380
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "j":I
    .local v4, "j":I
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    move v1, v3

    move v2, v4

    goto :goto_0

    .line 383
    .end local v3    # "i":I
    .end local v4    # "j":I
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public static getReverseArray([BI)[B
    .locals 5
    .param p0, "array"    # [B
    .param p1, "len"    # I

    .line 387
    if-nez p0, :cond_0

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 390
    :cond_0
    new-array v0, p1, [B

    .line 392
    .local v0, "res":[B
    const/4 v1, 0x0

    .line 393
    .local v1, "i":I
    add-int/lit8 v2, p1, -0x1

    .line 394
    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_1

    .line 395
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "j":I
    .local v4, "j":I
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    move v1, v3

    move v2, v4

    goto :goto_0

    .line 398
    .end local v3    # "i":I
    .end local v4    # "j":I
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public static getShort(Ljava/nio/ByteBuffer;)S
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public static getShortArrayFromByteBuffer(Ljava/nio/ByteBuffer;)[S
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 184
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    .line 185
    .local v0, "length":I
    const/4 v1, 0x0

    .line 186
    .local v1, "i":I
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [S

    .line 187
    .local v2, "shortArray":[S
    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    .line 189
    .local v3, "x":S
    div-int/lit8 v4, v1, 0x2

    aput-short v3, v2, v4

    .line 190
    nop

    .end local v3    # "x":S
    add-int/lit8 v1, v1, 0x2

    .line 191
    goto :goto_0

    .line 192
    :cond_0
    return-object v2
.end method

.method public static getShortLE(Ljava/nio/ByteBuffer;)S
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 292
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public static getString([B)Ljava/lang/String;
    .locals 5
    .param p0, "arr"    # [B

    .line 667
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 668
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 669
    .local v3, "value":B
    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 668
    .end local v3    # "value":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getValueType(Ljava/lang/String;I)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 552
    packed-switch p1, :pswitch_data_0

    .line 558
    const/4 v0, 0x1

    return v0

    .line 556
    :pswitch_0
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getExtAppParameterValueType(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 554
    :pswitch_1
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getAppParameterValueType(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVariance([D)D
    .locals 9
    .param p0, "array"    # [D

    .line 636
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 637
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 640
    :cond_0
    const-wide/16 v0, 0x0

    .line 642
    .local v0, "sum":D
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->getAverage([D)D

    move-result-wide v2

    .line 644
    .local v2, "avg":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 645
    aget-wide v5, p0, v4

    sub-double/2addr v5, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    .line 644
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 647
    .end local v4    # "i":I
    :cond_1
    array-length v4, p0

    int-to-double v4, v4

    div-double v4, v0, v4

    .line 649
    .local v4, "ret":D
    return-wide v4
.end method

.method public static isBitSet(II)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "mask"    # I

    .line 675
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExtendedTag(B)Z
    .locals 1
    .param p0, "tag"    # B

    .line 679
    const/16 v0, -0x20

    if-lt p0, v0, :cond_0

    const/16 v0, -0x1d

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExtendedTestTag(B)Z
    .locals 1
    .param p0, "tag"    # B

    .line 683
    const/16 v0, -0x20

    if-lt p0, v0, :cond_0

    const/16 v0, -0x1b

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static radToDeg(F)F
    .locals 4
    .param p0, "angleInRadians"    # F

    .line 406
    float-to-double v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb00000000L    # 3.141592025756836

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static toByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .line 145
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(ILjava/nio/ByteOrder;)[B
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 162
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 170
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 171
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 172
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 170
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static toByteArray(S)[B
    .locals 2
    .param p0, "value"    # S

    .line 122
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(SLjava/nio/ByteOrder;)[B
    .locals 2
    .param p0, "value"    # S
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 139
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray([ILjava/nio/ByteOrder;)[B
    .locals 3
    .param p0, "valueArray"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 155
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 156
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray([SLjava/nio/ByteOrder;)[B
    .locals 3
    .param p0, "valueArray"    # [S
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 128
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 133
    aget-short v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static toFloatString([F)Ljava/lang/String;
    .locals 1
    .param p0, "arr"    # [F

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toHexString(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 51
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    sget-object v1, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .locals 7
    .param p0, "var"    # I

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 97
    .local v0, "byteArray":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 98
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 99
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 100
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v4, v0, v2

    .line 103
    .local v4, "b":B
    sget-object v5, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    sget-object v5, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .end local v4    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toHexString(S)Ljava/lang/String;
    .locals 7
    .param p0, "var"    # S

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 111
    .local v0, "byteArray":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 112
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v4, v0, v2

    .line 115
    .local v4, "b":B
    sget-object v5, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    sget-object v5, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .end local v4    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 59
    const/4 v1, 0x0

    return-object v1

    .line 61
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 62
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 63
    .local v2, "b":I
    sget-object v3, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    sget-object v3, Lcom/samsung/uwb/support/util/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toHexString([I)Ljava/lang/String;
    .locals 5
    .param p0, "arr"    # [I

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 76
    .local v3, "b":I
    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .end local v3    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toIntString([I)Ljava/lang/String;
    .locals 1
    .param p0, "arr"    # [I

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toSignedFloat(III)F
    .locals 3
    .param p0, "nIntput"    # I
    .param p1, "nBits"    # I
    .param p2, "nDivider"    # I

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "value":F
    if-lez p2, :cond_0

    .line 487
    sub-int v1, p0, p1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .end local v0    # "value":F
    .local v1, "value":F
    goto :goto_0

    .line 489
    .end local v1    # "value":F
    .restart local v0    # "value":F
    :cond_0
    int-to-float v1, p0

    .line 491
    .end local v0    # "value":F
    .restart local v1    # "value":F
    :goto_0
    return v1
.end method

.method public static twos_compliment(II)I
    .locals 2
    .param p0, "nInput"    # I
    .param p1, "nBits"    # I

    .line 502
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 503
    shl-int v0, v1, p1

    sub-int/2addr p0, v0

    .line 505
    :cond_0
    return p0
.end method
