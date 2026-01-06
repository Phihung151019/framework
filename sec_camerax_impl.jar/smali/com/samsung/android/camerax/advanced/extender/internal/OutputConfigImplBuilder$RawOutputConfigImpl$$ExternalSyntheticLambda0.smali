.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

.field public final synthetic f$1:Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->$r8$lambda$uMsjIoKkDZgNfnE9opWmgQ9CAEY(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;Landroid/media/ImageReader;)V

    return-void
.end method
