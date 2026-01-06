.class public Lcom/samsung/android/media/vision/SemSegmentation;
.super Ljava/lang/Object;
.source "SemSegmentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vision/SemSegmentation$Result;,
        Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    }
.end annotation


# static fields
.field private static volatile trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;


# instance fields
.field private blendArr:[B

.field private imheight:I

.field private imwidth:I

.field private volatile isReleased:Z

.field private maskArr:[B

.field private outputBuf:Ljava/nio/ByteBuffer;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "InteractiveSegmentation.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "inputImage"    # Landroid/graphics/Bitmap;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/media/vision/SemSegmentation;->create(Landroid/graphics/Bitmap;)Z

    .line 75
    return-void
.end method

.method private _getBitmap([BILandroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "byteArr"    # [B
    .param p2, "size"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 210
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_0

    .line 211
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 213
    :cond_0
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 215
    :goto_0
    return-void
.end method

.method private create(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "inputImage"    # Landroid/graphics/Bitmap;

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    .line 124
    iget v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    .line 125
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 128
    .local v0, "inputBuf":[B
    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    .line 129
    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    .line 131
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 132
    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    .line 133
    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCreate([BII)Z

    move-result v1

    return v1
.end method

.method public static getInstance(Landroid/graphics/Bitmap;)Lcom/samsung/android/media/vision/SemSegmentation;
    .locals 2
    .param p0, "inputImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 109
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-nez v0, :cond_1

    .line 110
    const-class v0, Lcom/samsung/android/media/vision/SemSegmentation;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/samsung/android/media/vision/SemSegmentation;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/vision/SemSegmentation;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    .line 114
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    return-object v0

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ARGB_8888 format expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeCanRedo()Z
.end method

.method private native nativeCanUndo()Z
.end method

.method private native nativeCancel(Z)V
.end method

.method private static native nativeCreate([BII)Z
.end method

.method private native nativeProcess([B[BI[I)[I
.end method

.method private native nativeRedo([B[B)[I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeReset()V
.end method

.method private native nativeUndo([B[B)[I
.end method

.method private ptArr2PathList([I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "contour"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "segmentContour":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Path;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget v1, p1, v1

    .line 142
    .local v1, "numContours":I
    if-lez v1, :cond_2

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 145
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 146
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    aget v2, p1, v2

    .line 147
    .local v2, "numPoint":I
    if-lez v2, :cond_1

    .line 148
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 149
    .local v5, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "index":I
    .local v6, "index":I
    aget v4, p1, v4

    .line 151
    .local v4, "x":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    aget v6, p1, v6

    .line 152
    .local v6, "y":I
    int-to-float v8, v4

    int-to-float v9, v6

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 154
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_1
    if-ge v8, v2, :cond_0

    .line 155
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "index":I
    .local v9, "index":I
    aget v4, p1, v7

    .line 156
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "index":I
    .restart local v7    # "index":I
    aget v6, p1, v9

    .line 157
    int-to-float v9, v4

    int-to-float v10, v6

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 160
    .end local v8    # "j":I
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 161
    nop

    .end local v5    # "p":Landroid/graphics/Path;
    add-int/lit8 v7, v7, 0x1

    .line 162
    move v2, v7

    goto :goto_2

    .line 163
    .end local v6    # "y":I
    .end local v7    # "index":I
    .local v4, "index":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 145
    .end local v4    # "index":I
    .local v2, "index":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public canRedo()Z
    .locals 2

    .line 260
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCanRedo()Z

    move-result v0

    return v0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canUndo()Z
    .locals 2

    .line 224
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCanUndo()Z

    move-result v0

    return v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel(Z)V
    .locals 0
    .param p1, "exit"    # Z

    .line 293
    invoke-direct {p0, p1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCancel(Z)V

    .line 294
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 349
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->release()V

    .line 352
    :cond_0
    return-void
.end method

.method public process(Lcom/samsung/android/media/vision/SemSegmentation$Mode;[I)Z
    .locals 5
    .param p1, "mode"    # Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .param p2, "points"    # [I

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_4

    .line 183
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v1

    sget-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v1

    sget-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 188
    return v0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 194
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v3

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeProcess([B[BI[I)[I

    move-result-object v1

    .line 195
    .local v1, "contour":[I
    iget-object v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v3, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v3, v3, 0x4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 196
    iget-object v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v3, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 197
    invoke-direct {p0, v1}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 198
    sget-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 199
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_2
    return v0

    .line 184
    .end local v1    # "contour":[I
    :cond_3
    :goto_0
    return v0

    .line 180
    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public redo()V
    .locals 4

    .line 271
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeRedo([B[B)[I

    move-result-object v0

    .line 279
    .local v0, "contour":[I
    invoke-direct {p0, v0}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 280
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v2, v2, 0x4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 282
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 285
    :cond_0
    return-void

    .line 272
    .end local v0    # "contour":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .line 322
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeRelease()V

    .line 324
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    .line 326
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 327
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    .line 328
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 330
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    .line 331
    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    .line 332
    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    .line 333
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    .line 334
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    .line 335
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    .line 337
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    .line 341
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 300
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    :cond_0
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 309
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeReset()V

    .line 316
    return-void

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public undo()V
    .locals 4

    .line 235
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeUndo([B[B)[I

    move-result-object v0

    .line 243
    .local v0, "contour":[I
    invoke-direct {p0, v0}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 245
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v2, v2, 0x4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 251
    :goto_0
    return-void

    .line 236
    .end local v0    # "contour":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
