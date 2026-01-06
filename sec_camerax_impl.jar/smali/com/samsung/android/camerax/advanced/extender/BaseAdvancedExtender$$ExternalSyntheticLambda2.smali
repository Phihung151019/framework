.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda2;->f$0:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda2;->f$0:Landroid/util/Size;

    check-cast p1, Landroid/util/Size;

    invoke-static {v0, p1}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->lambda$filterOutputResolutions$2(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p1

    return p1
.end method
