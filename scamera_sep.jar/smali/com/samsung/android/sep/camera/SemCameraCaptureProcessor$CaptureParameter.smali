.class public Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;
.super Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureParameter"
.end annotation


# instance fields
.field public final mKey:Landroid/hardware/camera2/CaptureRequest$Key;

.field public final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1276
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1277
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->mKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1278
    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->mValue:Ljava/lang/Object;

    .line 1279
    return-void
.end method
