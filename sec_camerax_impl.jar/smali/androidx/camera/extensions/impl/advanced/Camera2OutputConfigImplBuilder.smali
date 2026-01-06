.class public Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
.super Ljava/lang/Object;
.source "Camera2OutputConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;,
        Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;,
        Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$MultiResolutionImageReaderOutputConfigImplImpl;,
        Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$SurfaceOutputConfigImplImpl;
    }
.end annotation


# static fields
.field static sLastId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mDynamicRangeProfile:J

.field private mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

.field private mOutputConfigId:I

.field private mPhysicalCameraId:Ljava/lang/String;

.field private mSurfaceGroupId:I

.field private mSurfaceSharingConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;)V
    .locals 2
    .param p1, "outputConfig"    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mSurfaceGroupId:I

    .line 38
    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfigId:I

    .line 41
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mDynamicRangeProfile:J

    .line 43
    iput-object p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    .line 44
    return-void
.end method

.method private getNextId()I
    .locals 1

    .line 47
    sget-object v0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static newImageReaderConfig(Landroid/util/Size;II)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "imageFormat"    # I
    .param p2, "maxImages"    # I

    .line 57
    new-instance v0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    new-instance v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;-><init>(Landroid/util/Size;II)V

    invoke-direct {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;-><init>(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;)V

    return-object v0
.end method

.method public static newImageReaderConfig(Landroid/util/Size;IIJ)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 7
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "imageFormat"    # I
    .param p2, "maxImages"    # I
    .param p3, "usage"    # J

    .line 69
    new-instance v0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    new-instance v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    .end local p0    # "size":Landroid/util/Size;
    .end local p1    # "imageFormat":I
    .end local p2    # "maxImages":I
    .end local p3    # "usage":J
    .local v2, "size":Landroid/util/Size;
    .local v3, "imageFormat":I
    .local v4, "maxImages":I
    .local v5, "usage":J
    invoke-direct/range {v1 .. v6}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$ImageReaderOutputConfigImplImpl;-><init>(Landroid/util/Size;IIJ)V

    invoke-direct {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;-><init>(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;)V

    return-object v0
.end method

.method public static newMultiResolutionImageReaderConfig(II)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 2
    .param p0, "imageFormat"    # I
    .param p1, "maxImages"    # I

    .line 80
    new-instance v0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    new-instance v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$MultiResolutionImageReaderOutputConfigImplImpl;

    invoke-direct {v1, p0, p1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$MultiResolutionImageReaderOutputConfigImplImpl;-><init>(II)V

    invoke-direct {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;-><init>(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;)V

    return-object v0
.end method

.method public static newSurfaceConfig(Landroid/view/Surface;)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 2
    .param p0, "surface"    # Landroid/view/Surface;

    .line 89
    new-instance v0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    new-instance v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$SurfaceOutputConfigImplImpl;

    invoke-direct {v1, p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$SurfaceOutputConfigImplImpl;-><init>(Landroid/view/Surface;)V

    invoke-direct {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;-><init>(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;)V

    return-object v0
.end method


# virtual methods
.method public addSurfaceSharingOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 1
    .param p1, "camera2OutputConfig"    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 98
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mSurfaceSharingConfigs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mSurfaceSharingConfigs:Ljava/util/List;

    .line 102
    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mSurfaceSharingConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object p0
.end method

.method public build()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
    .locals 3

    .line 148
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfigId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->getNextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->setId(I)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    iget v1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfigId:I

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->setId(I)V

    .line 153
    :goto_0
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    iget-object v1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    iget v1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mSurfaceGroupId:I

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->setSurfaceGroup(I)V

    .line 155
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    iget-object v1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mSurfaceSharingConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->setSurfaceSharingConfigs(Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    iget-wide v1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mDynamicRangeProfile:J

    invoke-virtual {v0, v1, v2}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->setDynamicRangeProfile(J)V

    .line 157
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;

    return-object v0
.end method

.method public setDynamicRangeProfile(J)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 0
    .param p1, "dynamicRangeProfile"    # J

    .line 138
    iput-wide p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mDynamicRangeProfile:J

    .line 139
    return-object p0
.end method

.method public setOutputConfigId(I)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 0
    .param p1, "outputConfigId"    # I

    .line 129
    iput p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mOutputConfigId:I

    .line 130
    return-object p0
.end method

.method public setPhysicalCameraId(Ljava/lang/String;)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 0
    .param p1, "physicalCameraId"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mPhysicalCameraId:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setSurfaceGroupId(I)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 0
    .param p1, "surfaceGroupId"    # I

    .line 120
    iput p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->mSurfaceGroupId:I

    .line 121
    return-object p0
.end method
