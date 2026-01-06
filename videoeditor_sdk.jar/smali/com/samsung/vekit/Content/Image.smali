.class public Lcom/samsung/vekit/Content/Image;
.super Lcom/samsung/vekit/Content/Content;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Content/Image$ImageStorageType;
    }
.end annotation


# static fields
.field private static final IMAGE_BUFFER_SIZE:I = 0xf00


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private filePath:Ljava/lang/String;

.field private imageDecoderType:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

.field private imageStorageType:Lcom/samsung/vekit/Content/Image$ImageStorageType;

.field private needUpdate:Z

.field private orientation:I

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->IMAGE:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Image;->needUpdate:Z

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Content/Image;->targetWidth:I

    .line 23
    iput v0, p0, Lcom/samsung/vekit/Content/Image;->targetHeight:I

    .line 24
    iput v0, p0, Lcom/samsung/vekit/Content/Image;->orientation:I

    .line 25
    sget-object v0, Lcom/samsung/vekit/Common/Type/ImageDecoderType;->DEFAULT:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/Image;->imageDecoderType:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    .line 31
    sget-object v0, Lcom/samsung/vekit/Content/Image$ImageStorageType;->PATH:Lcom/samsung/vekit/Content/Image$ImageStorageType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/Image;->imageStorageType:Lcom/samsung/vekit/Content/Image$ImageStorageType;

    .line 32
    return-void
.end method

.method private resetBitmap()V
    .locals 2

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Content/Image;->filePath:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/samsung/vekit/Content/Image;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Content/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/vekit/Content/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    :cond_0
    iput-object v0, p0, Lcom/samsung/vekit/Content/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 120
    return-void
.end method

.method private updateImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/samsung/vekit/Common/Util/ImageUtil;->parseImage(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/ImageInfo;

    move-result-object v0

    .line 112
    .local v0, "info":Lcom/samsung/vekit/Common/Object/ImageInfo;
    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/ImageInfo;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Content/Image;->setOrientation(I)Lcom/samsung/vekit/Content/Image;

    .line 113
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/vekit/Content/Image;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageDecoderType()Lcom/samsung/vekit/Common/Type/ImageDecoderType;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/vekit/Content/Image;->imageDecoderType:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    return-object v0
.end method

.method public getImageStorageType()Lcom/samsung/vekit/Content/Image$ImageStorageType;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/vekit/Content/Image;->imageStorageType:Lcom/samsung/vekit/Content/Image$ImageStorageType;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/samsung/vekit/Content/Image;->orientation:I

    return v0
.end method

.method public getTargetHeight()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/vekit/Content/Image;->targetHeight:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/samsung/vekit/Content/Image;->targetWidth:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/vekit/Content/Image;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 63
    invoke-direct {p0}, Lcom/samsung/vekit/Content/Image;->resetBitmap()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Image;->needUpdate:Z

    .line 65
    iput-object p1, p0, Lcom/samsung/vekit/Content/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Content/Image;->width:I

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Content/Image;->height:I

    .line 68
    sget-object v0, Lcom/samsung/vekit/Content/Image$ImageStorageType;->BUFFER:Lcom/samsung/vekit/Content/Image$ImageStorageType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/Image;->imageStorageType:Lcom/samsung/vekit/Content/Image$ImageStorageType;

    .line 69
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Image;->setDuration(J)Lcom/samsung/vekit/Content/Image;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Content/Image;
    .locals 1
    .param p1, "duration"    # J

    .line 55
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Image;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/samsung/vekit/Content/Image;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/samsung/vekit/Content/Image$ImageStorageType;->PATH:Lcom/samsung/vekit/Content/Image$ImageStorageType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/Image;->imageStorageType:Lcom/samsung/vekit/Content/Image$ImageStorageType;

    .line 36
    invoke-direct {p0}, Lcom/samsung/vekit/Content/Image;->resetBitmap()V

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/vekit/Content/Image;->updateImage(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/samsung/vekit/Content/Image;->filePath:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Image;->needUpdate:Z

    .line 40
    return-object p0
.end method

.method public bridge synthetic setHeight(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Image;->setHeight(I)Lcom/samsung/vekit/Content/Image;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)Lcom/samsung/vekit/Content/Image;
    .locals 1
    .param p1, "height"    # I

    .line 50
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setHeight(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Image;

    return-object v0
.end method

.method public setImageDecoderType(Lcom/samsung/vekit/Common/Type/ImageDecoderType;)V
    .locals 0
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    .line 138
    iput-object p1, p0, Lcom/samsung/vekit/Content/Image;->imageDecoderType:Lcom/samsung/vekit/Common/Type/ImageDecoderType;

    .line 139
    return-void
.end method

.method public setImageStorageType(Lcom/samsung/vekit/Content/Image$ImageStorageType;)Lcom/samsung/vekit/Content/Image;
    .locals 0
    .param p1, "imageStorageType"    # Lcom/samsung/vekit/Content/Image$ImageStorageType;

    .line 78
    iput-object p1, p0, Lcom/samsung/vekit/Content/Image;->imageStorageType:Lcom/samsung/vekit/Content/Image$ImageStorageType;

    .line 79
    return-object p0
.end method

.method public setOrientation(I)Lcom/samsung/vekit/Content/Image;
    .locals 0
    .param p1, "orientation"    # I

    .line 83
    iput p1, p0, Lcom/samsung/vekit/Content/Image;->orientation:I

    .line 84
    return-object p0
.end method

.method public setSize(II)Lcom/samsung/vekit/Content/Image;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 101
    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Image;->setWidth(I)Lcom/samsung/vekit/Content/Image;

    .line 104
    invoke-virtual {p0, p2}, Lcom/samsung/vekit/Content/Image;->setHeight(I)Lcom/samsung/vekit/Content/Image;

    .line 105
    const/16 v0, 0xf00

    invoke-static {p1, p2, v0, v0}, Lcom/samsung/vekit/Common/Util/ImageUtil;->calculateInSampleSize(IIII)I

    move-result v0

    .line 106
    .local v0, "sampleSize":I
    div-int v1, p1, v0

    div-int v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/vekit/Content/Image;->setTargetSize(II)Lcom/samsung/vekit/Content/Image;

    .line 107
    return-object p0

    .line 102
    .end local v0    # "sampleSize":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setTargetSize(II)Lcom/samsung/vekit/Content/Image;
    .locals 0
    .param p1, "targetwidth"    # I
    .param p2, "targetHeight"    # I

    .line 92
    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iput p1, p0, Lcom/samsung/vekit/Content/Image;->targetWidth:I

    .line 96
    iput p2, p0, Lcom/samsung/vekit/Content/Image;->targetHeight:I

    .line 97
    return-object p0

    .line 93
    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic setWidth(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Image;->setWidth(I)Lcom/samsung/vekit/Content/Image;

    move-result-object p1

    return-object p1
.end method

.method public setWidth(I)Lcom/samsung/vekit/Content/Image;
    .locals 1
    .param p1, "width"    # I

    .line 45
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setWidth(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Image;

    return-object v0
.end method

.method public update()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/samsung/vekit/Content/Content;->update()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Image;->needUpdate:Z

    .line 126
    return-void
.end method
