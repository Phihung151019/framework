.class public Lcom/samsung/android/media/face/SemFaceDetection$Settings;
.super Ljava/lang/Object;
.source "SemFaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mEnableFrontalRollSearch:Z

.field private mEnableFrontalTiltDownSearch:Z

.field private mEnableProfileSearch:Z

.field private mMaxFaceSize:F

.field private mMinFaceSize:F

.field private mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 296
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    .line 297
    iput v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    .line 299
    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    .line 300
    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    .line 301
    return-void
.end method


# virtual methods
.method public getMaxFaceSize()F
    .locals 1

    .line 350
    iget v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    return v0
.end method

.method public getMinFaceSize()F
    .locals 1

    .line 332
    iget v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    return v0
.end method

.method public getProcessingMode()Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-object v0
.end method

.method public isFrontalRollSearchEnabled()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    return v0
.end method

.method public isFrontalTiltDownSearchEnabled()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    return v0
.end method

.method public isProfileSearchEnabled()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    return v0
.end method

.method public setFrontalRollSearchEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 395
    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    .line 396
    return-void
.end method

.method public setFrontalTiltDownSearchEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 413
    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    .line 414
    return-void
.end method

.method public setMaxFaceSize(F)V
    .locals 0
    .param p1, "maxFaceSize"    # F

    .line 359
    iput p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    .line 360
    return-void
.end method

.method public setMinFaceSize(F)V
    .locals 0
    .param p1, "minFaceSize"    # F

    .line 341
    iput p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    .line 342
    return-void
.end method

.method public setProcessingMode(Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;)V
    .locals 1
    .param p1, "processingMode"    # Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 318
    if-nez p1, :cond_0

    .line 319
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    goto :goto_0

    .line 322
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 324
    :goto_0
    return-void
.end method

.method public setProfileSearchEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 377
    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    .line 378
    return-void
.end method
