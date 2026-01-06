.class public final synthetic Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$1$$ExternalSyntheticLambda0;->f$0:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$1$$ExternalSyntheticLambda0;->f$0:[B

    check-cast p1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    invoke-static {v0, p1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback$1;->lambda$run$0([BLcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    return-void
.end method
