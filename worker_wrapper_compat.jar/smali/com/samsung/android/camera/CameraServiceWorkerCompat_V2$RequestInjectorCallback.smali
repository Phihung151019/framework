.class public abstract Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
.super Ljava/lang/Object;
.source "CameraServiceWorkerCompat_V2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestInjectorCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCaptureResult(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
.end method
