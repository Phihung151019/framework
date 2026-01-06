.class public Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;
.super Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
.source "OutputConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageReaderOutputConfigImpl"
.end annotation


# instance fields
.field private mImageReader:Landroid/media/ImageReader;


# direct methods
.method private constructor <init>(Landroid/media/ImageReader;)V
    .locals 0
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->mImageReader:Landroid/media/ImageReader;

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/ImageReader;Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;-><init>(Landroid/media/ImageReader;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 192
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

    .line 188
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 202
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 203
    return-void
.end method
