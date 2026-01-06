.class public interface abstract Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
.super Ljava/lang/Object;
.source "OutputSurfaceImpl.java"


# static fields
.field public static final DATASPACE_UNSPECIFIED:I = -0x1

.field public static final USAGE_UNSPECIFIED:J = -0x1L


# virtual methods
.method public getDataspace()I
    .locals 1

    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public getDynamicRangeProfile()J
    .locals 2

    .line 90
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public abstract getImageFormat()I
.end method

.method public abstract getSize()Landroid/util/Size;
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public getUsage()J
    .locals 2

    .line 81
    const-wide/16 v0, -0x1

    return-wide v0
.end method
