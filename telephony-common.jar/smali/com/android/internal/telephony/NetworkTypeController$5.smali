.class Lcom/android/internal/telephony/NetworkTypeController$5;
.super Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/NetworkTypeController;->parseCarrierConfigs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V
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

    .line 836
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onHighBandwidthDataTransfer(II)V
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$5;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleHighBandwidthDataTransfer(Lcom/android/internal/telephony/NetworkTypeController;II)V

    return-void
.end method
