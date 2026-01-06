.class public Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;
.super Ljava/lang/Object;
.source "SemCameraConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;,
        Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;,
        Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;,
        Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;,
        Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;,
        Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;,
        Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    .local p0, "this":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;, "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;->mName:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 90
    .local p0, "this":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;, "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;->mName:Ljava/lang/String;

    return-object v0
.end method
