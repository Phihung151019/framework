.class public abstract Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;
.super Ljava/lang/Object;
.source "ProcessorEventCallback.java"

# interfaces
.implements Lcom/samsung/android/camerasdkservice/ISCameraServiceCbInternal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCameraConfigUpdated(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V
.end method
