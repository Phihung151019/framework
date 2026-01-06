.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;

.field public final synthetic f$1:Landroid/media/Image;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;Landroid/media/Image;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;

    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda3;->f$1:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda3;->f$1:Landroid/media/Image;

    check-cast p1, Landroid/media/ImageWriter;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->$r8$lambda$PqRYpBfZ2xi8FE_1G3Mmtf0qnZ4(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;Landroid/media/Image;Landroid/media/ImageWriter;)V

    return-void
.end method
