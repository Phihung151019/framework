.class public Lcom/samsung/android/media/face/SemFaceDetection;
.super Ljava/lang/Object;
.source "SemFaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceDetection$Settings;,
        Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mDefaultEnginePointer:J = 0x0L

.field private static final mReturnFeatureNotSupported:I = -0x1


# instance fields
.field private mFdPointer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    .line 43
    :try_start_0
    const-string v0, "FacePreProcessing_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    .line 56
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 57
    return-void
.end method

.method private checkEngineBeforeRun()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The function init() is not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I
.end method

.method private static native detectionDestroySupportMultiInstance([J)I
.end method

.method private static native detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;)I
.end method

.method private static native detectionFindFaceSupportMultiInstance([J[BII)I
.end method

.method private static native detectionGetFacePoseSupportMultiInstance([JI)I
.end method

.method private static native detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;
.end method

.method private static isSecProductFeatureConfigured()Z
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method private static printNotSupportedFeatureMessage()V
    .locals 2

    .line 66
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "Current device does NOT support this feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method public init()I
    .locals 4

    .line 93
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 95
    const/4 v0, -0x1

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I

    move-result v0

    return v0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 6

    .line 120
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 122
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 131
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "The function init() is not yet called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionDestroySupportMultiInstance([J)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    aput-wide v4, v0, v1

    .line 138
    return-void

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    .locals 5
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;)I"
        }
    .end annotation

    .line 199
    .local p2, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/face/SemFace;>;"
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 201
    const/4 v0, -0x1

    return v0

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->checkEngineBeforeRun()V

    .line 207
    if-eqz p2, :cond_4

    .line 211
    if-eqz p1, :cond_3

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 220
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v0, p1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;)I

    move-result v0

    .line 222
    .local v0, "facenum":I
    if-lez v0, :cond_1

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v2, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;

    move-result-object v2

    .line 225
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v3, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFacePoseSupportMultiInstance([JI)I

    move-result v3

    .line 226
    .local v3, "pose":I
    new-instance v4, Lcom/samsung/android/media/face/SemFace;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/media/face/SemFace;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "pose":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 216
    .end local v0    # "facenum":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimension of image ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ArrayList<SemFace> is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run([BIILjava/util/ArrayList;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;)I"
        }
    .end annotation

    .line 154
    .local p4, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/face/SemFace;>;"
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 156
    const/4 v0, -0x1

    return v0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->checkEngineBeforeRun()V

    .line 162
    if-eqz p4, :cond_4

    .line 166
    if-eqz p1, :cond_3

    .line 170
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 175
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionFindFaceSupportMultiInstance([J[BII)I

    move-result v0

    .line 177
    .local v0, "facenum":I
    if-lez v0, :cond_1

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 179
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v2, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;

    move-result-object v2

    .line 180
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v3, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFacePoseSupportMultiInstance([JI)I

    move-result v3

    .line 181
    .local v3, "pose":I
    new-instance v4, Lcom/samsung/android/media/face/SemFace;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/media/face/SemFace;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "pose":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 171
    .end local v0    # "facenum":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimension of image ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ArrayList<SemFace> is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
