.class Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;
.super Landroid/telephony/TelephonyCallback;
.source "CarrierRoamingSatelliteSessionStats.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyListenerImpl"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 189
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public whitelist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received PrecisionDataStateChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    and-int/lit8 v0, v0, 0x11

    if-lez v0, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internet Connection status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)I

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mhandleConnection(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mupdateLinkBandwidthForConnection(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mhandleDisconnection(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getLastCauseCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mstoreFailCause(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;I)V

    :cond_1
    return-void
.end method

.method public blacklist register(Landroid/telephony/TelephonyManager;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method
