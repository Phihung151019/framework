.class public final synthetic Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback$$ExternalSyntheticLambda0;->f$1:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback$$ExternalSyntheticLambda0;->f$1:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->$r8$lambda$f3UAS9d0djedPC-bd3WBrwRvuxE(Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;Ljava/nio/ByteBuffer;)V

    return-void
.end method
