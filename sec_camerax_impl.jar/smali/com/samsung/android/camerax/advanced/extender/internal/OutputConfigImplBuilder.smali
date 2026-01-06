.class public Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
.super Ljava/lang/Object;
.source "OutputConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;,
        Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;,
        Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;,
        Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;
    }
.end annotation


# instance fields
.field private mOption:I

.field private final mSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "consumer":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->mOption:I

    .line 46
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->mSupplier:Ljava/util/function/Supplier;

    .line 47
    return-void
.end method

.method static synthetic lambda$newImageReaderConfig$1(Landroid/util/Size;II)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
    .locals 3
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "imageFormat"    # I
    .param p2, "maxImages"    # I

    .line 82
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;

    .line 83
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2, p1, p2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;-><init>(Landroid/media/ImageReader;Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder-IA;)V

    .line 82
    return-object v0
.end method

.method static synthetic lambda$newRawStreamConfig$2(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
    .locals 6
    .param p0, "rawStreamSize"    # Landroid/util/Size;
    .param p1, "rawFormat"    # I
    .param p2, "sensorPixelMode"    # Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .param p3, "physicalId"    # Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "rawStreamSize":Landroid/util/Size;
    .end local p1    # "rawFormat":I
    .end local p2    # "sensorPixelMode":Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .end local p3    # "physicalId":Ljava/lang/String;
    .local v1, "rawStreamSize":Landroid/util/Size;
    .local v2, "rawFormat":I
    .local v3, "sensorPixelMode":Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .local v4, "physicalId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;-><init>(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder-IA;)V

    return-object v0
.end method

.method static synthetic lambda$newSurfaceTextureConfig$0(Landroid/util/Size;)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .line 72
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$SurfaceTextureConfigImpl;-><init>(Landroid/util/Size;Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder-IA;)V

    return-object v0
.end method

.method public static newImageReaderConfig(Landroid/util/Size;II)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "imageFormat"    # I
    .param p2, "maxImages"    # I

    .line 82
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;-><init>(Landroid/util/Size;II)V

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static newRawStreamConfig(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    .locals 2
    .param p0, "rawStreamSize"    # Landroid/util/Size;
    .param p1, "rawFormat"    # I
    .param p2, "sensorPixelMode"    # Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .param p3, "physicalId"    # Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;-><init>(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static newSurfaceTextureConfig(Landroid/util/Size;)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .line 72
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/util/Size;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->mSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    .line 56
    .local v0, "outputConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
    nop

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 56
    invoke-static {v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->newSurfaceConfig(Landroid/view/Surface;)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    move-result-object v1

    .line 58
    .local v1, "builder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->mOption:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 59
    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->mOption:I

    invoke-static {v1, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/Quirks;->applyStreamOption(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;I)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    .line 61
    :cond_0
    invoke-virtual {v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->build()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->-$$Nest$msetOriginalConfig(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)V

    .line 63
    return-object v0
.end method

.method public setStreamOption(I)V
    .locals 0
    .param p1, "option"    # I

    .line 50
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->mOption:I

    .line 51
    return-void
.end method
