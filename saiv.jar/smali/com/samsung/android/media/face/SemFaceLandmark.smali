.class public Lcom/samsung/android/media/face/SemFaceLandmark;
.super Ljava/lang/Object;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceLandmark$Settings;,
        Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mDefaultEnginePointer:J = 0x0L

.field private static final mReturnFeatureNotSupported:I = -0x1


# instance fields
.field private mLdPointer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/samsung/android/media/face/SemFaceLandmark;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    .line 44
    :try_start_0
    const-string v0, "FacePreProcessing_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    .line 57
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 58
    return-void
.end method

.method private checkEngineBeforeRun()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 287
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The function init() is not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkInputBufferBeforeRun([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .line 290
    if-eqz p1, :cond_2

    .line 293
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 296
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 299
    return-void

    .line 297
    :cond_0
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

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data size is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isSecProductFeatureConfigured()Z
    .locals 1

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method private static native landmarkCopyImageToNative([J[BIII)I
.end method

.method private static landmarkCreate([J)I
    .locals 1
    .param p0, "ldPointer"    # [J

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCreate([JLcom/samsung/android/media/face/SemFaceLandmark$Settings;)I

    move-result v0

    return v0
.end method

.method private static native landmarkCreate([JLcom/samsung/android/media/face/SemFaceLandmark$Settings;)I
.end method

.method private static native landmarkDestroy([J)V
.end method

.method private static native landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;
.end method

.method private static native landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;
.end method

.method private static native landmarkRemoveImageFromNative([J)I
.end method

.method private static printNotSupportedFeatureMessage()V
    .locals 2

    .line 67
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    const-string v1, "Current device does NOT support this feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method public findEyes([BIILcom/samsung/android/media/face/SemFace;)[Landroid/graphics/Point;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "face"    # Lcom/samsung/android/media/face/SemFace;

    .line 159
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 161
    return-object v1

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 168
    if-eqz p4, :cond_4

    .line 172
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->isCoordinatesProper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "eyept":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, p3, v3}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 183
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 185
    array-length v2, v0

    if-nez v2, :cond_1

    .line 186
    return-object v1

    .line 188
    :cond_1
    return-object v0

    .line 177
    .end local v0    # "eyept":[Landroid/graphics/Point;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

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

    .line 173
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findEyes4Orientation([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "faceROI"    # Landroid/graphics/Rect;
    .param p5, "orientation"    # I

    .line 207
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 209
    return-object v1

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 216
    if-eqz p4, :cond_3

    .line 220
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "eyept":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 227
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v3, 0x0

    invoke-static {v2, p4, v3}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 229
    array-length v2, v0

    if-nez v2, :cond_1

    .line 230
    return-object v1

    .line 232
    :cond_1
    return-object v0

    .line 221
    .end local v0    # "eyept":[Landroid/graphics/Point;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

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

    .line 217
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()I
    .locals 4

    .line 98
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 100
    const/4 v0, -0x1

    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->release()V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCreate([J)I

    move-result v0

    return v0

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 6

    .line 125
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 127
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 136
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    const-string v1, "The function init() is not yet called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkDestroy([J)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    aput-wide v4, v0, v1

    .line 143
    return-void

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "faceROI"    # Landroid/graphics/Rect;
    .param p5, "orientation"    # I

    .line 251
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 253
    return-object v1

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 260
    if-eqz p4, :cond_3

    .line 264
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "keypoints":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 271
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v3, 0x0

    invoke-static {v2, p4, v3}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 272
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 273
    array-length v2, v0

    if-nez v2, :cond_1

    .line 274
    return-object v1

    .line 276
    :cond_1
    return-object v0

    .line 265
    .end local v0    # "keypoints":[Landroid/graphics/Point;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

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

    .line 261
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
