.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/util/Size;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;->f$0:Landroid/util/Size;

    iput p2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;->f$2:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    iput-object p4, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;->f$0:Landroid/util/Size;

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;->f$2:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->lambda$newRawStreamConfig$2(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    move-result-object v0

    return-object v0
.end method
