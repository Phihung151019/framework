.class public abstract Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
.super Ljava/lang/Object;
.source "OutputConfigImplBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OutputConfigImpl"
.end annotation


# instance fields
.field private mImpl:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;


# direct methods
.method static bridge synthetic -$$Nest$msetOriginalConfig(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->setOriginalConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setOriginalConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)V
    .locals 0
    .param p1, "impl"    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 106
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 144
    nop

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 144
    throw v0
.end method

.method public getId()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v0

    return v0
.end method

.method public getOriginalConfig()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    return-object v0
.end method

.method public getPhysicalCameraId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public getSurfaceGroupId()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getSurfaceGroupId()I

    move-result v0

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

    .line 132
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->mImpl:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getSurfaceSharingOutputConfigs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
