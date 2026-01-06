.class public Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionImageUtil;
.super Ljava/lang/Object;
.source "ExtensionImageUtil.java"


# static fields
.field private static final JPEG_DEFAULT_QUALITY:I = 0x64

.field private static final JPEG_DEFAULT_ROTATION:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionImageUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionImageUtil;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "sec_camerax_util_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static native compressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I
.end method

.method public static produceCaptureImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Landroid/media/ImageWriter;)V
    .locals 26
    .param p0, "yuvImage"    # Landroid/media/Image;
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "imageWriter"    # Landroid/media/ImageWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "unable to produce image"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    .line 65
    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    goto/16 :goto_0

    .line 66
    :cond_0
    move-object/from16 v2, p0

    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v3

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1

    .line 67
    invoke-virtual {v1}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v3

    .line 69
    .local v3, "jpegImage":Landroid/media/Image;
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 70
    .local v17, "jpegBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 72
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v18

    .line 73
    .local v18, "jpegCapacity":I
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 74
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    .line 73
    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    .line 75
    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 74
    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v19

    .line 76
    .local v19, "jpegQuality":I
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 77
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 76
    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 77
    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 80
    .local v4, "jpegOrientation":I
    rem-int/lit16 v6, v4, 0x168

    rsub-int v6, v6, 0x168

    div-int/lit8 v24, v6, 0x5a

    .line 82
    .end local v4    # "jpegOrientation":I
    .local v24, "jpegOrientation":I
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v5

    .line 83
    .local v4, "yPlane":Landroid/media/Image$Plane;
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 84
    .local v5, "crPlane":Landroid/media/Image$Plane;
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v25, v6, v7

    .line 86
    .local v25, "cbPlane":Landroid/media/Image$Plane;
    nop

    .line 87
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v7

    .line 88
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 89
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v12

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 90
    invoke-virtual/range {v25 .. v25}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v25 .. v25}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    invoke-virtual/range {v25 .. v25}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    .line 92
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v22

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v23

    .line 86
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v6 .. v24}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionImageUtil;->compressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I

    .line 94
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/media/Image;->setTimestamp(J)V

    .line 96
    invoke-virtual {v1, v3}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 97
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 98
    .end local v3    # "jpegImage":Landroid/media/Image;
    .end local v4    # "yPlane":Landroid/media/Image$Plane;
    .end local v5    # "crPlane":Landroid/media/Image$Plane;
    .end local v17    # "jpegBuffer":Ljava/nio/ByteBuffer;
    .end local v18    # "jpegCapacity":I
    .end local v19    # "jpegQuality":I
    .end local v24    # "jpegOrientation":I
    .end local v25    # "cbPlane":Landroid/media/Image$Plane;
    nop

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_1
    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionImageUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image format is not supported, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
