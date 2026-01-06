.class public Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
.super Ljava/lang/Object;
.source "SecStreamConfig.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final SEC_STREAM_CONFIG_INDEX_DEVICE_ID:I = 0x0

.field public static final SEC_STREAM_CONFIG_INDEX_FORMAT:I = 0x4

.field public static final SEC_STREAM_CONFIG_INDEX_HEIGHT:I = 0x2

.field public static final SEC_STREAM_CONFIG_INDEX_SENSOR_PIXEL_MODE:I = 0x3

.field public static final SEC_STREAM_CONFIG_INDEX_WIDTH:I = 0x1

.field public static final SEC_STREAM_CONFIG_LENGTH:I = 0x5


# instance fields
.field private final deviceId:I

.field private final format:I

.field private final sensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

.field private final size:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;)V
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "sensorPixelMode"    # Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    .line 68
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;-><init>(ILandroid/util/Size;Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(ILandroid/util/Size;Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;I)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "sensorPixelMode"    # Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .param p4, "format"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->deviceId:I

    .line 83
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    .line 84
    iput-object p3, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->sensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    .line 85
    iput p4, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->format:I

    .line 86
    return-void
.end method

.method public static unMarshal([I)Ljava/util/List;
    .locals 9
    .param p0, "metas"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "streamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    if-eqz p0, :cond_5

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x5

    if-lez v1, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 109
    add-int/lit8 v2, v1, 0x0

    aget v2, p0, v2

    .line 111
    .local v2, "deviceId":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 112
    .local v3, "lastIndex":I
    move v4, v3

    .line 113
    .local v4, "insertIndex":I
    new-instance v5, Landroid/util/Size;

    add-int/lit8 v6, v1, 0x1

    aget v6, p0, v6

    add-int/lit8 v7, v1, 0x2

    aget v7, p0, v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 116
    .local v5, "size":Landroid/util/Size;
    const/4 v6, 0x0

    .local v6, "currentIndex":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 118
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    invoke-virtual {v7}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    add-int/lit8 v4, v6, 0x1

    .line 116
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 123
    .end local v6    # "currentIndex":I
    :cond_2
    add-int/lit8 v6, v1, 0x3

    aget v6, p0, v6

    invoke-static {v6}, Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;->find(I)Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    move-result-object v6

    .line 125
    .local v6, "sensorPixelMode":Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    add-int/lit8 v7, v1, 0x4

    aget v7, p0, v7

    .line 126
    .local v7, "format":I
    if-nez v7, :cond_3

    .line 127
    const/16 v7, 0x20

    .line 129
    :cond_3
    new-instance v8, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    invoke-direct {v8, v2, v5, v6, v7}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;-><init>(ILandroid/util/Size;Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;I)V

    invoke-interface {v0, v4, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    .end local v2    # "deviceId":I
    .end local v3    # "lastIndex":I
    .end local v4    # "insertIndex":I
    .end local v5    # "size":Landroid/util/Size;
    .end local v6    # "sensorPixelMode":Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .end local v7    # "format":I
    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_4
    return-object v0

    .line 105
    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)I
    .locals 3
    .param p1, "o"    # Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 145
    iget-object v0, p1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    .line 146
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    check-cast p1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->compareTo(Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 157
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->deviceId:I

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    iget v1, v1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->deviceId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    iget-object v1, v1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    .line 159
    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->sensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    iget-object v1, v1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->sensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->format:I

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    iget v1, v1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->format:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 157
    :goto_1
    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->deviceId:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->format:I

    return v0
.end method

.method public getSensorPixelMode()Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->sensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 211
    iget v0, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->deviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->sensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    iget v3, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->format:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 224
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget v1, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->deviceId:I

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->size:Landroid/util/Size;

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->sensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    iget v4, p0, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->format:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 224
    const-string v2, "{deviceId = %d, size = %s, sensorPixelMode = %s, format = %s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
