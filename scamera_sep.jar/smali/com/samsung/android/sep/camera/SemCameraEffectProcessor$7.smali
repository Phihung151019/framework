.class Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;
.super Ljava/lang/Object;
.source "SemCameraEffectProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

.field final synthetic val$customDimenstion:Ljava/util/HashMap;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$feature:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1967
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->val$feature:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->val$value:I

    iput-object p4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->val$extra:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->val$customDimenstion:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1969
    .local p0, "this":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;, "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;"
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->this$0:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->mClientId:Ljava/lang/Integer;

    .line 1971
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->val$feature:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->val$value:I

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->val$extra:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$7;->val$customDimenstion:Ljava/util/HashMap;

    .line 1970
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->SALogInsert(ILjava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 1972
    return-void
.end method
