.class public Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
.super Ljava/lang/Object;
.source "RawPcStreamOutputConfig.java"


# instance fields
.field private mFormat:I

.field private mImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

.field private mOption:I

.field private mPhysicalId:Ljava/lang/String;

.field private mSensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

.field private mSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/util/Size;Ljava/lang/String;I)V
    .locals 4
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "physicalId"    # Ljava/lang/String;
    .param p3, "format"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSize:Landroid/util/Size;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mPhysicalId:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mFormat:I

    .line 32
    new-instance v0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSize:Landroid/util/Size;

    .line 35
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSize:Landroid/util/Size;

    .line 36
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 38
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->getRawImageReaderMaxBufferCount()I

    move-result v3

    .line 34
    invoke-static {v1, v2, p3, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Ljava/lang/String;Lcom/samsung/android/sep/camera/util/SensorPixelMode;I)V
    .locals 4
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "physicalId"    # Ljava/lang/String;
    .param p3, "sensorPixelMode"    # Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .param p4, "format"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSize:Landroid/util/Size;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mPhysicalId:Ljava/lang/String;

    .line 45
    iput p4, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mFormat:I

    .line 46
    iput-object p3, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 47
    new-instance v0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSize:Landroid/util/Size;

    .line 50
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSize:Landroid/util/Size;

    .line 51
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 53
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->getRawImageReaderMaxBufferCount()I

    move-result v3

    .line 49
    invoke-static {v1, v2, p4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 54
    return-void
.end method


# virtual methods
.method public getFormat()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mFormat:I

    return v0
.end method

.method public getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    return-object v0
.end method

.method public getOption()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mOption:I

    return v0
.end method

.method public getPhysicalId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mPhysicalId:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorPixelMode()Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->close()V

    .line 126
    :cond_0
    return-void
.end method

.method public setOption(I)V
    .locals 0
    .param p1, "option"    # I

    .line 89
    iput p1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mOption:I

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawOutputConfig{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",physicalId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mPhysicalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sensorMode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->mSensorPixelMode:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
