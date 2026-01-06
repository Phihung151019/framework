.class final enum Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$56;
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
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "dsMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1081
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;-><init>(Ljava/lang/String;IILcom/samsung/android/camerax/advanced/vendor/DynamicShotMode-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/camerax/advanced/vendor/DynamicShotMode-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$56;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getSensorPixelMode(Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;III)Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .locals 1
    .param p1, "picFormat"    # Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PicFormat;
    .param p2, "shootingMode"    # I
    .param p3, "shotCountIndex"    # I
    .param p4, "totalShotCount"    # I

    .line 1085
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;->MODE_MINIMUM_RESOLUTION:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    return-object v0
.end method
