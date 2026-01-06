.class public interface abstract Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
.super Ljava/lang/Object;
.source "Camera2OutputConfigImpl.java"


# virtual methods
.method public getDynamicRangeProfile()J
    .locals 2

    .line 56
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public abstract getId()I
.end method

.method public abstract getPhysicalCameraId()Ljava/lang/String;
.end method

.method public abstract getSurfaceGroupId()I
.end method

.method public abstract getSurfaceSharingOutputConfigs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation
.end method
