.class public abstract Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;
.super Ljava/lang/Object;
.source "SemCaptureCallback.java"


# static fields
.field public static final ERROR_CAPTURE_FAILED:I = 0x1

.field public static final ERROR_PROCESSING_ABORTED:I = 0x3

.field public static final ERROR_PROCESSING_FAILED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(I)V
.end method

.method public onPictureAvailable(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "picture"    # Ljava/nio/ByteBuffer;

    .line 41
    return-void
.end method

.method public onPictureAvailable(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "picture"    # Ljava/nio/ByteBuffer;
    .param p2, "shotMode"    # I

    .line 51
    return-void
.end method

.method public abstract onShutter()V
.end method
