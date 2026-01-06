.class public final synthetic Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    iput-boolean p2, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    iget-boolean v1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$IProcessorEventCallback;->lambda$onCameraConfigUpdated$3(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;ZLcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V

    return-void
.end method
