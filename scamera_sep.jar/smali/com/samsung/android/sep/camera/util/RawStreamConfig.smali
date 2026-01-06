.class public Lcom/samsung/android/sep/camera/util/RawStreamConfig;
.super Ljava/lang/Object;
.source "RawStreamConfig.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
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

.field private sensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

.field private final size:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;I)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "format"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->deviceId:I

    .line 34
    iput-object p2, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    .line 35
    iput p3, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->format:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILandroid/util/Size;Lcom/samsung/android/sep/camera/util/SensorPixelMode;I)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "sensorPixelMode"    # Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .param p4, "format"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->deviceId:I

    .line 40
    iput-object p2, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    .line 41
    iput p4, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->format:I

    .line 42
    iput-object p3, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->sensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 43
    return-void
.end method

.method public static unMarshal([I)Ljava/util/List;
    .locals 9
    .param p0, "metas"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "streamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/RawStreamConfig;>;"
    if-eqz p0, :cond_5

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x5

    if-lez v1, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 63
    add-int/lit8 v2, v1, 0x0

    aget v2, p0, v2

    .line 65
    .local v2, "deviceId":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 66
    .local v3, "lastIndex":I
    move v4, v3

    .line 67
    .local v4, "insertIndex":I
    new-instance v5, Landroid/util/Size;

    add-int/lit8 v6, v1, 0x1

    aget v6, p0, v6

    add-int/lit8 v7, v1, 0x2

    aget v7, p0, v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 72
    .local v5, "size":Landroid/util/Size;
    const/4 v6, 0x0

    .local v6, "currentIndex":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 74
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    invoke-virtual {v7}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    add-int/lit8 v4, v6, 0x1

    .line 72
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 79
    .end local v6    # "currentIndex":I
    :cond_2
    add-int/lit8 v6, v1, 0x3

    aget v6, p0, v6

    .line 80
    invoke-static {v6}, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->find(I)Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    move-result-object v6

    .line 81
    .local v6, "sensorPixelMode":Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    add-int/lit8 v7, v1, 0x4

    aget v7, p0, v7

    .line 82
    .local v7, "format":I
    if-nez v7, :cond_3

    .line 83
    const/16 v7, 0x20

    .line 85
    :cond_3
    new-instance v8, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    invoke-direct {v8, v2, v5, v6, v7}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;-><init>(ILandroid/util/Size;Lcom/samsung/android/sep/camera/util/SensorPixelMode;I)V

    invoke-interface {v0, v4, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 62
    .end local v2    # "deviceId":I
    .end local v3    # "lastIndex":I
    .end local v4    # "insertIndex":I
    .end local v5    # "size":Landroid/util/Size;
    .end local v6    # "sensorPixelMode":Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .end local v7    # "format":I
    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_4
    return-object v0

    .line 59
    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/sep/camera/util/RawStreamConfig;)I
    .locals 3
    .param p1, "o"    # Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    .line 94
    iget-object v0, p1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    .line 95
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 94
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

    .line 10
    check-cast p1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->compareTo(Lcom/samsung/android/sep/camera/util/RawStreamConfig;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->deviceId:I

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    iget v1, v1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->deviceId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    .line 103
    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->sensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->sensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->format:I

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    iget v1, v1, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->format:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 100
    :goto_1
    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->deviceId:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->format:I

    return v0
.end method

.method public getSensorPixelMode()Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->sensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 132
    iget v0, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->deviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->sensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    iget v3, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->format:I

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

    .line 142
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget v1, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->deviceId:I

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->size:Landroid/util/Size;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->sensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    iget v4, p0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->format:I

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 142
    const-string v2, "{deviceId = %d, size = %s, sensorPixelMode = %s, format = %d}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
