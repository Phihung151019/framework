.class public Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
.super Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessorParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 1247
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;, "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    .line 1248
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;->mName:Ljava/lang/String;

    .line 1249
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1253
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;, "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;->mName:Ljava/lang/String;

    return-object v0
.end method
