.class public interface abstract Landroidx/camera/extensions/impl/PreviewExtenderImpl;
.super Ljava/lang/Object;
.source "PreviewExtenderImpl.java"

# interfaces
.implements Landroidx/camera/extensions/impl/ExtenderStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;
    }
.end annotation


# virtual methods
.method public abstract getCaptureStage()Landroidx/camera/extensions/impl/CaptureStageImpl;
.end method

.method public abstract getProcessor()Landroidx/camera/extensions/impl/ProcessorImpl;
.end method

.method public abstract getProcessorType()Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;
.end method

.method public abstract getSupportedResolutions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method public abstract isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method
