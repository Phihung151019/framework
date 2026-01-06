.class public final synthetic Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {p1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$4;->lambda$run$0(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    return-void
.end method
