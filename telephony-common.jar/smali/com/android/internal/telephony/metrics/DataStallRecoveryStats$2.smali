.class Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;
.super Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
.source "DataStallRecoveryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataNetworkController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-direct {p0}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .locals 2

    .line 190
    invoke-virtual {p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->getAdditionalInfo()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "networkProbesSucceeded"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmNetworkProbesResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "networkProbesAttempted"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmNetworkProbesType(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "networkValidationResult"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmNetworkValidationResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 195
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectivityReportAvailable, NetworkValidationResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fgetmNetworkValidationResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$mlog(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .locals 2

    .line 201
    invoke-virtual {p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->getStallDetails()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "tcpMetricsCollectionPeriodMillis"

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmTcpMetricsCollectionPeriodMillis(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "tcpPacketFailRate"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmTcpPacketFailRate(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    const-string v1, "dnsConsecutiveTimeouts"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fputmDnsConsecutiveTimeouts(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V

    .line 207
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataStallSuspected, TcpPacketFailRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fgetmTcpPacketFailRate(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",DnsConsecutiveTimeouts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$fgetmDnsConsecutiveTimeouts(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$mlog(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;->this$0:Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->-$$Nest$msendDataStallInfo(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)V

    return-void
.end method
