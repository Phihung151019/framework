.class Lcom/android/internal/telephony/data/LinkBandwidthEstimator$4;
.super Landroid/content/BroadcastReceiver;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1675
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$4;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1678
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1680
    iget-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$4;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent.getAction() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 1682
    const-string p2, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const-string p2, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    .line 1683
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    const-string p2, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1686
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$4;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->removeTPData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void

    .line 1688
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$4;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: Unknown action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    return-void

    .line 1684
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$4;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->dumpTPData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method
