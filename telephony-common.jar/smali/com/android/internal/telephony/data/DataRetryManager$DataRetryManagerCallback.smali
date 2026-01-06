.class public Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataRetryManagerCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 984
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDataRetryPermanent()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onScreenDataRetry()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onThrottleStatusChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
