.class public final Lcom/samsung/android/mcf/continuity/common/VersionUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static mServiceSupportFeatures:I = -0x1


# direct methods
.method public static getServiceVersionCode(Landroid/content/Context;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    const-string v0, "com.samsung.android.mcfds"

    .line 6
    .line 7
    const/16 v1, 0x80

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-wide v0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "NameNotFoundException "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "VersionUtil"

    .line 40
    .line 41
    const-string v1, "getServiceVersionCode"

    .line 42
    .line 43
    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const-wide/16 v0, -0x1

    .line 47
    .line 48
    return-wide v0
.end method

.method public static initServiceSupportFeatures(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getServiceVersionCode(Landroid/content/Context;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 p0, 0x0

    .line 6
    sput p0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    .line 7
    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-wide/32 v2, 0x186a0

    .line 16
    .line 17
    .line 18
    div-long v2, v0, v2

    .line 19
    .line 20
    long-to-int v2, v2

    .line 21
    new-instance v3, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticLambda1;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const-string v4, "VersionUtil"

    .line 27
    .line 28
    const-string v5, "getSupportFeature"

    .line 29
    .line 30
    invoke-static {v4, v5, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 31
    .line 32
    .line 33
    const/16 v3, 0x44c

    .line 34
    .line 35
    if-gt v3, v2, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    :cond_1
    const/16 v3, 0x4b0

    .line 39
    .line 40
    if-gt v3, v2, :cond_2

    .line 41
    .line 42
    or-int/lit8 p0, p0, 0x2

    .line 43
    .line 44
    :cond_2
    const/16 v3, 0x4b1

    .line 45
    .line 46
    if-gt v3, v2, :cond_3

    .line 47
    .line 48
    or-int/lit8 p0, p0, 0x8

    .line 49
    .line 50
    :cond_3
    const/16 v3, 0x4b9

    .line 51
    .line 52
    if-gt v3, v2, :cond_4

    .line 53
    .line 54
    or-int/lit8 p0, p0, 0x10

    .line 55
    .line 56
    :cond_4
    const/16 v3, 0x4bd

    .line 57
    .line 58
    if-gt v3, v2, :cond_5

    .line 59
    .line 60
    or-int/lit8 p0, p0, 0x20

    .line 61
    .line 62
    :cond_5
    if-gt v3, v2, :cond_6

    .line 63
    .line 64
    or-int/lit8 p0, p0, 0x40

    .line 65
    .line 66
    :cond_6
    const/16 v3, 0x4bf

    .line 67
    .line 68
    if-gt v3, v2, :cond_7

    .line 69
    .line 70
    or-int/lit16 p0, p0, 0x80

    .line 71
    .line 72
    :cond_7
    if-gt v3, v2, :cond_8

    .line 73
    .line 74
    or-int/lit16 p0, p0, 0x100

    .line 75
    .line 76
    :cond_8
    const/16 v3, 0x4c7

    .line 77
    .line 78
    if-gt v3, v2, :cond_9

    .line 79
    .line 80
    or-int/lit16 p0, p0, 0x200

    .line 81
    .line 82
    :cond_9
    if-gt v3, v2, :cond_a

    .line 83
    .line 84
    or-int/lit16 p0, p0, 0x400

    .line 85
    .line 86
    :cond_a
    if-gt v3, v2, :cond_b

    .line 87
    .line 88
    or-int/lit16 p0, p0, 0x800

    .line 89
    .line 90
    :cond_b
    sput p0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    .line 91
    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "serviceVersionCode - "

    .line 95
    .line 96
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, ", mSupportFeatures - "

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    sget v0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string v0, "initSupportFeatures"

    .line 117
    .line 118
    invoke-static {v4, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static isNetworkTypeSupported()Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public static isServiceSupportAppId(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x1f

    .line 4
    .line 5
    if-eq p0, v2, :cond_1

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-gt p0, v2, :cond_0

    .line 11
    .line 12
    move p0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p0, 0x8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    const/16 p0, 0x400

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/16 p0, 0x100

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_2
    move p0, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :pswitch_3
    const/4 p0, 0x2

    .line 26
    :goto_0
    sget v2, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    and-int/2addr p0, v2

    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    return v0

    .line 36
    :cond_3
    :goto_1
    return v1

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
