.class public final Landroidx/car/app/SurfaceContainer;
.super Ljava/lang/Object;
.source "SurfaceContainer.java"


# instance fields
.field private final mDpi:I

.field private final mHeight:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/SurfaceContainer;->mSurface:Landroid/view/Surface;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/SurfaceContainer;->mWidth:I

    .line 46
    iput v0, p0, Landroidx/car/app/SurfaceContainer;->mHeight:I

    .line 47
    iput v0, p0, Landroidx/car/app/SurfaceContainer;->mDpi:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;III)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/car/app/SurfaceContainer;->mSurface:Landroid/view/Surface;

    .line 37
    iput p2, p0, Landroidx/car/app/SurfaceContainer;->mWidth:I

    .line 38
    iput p3, p0, Landroidx/car/app/SurfaceContainer;->mHeight:I

    .line 39
    iput p4, p0, Landroidx/car/app/SurfaceContainer;->mDpi:I

    .line 40
    return-void
.end method


# virtual methods
.method public getDpi()I
    .locals 1

    .line 68
    iget v0, p0, Landroidx/car/app/SurfaceContainer;->mDpi:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 63
    iget v0, p0, Landroidx/car/app/SurfaceContainer;->mHeight:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/car/app/SurfaceContainer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 58
    iget v0, p0, Landroidx/car/app/SurfaceContainer;->mWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/SurfaceContainer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/SurfaceContainer;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/SurfaceContainer;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/SurfaceContainer;->mDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
