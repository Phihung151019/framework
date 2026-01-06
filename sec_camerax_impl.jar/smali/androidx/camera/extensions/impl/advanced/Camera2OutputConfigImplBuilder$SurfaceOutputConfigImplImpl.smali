.class Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$SurfaceOutputConfigImplImpl;
.super Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;
.source "Camera2OutputConfigImplBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceOutputConfigImplImpl"
.end annotation


# instance fields
.field private final mSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 231
    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$OutputConfigImplImpl;-><init>()V

    .line 232
    iput-object p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$SurfaceOutputConfigImplImpl;->mSurface:Landroid/view/Surface;

    .line 233
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder$SurfaceOutputConfigImplImpl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method
