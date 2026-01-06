.class Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;
.super Ljava/lang/Object;
.source "OutputConfigImplBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageReferenceImpl"
.end annotation


# instance fields
.field private final mImage:Landroid/media/Image;

.field private final mImageLock:Ljava/lang/Object;

.field private mReferenceCount:I

.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Landroid/media/Image;)V
    .locals 0
    .param p2, "image"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->this$0:Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mImageLock:Ljava/lang/Object;

    .line 277
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mImage:Landroid/media/Image;

    .line 278
    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mReferenceCount:I

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Landroid/media/Image;Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;-><init>(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Landroid/media/Image;)V

    return-void
.end method


# virtual methods
.method public decrement()Z
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mReferenceCount:I

    if-gtz v1, :cond_0

    .line 297
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 299
    :cond_0
    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mReferenceCount:I

    .line 301
    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mReferenceCount:I

    if-gtz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->this$0:Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->-$$Nest$fgetmBlockingImageReader(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;)Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mImage:Landroid/media/Image;

    invoke-virtual {v1, v3}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 304
    :cond_1
    monitor-exit v0

    .line 306
    return v2

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get()Landroid/media/Image;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public increment()Z
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mReferenceCount:I

    if-gtz v1, :cond_0

    .line 285
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 287
    :cond_0
    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mReferenceCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;->mReferenceCount:I

    .line 288
    monitor-exit v0

    .line 290
    return v2

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
