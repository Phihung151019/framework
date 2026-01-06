.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;

    check-cast p1, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    invoke-static {v0, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->$r8$lambda$3qkWba2zp4k1oSuqrySDmv8e6Sg(Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;)V

    return-void
.end method
