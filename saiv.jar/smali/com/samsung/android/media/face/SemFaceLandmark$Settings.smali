.class public Lcom/samsung/android/media/face/SemFaceLandmark$Settings;
.super Ljava/lang/Object;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mEnableProfileDetection:Z

.field private mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEnableProfileDetection:Z

    .line 358
    return-void
.end method


# virtual methods
.method public getEngineOption()Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method

.method public isProfileDetectionOptionEnabled()Z
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEnableProfileDetection:Z

    return v0
.end method

.method public setEngineOption(Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;)V
    .locals 1
    .param p1, "engineOption"    # Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 375
    if-nez p1, :cond_0

    .line 376
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    goto :goto_0

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 381
    :goto_0
    return-void
.end method
