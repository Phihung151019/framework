.class final enum Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$50;
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

    .line 906
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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$50;-><init>(Ljava/lang/String;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCaptureIndexInfo(I)Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;
    .locals 3
    .param p1, "shotCountIndex"    # I

    .line 914
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 915
    new-instance v1, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;

    invoke-direct {v1, v0, v0}, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;-><init>(ZZ)V

    return-object v1

    .line 917
    :cond_0
    new-instance v1, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;-><init>(ZZ)V

    return-object v1
.end method

.method public getSensorPixelMode(Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;III)Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .locals 1
    .param p1, "picFormat"    # Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;
    .param p2, "shootingMode"    # I
    .param p3, "shotCountIndex"    # I
    .param p4, "totalShotCount"    # I

    .line 923
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;->UN_COMP:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_AI_HIGH_RES_SUPPORT_DRAFT_DOWNSCALE:Z

    if-eqz v0, :cond_0

    .line 925
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;->MODE_MINIMUM_RESOLUTION:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    return-object v0

    .line 927
    :cond_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;->MODE_MAXIMUM_RESOLUTION:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    return-object v0
.end method
