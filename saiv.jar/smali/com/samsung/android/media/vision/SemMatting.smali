.class public Lcom/samsung/android/media/vision/SemMatting;
.super Ljava/lang/Object;
.source "SemMatting.java"


# static fields
.field private static final STRIPWIDTH:I = 0x6

.field private static final SUCCESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "InteractiveSegmentation.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doMatting(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "inputImage"    # Landroid/graphics/Bitmap;
    .param p1, "maskImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 34
    return-object v0

    .line 37
    :cond_0
    if-nez p1, :cond_1

    .line 38
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_5

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_4

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 55
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 56
    .local v2, "inbuf":Ljava/nio/ByteBuffer;
    div-int/lit8 v3, v1, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 58
    .local v3, "maskbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 59
    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 61
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 62
    .local v5, "maskByteArray":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 63
    .local v4, "inputByteArray":[B
    div-int/lit8 v6, v1, 0x4

    new-array v6, v6, [B

    .line 65
    .local v6, "matteByteArray":[B
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 67
    .local v10, "matte":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v7, 0x6

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/media/vision/SemMatting;->nativeDoMatting([B[B[BIII)I

    move-result v7

    .line 68
    .local v7, "val":I
    const/4 v8, 0x1

    if-ne v8, v7, :cond_2

    .line 69
    div-int/lit8 v0, v1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    .local v0, "mattebuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 72
    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 73
    return-object v10

    .line 75
    .end local v0    # "mattebuf":Ljava/nio/ByteBuffer;
    :cond_2
    return-object v0

    .line 50
    .end local v1    # "size":I
    .end local v2    # "inbuf":Ljava/nio/ByteBuffer;
    .end local v3    # "maskbuf":Ljava/nio/ByteBuffer;
    .end local v4    # "inputByteArray":[B
    .end local v5    # "maskByteArray":[B
    .end local v6    # "matteByteArray":[B
    .end local v7    # "val":I
    .end local v10    # "matte":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "images size don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FormatMismatch:: MaskImage ALPHA_8 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FormatMismatch:: InputImage ARGB_8888 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeDoMatting([B[B[BIII)I
.end method
