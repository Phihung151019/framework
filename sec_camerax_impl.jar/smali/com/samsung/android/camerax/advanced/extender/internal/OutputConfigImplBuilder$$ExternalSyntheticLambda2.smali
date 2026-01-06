.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/util/Size;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;->f$0:Landroid/util/Size;

    iput p2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;->f$0:Landroid/util/Size;

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->lambda$newImageReaderConfig$1(Landroid/util/Size;II)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    move-result-object v0

    return-object v0
.end method
