.class public final Lcom/samsung/android/mcf/continuity/common/FeatureUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final sContinuityFeature:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->isWatch()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/samsung/android/mcf/continuity/sem/SemWrapper;->BUILD_VERSION_PLATFORM_INT:I

    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sput v0, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->sContinuityFeature:I

    .line 28
    .line 29
    return-void
.end method

.method public static isContinuityFeatureEnabled()Z
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->sContinuityFeature:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
