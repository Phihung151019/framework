.class Lcom/android/internal/telephony/data/DataNetworkController$10;
.super Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;->onRegisterAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V
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

    .line 1618
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$10;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataActivityChanged(I)V
    .locals 0

    .line 1621
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$10;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mupdateDataActivity(Lcom/android/internal/telephony/data/DataNetworkController;)V

    return-void
.end method

.method public blacklist onDataRetryForScreenOn()V
    .locals 1

    .line 1626
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$10;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->resetDataSetupRetry(Z)V

    return-void
.end method
