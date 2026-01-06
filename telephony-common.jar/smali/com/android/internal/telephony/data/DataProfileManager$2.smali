.class Lcom/android/internal/telephony/data/DataProfileManager$2;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataProfileManager;->registerAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataProfileManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V
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

    .line 328
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$2;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

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

    .line 332
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$2;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$monInternetDataNetworkConnected(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/Set;)V

    return-void
.end method

.method public blacklist onPSAttached()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$2;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$misResetPermanentNeededOperator(Lcom/android/internal/telephony/data/DataProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$2;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    const-string v1, "Init all DataProfiles Permanent fail due to PS attached"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$2;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$minitAllDataProfilesPermanentFail(Lcom/android/internal/telephony/data/DataProfileManager;)V

    :cond_0
    return-void
.end method
