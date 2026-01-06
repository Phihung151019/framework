.class public final synthetic Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;

    invoke-static {v0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->lambda$createSessionConfiguration$2(Ljava/util/List;Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;)V

    return-void
.end method
