.class public Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;
.super Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
.source "OutputConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceTextureConfigImpl"
.end annotation


# instance fields
.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method private constructor <init>(Landroid/util/Size;)V
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;-><init>()V

    .line 153
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 156
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurface:Landroid/view/Surface;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Size;Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;-><init>(Landroid/util/Size;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 163
    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 165
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 167
    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_1
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method
