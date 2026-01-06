.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    return-void
.end method


# virtual methods
.method public final process(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/util/Pair;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->processPreview(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/util/Pair;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V

    return-void
.end method
