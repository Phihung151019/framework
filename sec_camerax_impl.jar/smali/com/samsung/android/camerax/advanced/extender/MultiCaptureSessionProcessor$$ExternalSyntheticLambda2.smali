.class public final synthetic Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;

    check-cast p1, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    invoke-static {v0, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->$r8$lambda$8Ek1S_CqSAnkOGv4qhxtWTU80tU(Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)V

    return-void
.end method
