.class Lcom/android/internal/telephony/data/DataNetwork$3;
.super Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetwork;->registerForBandwidthUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V
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

    .line 2785
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$3;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onBandwidthChanged(II)V
    .locals 1

    .line 2789
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$3;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2790
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$3;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monBandwidthUpdated(Lcom/android/internal/telephony/data/DataNetwork;II)V

    :cond_0
    return-void
.end method
