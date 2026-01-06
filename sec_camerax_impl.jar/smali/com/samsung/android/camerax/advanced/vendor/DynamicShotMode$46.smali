.class final enum Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$46;
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

    .line 808
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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$46;-><init>(Ljava/lang/String;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getSensorPixelMode(Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;III)Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .locals 1
    .param p1, "picFormat"    # Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;
    .param p2, "shootingMode"    # I
    .param p3, "shotCountIndex"    # I
    .param p4, "totalShotCount"    # I

    .line 819
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;->MODE_MAXIMUM_RESOLUTION:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    return-object v0
.end method
