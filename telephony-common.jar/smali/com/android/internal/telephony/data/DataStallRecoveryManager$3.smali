.class Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "DataStallRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataStallRecoveryManager;->registerAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$BD4TExe6Z7O6h1RW2NGtIOJ1ZJQ(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/16 v0, 0xd

    .line 372
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    .line 374
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    .line 376
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 367
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3$$ExternalSyntheticLambda0;-><init>()V

    .line 368
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$fgetmIsInternetNetworkConnected(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$fputmIsInternetNetworkConnected(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Z)V

    .line 381
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$fgetmIsInternetNetworkConnected(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 382
    const-string p1, "At Least One InternetDataNetwork Connected"

    goto :goto_0

    .line 383
    :cond_0
    const-string p1, "All InternetDataNetwork Disconnected"

    .line 381
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist onInternetDataNetworkValidationStatusChanged(I)V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$3;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$monInternetValidationStatusChanged(Lcom/android/internal/telephony/data/DataStallRecoveryManager;I)V

    return-void
.end method
