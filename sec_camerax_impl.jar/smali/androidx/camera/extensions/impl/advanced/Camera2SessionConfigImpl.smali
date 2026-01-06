.class public interface abstract Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
.super Ljava/lang/Object;
.source "Camera2SessionConfigImpl.java"


# virtual methods
.method public getColorSpace()I
    .locals 1

    .line 75
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getOutputConfigs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionTemplateId()I
.end method

.method public getSessionType()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method
