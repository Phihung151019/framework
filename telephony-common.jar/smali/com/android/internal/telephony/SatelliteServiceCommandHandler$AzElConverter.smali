.class Lcom/android/internal/telephony/SatelliteServiceCommandHandler$AzElConverter;
.super Ljava/lang/Object;
.source "SatelliteServiceCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SatelliteServiceCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AzElConverter"
.end annotation


# direct methods
.method public static blacklist calculateAzEl(DD[I)[F
    .locals 16

    .line 844
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 845
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 846
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$AzElConverter;->llhToEcef(DD)[D

    move-result-object v4

    const/4 v5, 0x0

    .line 849
    aget v6, p4, v5

    int-to-double v6, v6

    aget-wide v8, v4, v5

    sub-double/2addr v6, v8

    const/4 v8, 0x1

    aget v9, p4, v8

    int-to-double v9, v9

    aget-wide v11, v4, v8

    sub-double/2addr v9, v11

    const/4 v11, 0x2

    aget v12, p4, v11

    int-to-double v12, v12

    aget-wide v14, v4, v11

    sub-double/2addr v12, v14

    const/4 v4, 0x3

    new-array v4, v4, [D

    aput-wide v6, v4, v5

    aput-wide v9, v4, v8

    aput-wide v12, v4, v11

    .line 856
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    neg-double v6, v6

    aget-wide v9, v4, v5

    mul-double/2addr v6, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    aget-wide v12, v4, v8

    mul-double/2addr v9, v12

    add-double/2addr v6, v9

    .line 857
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    neg-double v9, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v9, v12

    aget-wide v12, v4, v5

    mul-double/2addr v9, v12

    .line 858
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    aget-wide v14, v4, v8

    mul-double/2addr v12, v14

    sub-double/2addr v9, v12

    .line 859
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    aget-wide v14, v4, v11

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    .line 860
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    aget-wide v14, v4, v5

    mul-double/2addr v12, v14

    .line 861
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v14, v2

    aget-wide v2, v4, v8

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    .line 862
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    aget-wide v2, v4, v11

    mul-double/2addr v0, v2

    add-double/2addr v12, v0

    .line 865
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    :cond_0
    mul-double/2addr v6, v6

    mul-double/2addr v9, v9

    add-double/2addr v6, v9

    .line 871
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 872
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 874
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    new-array v2, v11, [F

    aput v0, v2, v5

    aput v1, v2, v8

    return-object v2
.end method

.method public static blacklist llhToEcef(DD)[D
    .locals 8

    .line 827
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 828
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    .line 829
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 830
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v4, 0x3f7b6b90f1fe94efL    # 0.006694379990141316

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    .line 832
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x415854a640000000L    # 6378137.0

    div-double/2addr v6, v4

    mul-double/2addr p0, v6

    mul-double/2addr p2, p0

    mul-double/2addr p0, v2

    const-wide v2, 0x3fefc928de1c02d6L    # 0.9933056200098587

    mul-double/2addr v6, v2

    mul-double/2addr v6, v0

    const/4 v0, 0x3

    .line 837
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    const/4 p2, 0x1

    aput-wide p0, v0, p2

    const/4 p0, 0x2

    aput-wide v6, v0, p0

    return-object v0
.end method
