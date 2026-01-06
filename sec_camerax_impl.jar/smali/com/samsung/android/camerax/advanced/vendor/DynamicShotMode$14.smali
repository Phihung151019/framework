.class final enum Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$14;
.super Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;
.source "DynamicShotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/util/List;)V
    .locals 6
    .param p3, "dsMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 348
    .local p4, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p3    # "dsMode":I
    .end local p4    # "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    .local v3, "dsMode":I
    .local v4, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;-><init>(Ljava/lang/String;IILjava/util/List;Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/util/List;Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$14;-><init>(Ljava/lang/String;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCaptureIndexInfo(I)Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;
    .locals 4
    .param p1, "shotCountIndex"    # I

    .line 352
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 353
    sget-boolean v2, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_CAMERA_SUPPORT_MACRO_RAW_SR_DRAFT_RAW:Z

    .line 354
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 353
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    new-instance v0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;-><init>(ZZ)V

    return-object v0

    .line 358
    :cond_0
    new-instance v2, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;-><init>(ZZ)V

    return-object v2

    .line 360
    :cond_1
    new-instance v2, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;-><init>(ZZ)V

    return-object v2
.end method
