.class public Lcom/samsung/android/sep/camera/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NV21toJPEG([BIII)[B
    .locals 7
    .param p0, "nv21"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 26
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    .end local p0    # "nv21":[B
    .end local p1    # "width":I
    .end local p2    # "height":I
    .local v2, "nv21":[B
    .local v4, "width":I
    .local v5, "height":I
    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 27
    .local v1, "yuv":Landroid/graphics/YuvImage;
    new-instance p0, Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, p3, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static YUV48ToNV21(Landroid/media/Image;)[B
    .locals 19
    .param p0, "image"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "offsetYPlane":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 45
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v8

    .line 46
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    .line 47
    .local v9, "planes":[Landroid/media/Image$Plane;
    mul-int v1, v4, v8

    .line 48
    const/16 v10, 0x23

    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 49
    .local v1, "data":[B
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    new-array v2, v2, [B

    .line 51
    .local v2, "rowData":[B
    const/4 v3, 0x0

    move v11, v3

    .local v11, "i":I
    :goto_0
    array-length v3, v9

    if-ge v11, v3, :cond_4

    .line 52
    aget-object v3, v9, v11

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 53
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    aget-object v3, v9, v11

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    .line 54
    .local v6, "rowStride":I
    aget-object v3, v9, v11

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    .line 56
    .local v5, "pixelStride":I
    move v3, v4

    .line 57
    .local v3, "widthValue":I
    move v12, v8

    .line 58
    .local v12, "heightValue":I
    const/4 v13, 0x0

    .line 60
    .local v13, "offSetMark":I
    if-eqz v11, :cond_0

    .line 61
    div-int/lit8 v3, v4, 0x2

    .line 62
    div-int/lit8 v12, v8, 0x2

    .line 63
    move v13, v0

    move/from16 v18, v13

    move v13, v3

    move/from16 v3, v18

    goto :goto_1

    .line 60
    :cond_0
    move/from16 v18, v13

    move v13, v3

    move/from16 v3, v18

    .line 66
    .local v3, "offSetMark":I
    .local v13, "widthValue":I
    :goto_1
    const/4 v14, 0x0

    move v15, v3

    move/from16 v16, v11

    move-object v11, v1

    move-object v3, v2

    move v2, v14

    .end local v1    # "data":[B
    .local v2, "row":I
    .local v3, "rowData":[B
    .local v11, "data":[B
    .local v15, "offSetMark":I
    .local v16, "i":I
    :goto_2
    if-ge v2, v12, :cond_3

    .line 67
    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    div-int/lit8 v14, v1, 0x8

    .line 68
    .local v14, "bytesPerPixel":I
    if-ne v5, v14, :cond_2

    .line 69
    mul-int v1, v13, v14

    .line 70
    .local v1, "length":I
    invoke-virtual {v7, v11, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 72
    sub-int v10, v12, v2

    move/from16 v17, v0

    .end local v0    # "offsetYPlane":I
    .local v17, "offsetYPlane":I
    const/4 v0, 0x1

    if-eq v10, v0, :cond_1

    .line 73
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    sub-int/2addr v0, v1

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    :cond_1
    add-int v0, v17, v1

    .line 76
    .end local v1    # "length":I
    .end local v17    # "offsetYPlane":I
    .restart local v0    # "offsetYPlane":I
    move v1, v12

    goto :goto_3

    .line 77
    :cond_2
    move/from16 v17, v0

    .line 78
    .end local v0    # "offsetYPlane":I
    .restart local v17    # "offsetYPlane":I
    move v1, v12

    .end local v12    # "heightValue":I
    .local v1, "heightValue":I
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/sep/camera/util/ImageUtil;->YUV48ToNV21HeightDiffHelper(II[BIIILjava/nio/ByteBuffer;)[B

    move-result-object v12

    .line 87
    .end local v3    # "rowData":[B
    .local v12, "rowData":[B
    nop

    .line 88
    move v0, v14

    move v14, v5

    .end local v5    # "pixelStride":I
    .local v0, "bytesPerPixel":I
    .local v14, "pixelStride":I
    invoke-static/range {v11 .. v16}, Lcom/samsung/android/sep/camera/util/ImageUtil;->YUV48ToNV21UVPlaneDataHelper([B[BIIII)[B

    move-result-object v3

    .line 90
    .end local v11    # "data":[B
    .end local v14    # "pixelStride":I
    .local v3, "data":[B
    .restart local v5    # "pixelStride":I
    add-int/2addr v15, v4

    move-object v11, v3

    move-object v3, v12

    move/from16 v0, v17

    .line 66
    .end local v12    # "rowData":[B
    .end local v17    # "offsetYPlane":I
    .local v0, "offsetYPlane":I
    .local v3, "rowData":[B
    .restart local v11    # "data":[B
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v12, v1

    const/16 v10, 0x23

    goto :goto_2

    .end local v1    # "heightValue":I
    .local v12, "heightValue":I
    :cond_3
    move/from16 v17, v0

    move v1, v12

    .line 51
    .end local v0    # "offsetYPlane":I
    .end local v2    # "row":I
    .end local v12    # "heightValue":I
    .end local v13    # "widthValue":I
    .end local v15    # "offSetMark":I
    .restart local v17    # "offsetYPlane":I
    add-int/lit8 v0, v16, 0x1

    move-object v2, v3

    move-object v1, v11

    const/16 v10, 0x23

    move v11, v0

    move/from16 v0, v17

    .end local v16    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 94
    .end local v3    # "rowData":[B
    .end local v5    # "pixelStride":I
    .end local v6    # "rowStride":I
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "data":[B
    .end local v17    # "offsetYPlane":I
    .local v0, "offsetYPlane":I
    .local v1, "data":[B
    .local v2, "rowData":[B
    :cond_4
    return-object v1
.end method

.method private static YUV48ToNV21HeightDiffHelper(II[BIIILjava/nio/ByteBuffer;)[B
    .locals 3
    .param p0, "heightValue"    # I
    .param p1, "row"    # I
    .param p2, "rowData"    # [B
    .param p3, "width"    # I
    .param p4, "pixelStride"    # I
    .param p5, "rowStride"    # I
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;

    .line 118
    sub-int v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 119
    sub-int v0, p3, p4

    add-int/2addr v0, v2

    invoke-virtual {p6, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p6, p2, v1, p5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 123
    :goto_0
    return-object p2
.end method

.method private static YUV48ToNV21UVPlaneDataHelper([B[BIIII)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "rowData"    # [B
    .param p2, "widthValue"    # I
    .param p3, "pixelStride"    # I
    .param p4, "offSetMark"    # I
    .param p5, "i"    # I

    .line 140
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 141
    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    .line 142
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    add-int/2addr v2, p4

    mul-int v1, v0, p3

    aget-byte v1, p1, v1

    aput-byte v1, p0, v2

    goto :goto_1

    .line 143
    :cond_0
    const/4 v1, 0x2

    if-ne p5, v1, :cond_1

    .line 144
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p4

    mul-int v2, v0, p3

    aget-byte v2, p1, v2

    aput-byte v2, p0, v1

    .line 140
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "col":I
    :cond_2
    return-object p0
.end method

.method public static getByteBufferfromJPEGImage(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "image"    # Landroid/media/Image;

    .line 157
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    return-object v0
.end method
