.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;


# direct methods
.method public synthetic constructor <init>(ZLcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    check-cast p1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->lambda$createBurstRequest$4(ZLcom/samsung/android/camerax/advanced/extender/RequestBuilder;Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)V

    return-void
.end method
