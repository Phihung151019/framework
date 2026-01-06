.class Lcom/samsung/android/sep/camera/CaptureHelper$1;
.super Ljava/util/HashMap;
.source "CaptureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/CaptureHelper;->sendCaptureLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/CaptureHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/CaptureHelper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/sep/camera/CaptureHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/samsung/android/sep/camera/CaptureHelper$1;->this$0:Lcom/samsung/android/sep/camera/CaptureHelper;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper$1;->this$0:Lcom/samsung/android/sep/camera/CaptureHelper;

    iget v0, v0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCurrentZoomLevel:F

    float-to-double v0, v0

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "ZOOM"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sep/camera/CaptureHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper$1;->this$0:Lcom/samsung/android/sep/camera/CaptureHelper;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "extra"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sep/camera/CaptureHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper$1;->this$0:Lcom/samsung/android/sep/camera/CaptureHelper;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/CaptureHelper;->-$$Nest$fgetmDynamicShotProcessingMode(Lcom/samsung/android/sep/camera/CaptureHelper;)I

    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "shot_info"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sep/camera/CaptureHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method
