.class Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$MultiResolutionImageReaderOutputConfigImplImpl;
.super Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;
.source "Camera2OutputConfigImplBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiResolutionImageReaderOutputConfigImplImpl"
.end annotation


# instance fields
.field private final mImageFormat:I

.field private final mMaxImages:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "imageFormat"    # I
    .param p2, "maxImages"    # I

    .line 292
    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;-><init>()V

    .line 293
    iput p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$MultiResolutionImageReaderOutputConfigImplImpl;->mImageFormat:I

    .line 294
    iput p2, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$MultiResolutionImageReaderOutputConfigImplImpl;->mMaxImages:I

    .line 295
    return-void
.end method


# virtual methods
.method public getImageFormat()I
    .locals 1

    .line 299
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$MultiResolutionImageReaderOutputConfigImplImpl;->mImageFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 304
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$MultiResolutionImageReaderOutputConfigImplImpl;->mMaxImages:I

    return v0
.end method
