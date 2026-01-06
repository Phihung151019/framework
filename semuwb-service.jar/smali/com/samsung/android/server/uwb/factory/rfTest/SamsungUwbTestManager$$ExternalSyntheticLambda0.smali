.class public final synthetic Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

.field public final synthetic f$1:Lcom/google/uwb/support/fira/FiraOpenSessionParams;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Lcom/google/uwb/support/fira/FiraOpenSessionParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    iput-object p2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$$ExternalSyntheticLambda0;->f$1:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$$ExternalSyntheticLambda0;->f$1:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->$r8$lambda$sLMHBWx2zy-WnVecIdyjUbdxDvY(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
