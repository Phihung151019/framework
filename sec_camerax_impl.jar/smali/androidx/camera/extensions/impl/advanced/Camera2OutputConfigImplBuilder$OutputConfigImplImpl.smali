.class Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;
.super Ljava/lang/Object;
.source "Camera2OutputConfigImplBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputConfigImplImpl"
.end annotation


# instance fields
.field private mDynamicRangeProfile:J

.field private mId:I

.field private mPhysicalCameraId:Ljava/lang/String;

.field private mSurfaceGroup:I

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
.method constructor <init>()V
    .locals 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mId:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mSurfaceGroup:I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mPhysicalCameraId:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mSurfaceSharingConfigs:Ljava/util/List;

    .line 172
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mDynamicRangeProfile:J

    .line 173
    return-void
.end method


# virtual methods
.method public getDynamicRangeProfile()J
    .locals 2

    .line 193
    iget-wide v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 177
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mId:I

    return v0
.end method

.method public getPhysicalCameraId()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getSurfaceGroupId()I
    .locals 1

    .line 182
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mSurfaceGroup:I

    return v0
.end method

.method public getSurfaceSharingOutputConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mSurfaceSharingConfigs:Ljava/util/List;

    return-object v0
.end method

.method public setDynamicRangeProfile(J)V
    .locals 0
    .param p1, "dynamicRangeProfile"    # J

    .line 215
    iput-wide p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mDynamicRangeProfile:J

    .line 216
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 203
    iput p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mId:I

    .line 204
    return-void
.end method

.method public setPhysicalCameraId(Ljava/lang/String;)V
    .locals 0
    .param p1, "physicalCameraId"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mPhysicalCameraId:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setSurfaceGroup(I)V
    .locals 0
    .param p1, "surfaceGroup"    # I

    .line 207
    iput p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mSurfaceGroup:I

    .line 208
    return-void
.end method

.method public setSurfaceSharingConfigs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "surfaceSharingConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;>;"
    if-eqz p1, :cond_0

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 223
    :cond_0
    iput-object p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;->mSurfaceSharingConfigs:Ljava/util/List;

    .line 224
    return-void
.end method
