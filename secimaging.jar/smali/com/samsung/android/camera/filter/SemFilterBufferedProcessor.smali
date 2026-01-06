.class public final Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;
.super Ljava/lang/Object;
.source "SemFilterBufferedProcessor.java"


# static fields
.field public static final IMAGE_FORMAT_RGBA_8888:I = 0x0

.field public static final IMAGE_FORMAT_YUV_420_888:I = 0x1

.field private static final MAX_IMAGE_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "SemFilterBufferedProcessor"


# instance fields
.field private isInitialized:Z

.field private mNativeContext:J

.field private mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "secimaging.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_init()V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setup(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private checkInputFilePermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 546
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v1, "currentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    return v2

    .line 555
    :cond_1
    return v0

    .line 547
    .end local v1    # "currentFile":Ljava/io/File;
    :cond_2
    :goto_0
    return v0
.end method

.method private checkOutputFilePermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .line 566
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 571
    .local v1, "separatorPosition":I
    if-gez v1, :cond_1

    .line 572
    return v0

    .line 575
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 576
    return v0

    .line 579
    :cond_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "parentPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .local v4, "parentPathFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 582
    return v2

    .line 585
    :cond_3
    return v0

    .line 567
    .end local v1    # "separatorPosition":I
    .end local v3    # "parentPath":Ljava/lang/String;
    .end local v4    # "parentPathFile":Ljava/io/File;
    :cond_4
    :goto_0
    return v0
.end method

.method private static final native native_init()V
.end method

.method private native native_initialize()V
.end method

.method private native native_process_array([BIII)[B
.end method

.method private native native_process_array_stride([BIIIII)[B
.end method

.method private native native_process_array_stride_overwrite([BIIIIIZ)[B
.end method

.method private native native_process_bitmap(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private native native_process_bitmap_overwrite(Ljava/lang/Object;Z)Ljava/lang/Object;
.end method

.method private native native_process_buffer([III)[I
.end method

.method private native native_process_file(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_release()V
.end method

.method private native native_setEffect(Ljava/lang/String;)V
.end method

.method private native native_setEffect_internal(I)V
.end method

.method private native native_setEffect_parameter(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method


# virtual methods
.method protected checkInitialized()V
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SCameraFilterContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkNotInitialized()V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SCameraFilterContext is already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkNotInitialized()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_initialize()V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setInitialized(Z)V

    .line 111
    return-void
.end method

.method protected isInitialized()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    return v0
.end method

.method public processImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "overwrite"    # Z

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 214
    if-eqz p1, :cond_5

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x2000

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 229
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, "data_ARGB888":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap_overwrite(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    const/4 v0, 0x0

    .line 237
    return-object v3

    .line 240
    :cond_0
    return-object v3

    .line 243
    .end local v0    # "data_ARGB888":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_bitmap_overwrite(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "bitmap":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 246
    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1

    .line 248
    :cond_2
    return-object v3

    .line 224
    .end local v0    # "bitmap":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 224
    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 219
    const-string v2, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "inputFileName"    # Ljava/lang/String;
    .param p2, "outputFileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 307
    if-eqz p1, :cond_5

    .line 311
    if-eqz p2, :cond_4

    .line 315
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInputFilePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-direct {p0, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkOutputFilePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 324
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 327
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v2, v1, :cond_1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v2, v1, :cond_1

    .line 332
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v1, v2, :cond_0

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_file(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 333
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 334
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 333
    const-string v3, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 328
    const-string v3, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output file is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputFileName must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputFileName must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processImage([BIII)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imageFormat"    # I

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 355
    if-eqz p1, :cond_4

    .line 359
    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    if-lt p3, v0, :cond_3

    .line 364
    const/16 v0, 0x2000

    if-gt p2, v0, :cond_2

    if-gt p3, v0, :cond_2

    .line 369
    const-string v0, "Image Buffer Size is not valid."

    packed-switch p4, :pswitch_data_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image Format is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_0
    mul-int v1, p2, p3

    .line 378
    .local v1, "ySize":I
    add-int/lit8 v2, p2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    .line 379
    .local v2, "uvSize":I
    add-int v3, v1, v2

    .line 380
    .local v3, "expectedYUVBufferSize":I
    array-length v4, p1

    if-lt v4, v3, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    .end local v1    # "ySize":I
    .end local v2    # "uvSize":I
    .end local v3    # "expectedYUVBufferSize":I
    :pswitch_1
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    .line 372
    .local v1, "expectedRGBABufferSize":I
    array-length v2, p1

    if-lt v2, v1, :cond_1

    .line 388
    .end local v1    # "expectedRGBABufferSize":I
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array([BIII)[B

    move-result-object v0

    return-object v0

    .line 373
    .restart local v1    # "expectedRGBABufferSize":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    .end local v1    # "expectedRGBABufferSize":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 366
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 365
    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 361
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 360
    const-string v2, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processImage([BIIIII)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imageFormat"    # I
    .param p5, "stride"    # I
    .param p6, "sliceHeight"    # I

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 410
    if-eqz p1, :cond_8

    .line 414
    const-string v0, "Image with size (w=%d, h=%d) is not valid."

    const/4 v1, 0x1

    if-lt p2, v1, :cond_7

    if-lt p3, v1, :cond_7

    .line 419
    const/16 v2, 0x2000

    if-gt p2, v2, :cond_6

    if-gt p3, v2, :cond_6

    .line 424
    if-lt p5, p2, :cond_5

    .line 429
    if-lt p6, p3, :cond_4

    .line 434
    if-lt p5, v1, :cond_3

    if-lt p6, v1, :cond_3

    .line 438
    if-gt p5, v2, :cond_2

    if-gt p6, v2, :cond_2

    .line 442
    const-string v0, "Image Buffer Size is not valid."

    packed-switch p4, :pswitch_data_0

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image Format is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :pswitch_0
    mul-int v1, p5, p6

    .line 451
    .local v1, "ySize":I
    add-int/lit8 v2, p5, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    .line 452
    .local v2, "uvSize":I
    add-int v3, v1, v2

    .line 453
    .local v3, "expectedYUVBufferSize":I
    array-length v4, p1

    if-lt v4, v3, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    .end local v1    # "ySize":I
    .end local v2    # "uvSize":I
    .end local v3    # "expectedYUVBufferSize":I
    :pswitch_1
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    .line 445
    .local v1, "expectedRGBABufferSize":I
    array-length v2, p1

    if-lt v2, v1, :cond_1

    .line 461
    .end local v1    # "expectedRGBABufferSize":I
    :goto_0
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array_stride([BIIIII)[B

    move-result-object v0

    return-object v0

    .line 446
    .restart local v1    # "expectedRGBABufferSize":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    .end local v1    # "expectedRGBABufferSize":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image resolution(w=%d, h=%d) is greater thant the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 431
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 430
    const-string v2, "Image having sliceHeight (sliceHeight=%d) lesser than height (height=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 426
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 425
    const-string v2, "Image having stride (stride=%d) lesser than width (width=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 421
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 420
    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 416
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 415
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processImage([BIIIIIZ)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imageFormat"    # I
    .param p5, "stride"    # I
    .param p6, "sliceHeight"    # I
    .param p7, "overwrite"    # Z

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 484
    if-eqz p1, :cond_8

    .line 488
    const-string v0, "Image with size (w=%d, h=%d) is not valid."

    const/4 v1, 0x1

    if-lt p2, v1, :cond_7

    if-lt p3, v1, :cond_7

    .line 493
    const/16 v2, 0x2000

    if-gt p2, v2, :cond_6

    if-gt p3, v2, :cond_6

    .line 498
    if-lt p5, p2, :cond_5

    .line 503
    if-lt p6, p3, :cond_4

    .line 508
    if-lt p5, v1, :cond_3

    if-lt p6, v1, :cond_3

    .line 512
    if-gt p5, v2, :cond_2

    if-gt p6, v2, :cond_2

    .line 516
    const-string v0, "Image Buffer Size is not valid."

    packed-switch p4, :pswitch_data_0

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image Format is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :pswitch_0
    mul-int v1, p5, p6

    .line 525
    .local v1, "ySize":I
    add-int/lit8 v2, p5, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    .line 526
    .local v2, "uvSize":I
    add-int v3, v1, v2

    .line 527
    .local v3, "expectedYUVBufferSize":I
    array-length v4, p1

    if-lt v4, v3, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 518
    .end local v1    # "ySize":I
    .end local v2    # "uvSize":I
    .end local v3    # "expectedYUVBufferSize":I
    :pswitch_1
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    .line 519
    .local v1, "expectedRGBABufferSize":I
    array-length v2, p1

    if-lt v2, v1, :cond_1

    .line 535
    .end local v1    # "expectedRGBABufferSize":I
    :goto_0
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_array_stride_overwrite([BIIIIIZ)[B

    move-result-object v0

    return-object v0

    .line 520
    .restart local v1    # "expectedRGBABufferSize":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    .end local v1    # "expectedRGBABufferSize":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Image resolution(w=%d, h=%d) is greater thant the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 505
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 504
    const-string v2, "Image having sliceHeight (sliceHeight=%d) lesser than height (height=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 500
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 499
    const-string v2, "Image having stride (stride=%d) lesser than width (width=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 495
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 494
    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 490
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 489
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processImage([III)[I
    .locals 5
    .param p1, "data"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 270
    if-eqz p1, :cond_3

    .line 274
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    if-lt p3, v0, :cond_2

    .line 279
    const/16 v0, 0x2000

    if-gt p2, v0, :cond_1

    if-gt p3, v0, :cond_1

    .line 284
    mul-int v0, p2, p3

    .line 285
    .local v0, "expectedRGBABufferSize":I
    array-length v1, p1

    if-lt v1, v0, :cond_0

    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_process_buffer([III)[I

    move-result-object v1

    return-object v1

    .line 286
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Image Buffer Size is not valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    .end local v0    # "expectedRGBABufferSize":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 280
    const-string v2, "Image resolution(w=%d, h=%d) is is greater than the %dx%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 276
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 275
    const-string v2, "Image with size (w=%d, h=%d) is not valid."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_release()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setInitialized(Z)V

    .line 127
    return-void
.end method

.method public setFilter(Lcom/samsung/android/camera/filter/SemFilter;)V
    .locals 4
    .param p1, "semFilter"    # Lcom/samsung/android/camera/filter/SemFilter;

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 140
    if-eqz p1, :cond_4

    .line 144
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 146
    .local v0, "semFilterImpl":Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
    const/4 v1, 0x0

    .line 148
    .local v1, "isEffectChanged":Z
    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    if-nez v2, :cond_0

    .line 149
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 150
    const/4 v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    .line 153
    const/4 v1, 0x1

    .line 156
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifierIdx()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifierIdx()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect_internal(I)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->mSemFilterImpl:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->getFilterIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect(Ljava/lang/String;)V

    .line 163
    :cond_3
    :goto_1
    return-void

    .line 141
    .end local v0    # "semFilterImpl":Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
    .end local v1    # "isEffectChanged":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "semFilter must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilterParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->checkInitialized()V

    .line 192
    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->native_setEffect_parameter(Ljava/lang/String;)V

    .line 197
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameter must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setInitialized(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->isInitialized:Z

    .line 68
    return-void
.end method
