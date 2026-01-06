.class Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;
.super Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;
.source "Camera2OutputConfigImplBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageReaderOutputConfigImplImpl"
.end annotation


# static fields
.field private static final USAGE_UNSPECIFIED:J = -0x1L


# instance fields
.field private final mImageFormat:I

.field private final mMaxImages:I

.field private final mSize:Landroid/util/Size;

.field private final mUsage:J


# direct methods
.method constructor <init>(Landroid/util/Size;II)V
    .locals 6
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "imageFormat"    # I
    .param p3, "maxImages"    # I

    .line 251
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "size":Landroid/util/Size;
    .end local p2    # "imageFormat":I
    .end local p3    # "maxImages":I
    .local v1, "size":Landroid/util/Size;
    .local v2, "imageFormat":I
    .local v3, "maxImages":I
    invoke-direct/range {v0 .. v5}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;-><init>(Landroid/util/Size;IIJ)V

    .line 252
    return-void
.end method

.method constructor <init>(Landroid/util/Size;IIJ)V
    .locals 0
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "imageFormat"    # I
    .param p3, "maxImages"    # I
    .param p4, "usage"    # J

    .line 255
    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;-><init>()V

    .line 256
    iput-object p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mSize:Landroid/util/Size;

    .line 257
    iput p2, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mImageFormat:I

    .line 258
    iput p3, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mMaxImages:I

    .line 259
    iput-wide p4, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mUsage:J

    .line 260
    return-void
.end method


# virtual methods
.method public getImageFormat()I
    .locals 1

    .line 270
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mImageFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 275
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mMaxImages:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 265
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public getUsage()J
    .locals 4

    .line 280
    iget-wide v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mUsage:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 281
    invoke-super {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getUsage()J

    move-result-wide v0

    return-wide v0

    .line 283
    :cond_0
    iget-wide v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;->mUsage:J

    return-wide v0
.end method
