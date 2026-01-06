.class public Lcom/samsung/android/media/face/SemFaceGAERecognition;
.super Ljava/lang/Object;
.source "SemFaceGAERecognition.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemFaceGAERecognition"

.field private static final mDefaultEnginePointer:J = 0x0L

.field private static final mReturnFeatureNotSupported:I = -0x1


# instance fields
.field private mGAEPointer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    :try_start_0
    const-string v0, "HprFace_GAE_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    .line 46
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 47
    return-void
.end method

.method private checkEngineBeforeRun()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 180
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The function init() is not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native gaeCreate([J)I
.end method

.method private static native gaeDestroy([J)I
.end method

.method private static native gaeFindAll([J[BIILandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[BII",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native gaeFindAllOnBitmap([JLandroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static printNotSupportedFeatureMessage()V
    .locals 2

    .line 169
    const-string v0, "SemFaceGAERecognition"

    const-string v1, "Current device does NOT support this feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method


# virtual methods
.method public init()I
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "SemFaceGAERecognition"

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->release()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->gaeCreate([J)I

    move-result v0

    return v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 78
    const-string v0, "SemFaceGAERecognition"

    const-string v1, "The function init() is not yet called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->gaeDestroy([J)I

    .line 84
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    aput-wide v4, v0, v1

    .line 85
    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run(Landroid/graphics/Bitmap;Lcom/samsung/android/media/face/SemFace;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "face"    # Lcom/samsung/android/media/face/SemFace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/samsung/android/media/face/SemFace;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 140
    .local p3, "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p4, "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p5, "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->checkEngineBeforeRun()V

    .line 142
    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    .line 150
    if-eqz p2, :cond_2

    .line 154
    invoke-virtual {p2}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 156
    .local v3, "faceROI":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    .line 160
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 165
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "data":Landroid/graphics/Bitmap;
    .end local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p4    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p5    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v2, "data":Landroid/graphics/Bitmap;
    .local v4, "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v5, "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v6, "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->gaeFindAllOnBitmap([JLandroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    return p1

    .line 160
    .end local v2    # "data":Landroid/graphics/Bitmap;
    .end local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v5    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v6    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "data":Landroid/graphics/Bitmap;
    .restart local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p4    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p5    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_0
    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 161
    .end local p1    # "data":Landroid/graphics/Bitmap;
    .end local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p4    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p5    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v2    # "data":Landroid/graphics/Bitmap;
    .restart local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v5    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v6    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "More than one ArrayList<Float> are null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    .end local v2    # "data":Landroid/graphics/Bitmap;
    .end local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v5    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v6    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "data":Landroid/graphics/Bitmap;
    .restart local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p4    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p5    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_1
    move-object v2, p1

    move-object v4, p3

    .end local p1    # "data":Landroid/graphics/Bitmap;
    .end local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v2    # "data":Landroid/graphics/Bitmap;
    .restart local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Face rect information is null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    .end local v2    # "data":Landroid/graphics/Bitmap;
    .end local v3    # "faceROI":Landroid/graphics/Rect;
    .end local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "data":Landroid/graphics/Bitmap;
    .restart local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_2
    move-object v2, p1

    move-object v4, p3

    .end local p1    # "data":Landroid/graphics/Bitmap;
    .end local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v2    # "data":Landroid/graphics/Bitmap;
    .restart local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Face information is null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    .end local v2    # "data":Landroid/graphics/Bitmap;
    .end local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "data":Landroid/graphics/Bitmap;
    .restart local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_3
    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 147
    .end local p1    # "data":Landroid/graphics/Bitmap;
    .end local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p4    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p5    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v2    # "data":Landroid/graphics/Bitmap;
    .restart local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v5    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v6    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid dimension of image ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    .end local v2    # "data":Landroid/graphics/Bitmap;
    .end local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v5    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v6    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "data":Landroid/graphics/Bitmap;
    .restart local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p4    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p5    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_4
    move-object v2, p1

    move-object v4, p3

    .end local p1    # "data":Landroid/graphics/Bitmap;
    .end local p3    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v2    # "data":Landroid/graphics/Bitmap;
    .restart local v4    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Image data is null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run([BIILcom/samsung/android/media/face/SemFace;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "face"    # Lcom/samsung/android/media/face/SemFace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/samsung/android/media/face/SemFace;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 100
    .local p5, "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p6, "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p7, "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->checkEngineBeforeRun()V

    .line 102
    if-eqz p1, :cond_4

    .line 106
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 110
    if-eqz p4, :cond_2

    .line 114
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 116
    .local v4, "faceROI":Landroid/graphics/Rect;
    if-eqz v4, :cond_1

    .line 120
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "data":[B
    .end local p2    # "imageWidth":I
    .end local p3    # "imageHeight":I
    .end local p5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v1, "data":[B
    .local v2, "imageWidth":I
    .local v3, "imageHeight":I
    .local v5, "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v6, "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v7, "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->gaeFindAll([J[BIILandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    return p1

    .line 120
    .end local v1    # "data":[B
    .end local v2    # "imageWidth":I
    .end local v3    # "imageHeight":I
    .end local v5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "data":[B
    .restart local p2    # "imageWidth":I
    .restart local p3    # "imageHeight":I
    .restart local p5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 121
    .end local p1    # "data":[B
    .end local p2    # "imageWidth":I
    .end local p3    # "imageHeight":I
    .end local p5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v1    # "data":[B
    .restart local v2    # "imageWidth":I
    .restart local v3    # "imageHeight":I
    .restart local v5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "More than one ArrayList<Float> are null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    .end local v1    # "data":[B
    .end local v2    # "imageWidth":I
    .end local v3    # "imageHeight":I
    .end local v5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "data":[B
    .restart local p2    # "imageWidth":I
    .restart local p3    # "imageHeight":I
    .restart local p5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_1
    move-object v1, p1

    move v2, p2

    .end local p1    # "data":[B
    .end local p2    # "imageWidth":I
    .restart local v1    # "data":[B
    .restart local v2    # "imageWidth":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Face rect information is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    .end local v1    # "data":[B
    .end local v2    # "imageWidth":I
    .end local v4    # "faceROI":Landroid/graphics/Rect;
    .restart local p1    # "data":[B
    .restart local p2    # "imageWidth":I
    :cond_2
    move-object v1, p1

    move v2, p2

    .end local p1    # "data":[B
    .end local p2    # "imageWidth":I
    .restart local v1    # "data":[B
    .restart local v2    # "imageWidth":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Face information is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    .end local v1    # "data":[B
    .end local v2    # "imageWidth":I
    .restart local p1    # "data":[B
    .restart local p2    # "imageWidth":I
    :cond_3
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 107
    .end local p1    # "data":[B
    .end local p2    # "imageWidth":I
    .end local p3    # "imageHeight":I
    .end local p5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local p7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v1    # "data":[B
    .restart local v2    # "imageWidth":I
    .restart local v3    # "imageHeight":I
    .restart local v5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid dimension of image ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    .end local v1    # "data":[B
    .end local v2    # "imageWidth":I
    .end local v3    # "imageHeight":I
    .end local v5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p1    # "data":[B
    .restart local p2    # "imageWidth":I
    .restart local p3    # "imageHeight":I
    .restart local p5    # "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p6    # "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local p7    # "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_4
    move-object v1, p1

    move v2, p2

    .end local p1    # "data":[B
    .end local p2    # "imageWidth":I
    .restart local v1    # "data":[B
    .restart local v2    # "imageWidth":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Image data is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
