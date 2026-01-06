.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, p1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->$r8$lambda$FMpUJmhOFhdOxT4vK_CDrcdq0lY(Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
