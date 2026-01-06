.class public interface abstract Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;
.super Ljava/lang/Object;
.source "ImageReaderOutputConfigImpl.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;


# virtual methods
.method public abstract getImageFormat()I
.end method

.method public abstract getMaxImages()I
.end method

.method public abstract getSize()Landroid/util/Size;
.end method

.method public getUsage()J
    .locals 2

    .line 54
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getImageFormat()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    :goto_0
    return-wide v0
.end method
