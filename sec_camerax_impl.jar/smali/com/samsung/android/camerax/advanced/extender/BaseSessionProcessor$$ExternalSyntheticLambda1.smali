.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    return-void
.end method


# virtual methods
.method public final onUpdateLatestPreviewResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->updateLatestPreviewResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
