.class public Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;
    }
.end annotation


# static fields
.field public static final ANQP_DONE_EVENT:I = 0x2402c

.field public static final ASSOCIATED_BSSID_EVENT:I = 0x2402d

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final BASE:I = 0x24000

.field public static final BEACON_ABORT_EVENT:I = 0x2406b

.field public static final BEACON_INTERVAL_EVENT:I = 0x2406a

.field public static final BW_SWITCHED_EVENT:I = 0x24074

.field public static final CHANNEL_SWITCH_EVENT:I = 0x24070

.field public static final COMBINED_TAS_LEVEL_CHANGED_EVENT:I = 0x24073

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field public static final CONNECTIVITY_LOG_EVENT:I = 0x24069

.field private static final DRIVER_EVENT_BW_SWITCHED:I = 0x8

.field private static final DRIVER_EVENT_CHANNEL_SWITCH:I = 0x4

.field private static final DRIVER_EVENT_CONNECTIVITY_LOGGING:I = 0x5

.field private static final DRIVER_EVENT_LEAKY_AP_DETECTION:I = 0x7

.field private static final DRIVER_EVENT_SCHEDULED_PM_TEARDOWN:I = 0x6

.field private static final DRIVER_EVENT_TDLS_REQUEST_EVENT:I = 0x9

.field private static final DRIVER_EVENT_TWT_NOTIFICATION:I = 0x3

.field private static final DRIVER_EVENT_TWT_SETUP:I = 0x1

.field private static final DRIVER_EVENT_TWT_TEARDOWN:I = 0x2

.field public static final EAP_MESSAGE_HANDLE_EVENT:I = 0x24051

.field public static final EAP_NOTIFICATION_NO_NOTIFICATION_INFORMATION:I = 0x3ade68b1

.field public static final FILS_NETWORK_CONNECTION_EVENT:I = 0x2403e

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field public static final IFACE_CREATION_EVENT:I = 0x24064

.field public static final IFACE_REMOVAL_EVENT:I = 0x24065

.field public static final LEAKY_AP_DETECTION_EVENT:I = 0x24072

.field public static final MBO_OCE_BSS_TM_HANDLING_DONE:I = 0x24047

.field public static final MLO_LINKS_INFO_CHANGED:I = 0x24075

.field public static final NETWORK_ADDED_EVENT:I = 0x24052

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final NETWORK_NOT_FOUND_EVENT:I = 0x2402f

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field public static final ROAMING_CHANNEL_UPDATED_EVENT:I = 0x2406c

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field public static final SCHEDULED_PM_TEARDOWN_EVENT:I = 0x24071

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_BIGDATA_EVENT:I = 0x2400d

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field public static final SUP_SERVICE_DEATH_EVENT:I = 0x24068

.field public static final SUP_SERVICE_REGISTRATION_EVENT:I = 0x24067

.field public static final SUP_TERMINATING_EVENT:I = 0x24066

.field private static final TAG:Ljava/lang/String; = "SemWifiMonitor"

.field public static final TARGET_BSSID_EVENT:I = 0x2402e

.field public static final TDLS_REQUEST_EVENT:I = 0x24076

.field public static final TWT_NOTIFICATION_EVENT:I = 0x2406f

.field public static final TWT_SETUP_EVENT:I = 0x2406d

.field public static final TWT_TEARDOWN_EVENT:I = 0x2406e

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b


# instance fields
.field private final mHandlerArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    .line 27
    .line 28
    return-void
.end method

.method private sendMessage(I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    .line 29
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 30
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 7
    const-string v1, "SemWifiMonitor"

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget p1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_7

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_7

    .line 13
    const-string p0, "Dropping event because ("

    const-string v0, ") is stopped"

    .line 14
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 16
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz p1, :cond_3

    .line 17
    const-string p1, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 22
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_2

    .line 23
    :cond_7
    :goto_3
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    return-void
.end method

.method private sendTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setup_id"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 9
    .line 10
    .line 11
    const-string p2, "status"

    .line 12
    .line 13
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 14
    .line 15
    .line 16
    const-string p2, "reason"

    .line 17
    .line 18
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 19
    .line 20
    .line 21
    const-string p2, "negotiation_type"

    .line 22
    .line 23
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 24
    .line 25
    .line 26
    const-string p2, "flow_type"

    .line 27
    .line 28
    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 29
    .line 30
    .line 31
    const-string p2, "triggered"

    .line 32
    .line 33
    invoke-virtual {v0, p2, p7}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 34
    .line 35
    .line 36
    const-string p2, "target_wake_time"

    .line 37
    .line 38
    invoke-virtual {v0, p2, p8, p9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    .line 40
    .line 41
    const-string p2, "wake_duration"

    .line 42
    .line 43
    invoke-virtual {v0, p2, p10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string p2, "wake_interval"

    .line 47
    .line 48
    invoke-virtual {v0, p2, p11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    const p2, 0x2406d

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public broadcastAssociatedBssidEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const v2, 0x2402d

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 6

    .line 1
    const v2, 0x2402b

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v4, p2

    .line 7
    move v3, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 1
    const v2, 0x24007

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public broadcastBcnEventAbort(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const v0, 0x2406b

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "iface"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "ssid"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "bssid"

    .line 17
    .line 18
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "channel"

    .line 22
    .line 23
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string p2, "beaconInterval"

    .line 27
    .line 28
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string p2, "timestamp"

    .line 32
    .line 33
    invoke-virtual {v0, p2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    const-string p2, "systemtime"

    .line 37
    .line 38
    invoke-virtual {v0, p2, p8, p9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    .line 40
    .line 41
    const p2, 0x2406a

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public broadcastBigdataEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v5, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "feature"

    .line 7
    .line 8
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "data"

    .line 12
    .line 13
    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const v2, 0x2400d

    .line 19
    .line 20
    .line 21
    move-object v0, p0

    .line 22
    move-object v1, p1

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public broadcastChannelSwitchEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const v0, 0x24070

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastCombinedTasEvent(Ljava/lang/String;II)V
    .locals 1

    .line 1
    const v0, 0x24073

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastConnectivityLogEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24069

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastDriverEvent(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 12

    .line 1
    move-object/from16 v3, p4

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    const/4 v5, 0x0

    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "broadcastDriverEvent: undefined event="

    .line 13
    .line 14
    invoke-static {p2, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SemWifiMonitor"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    const v2, 0x24076

    .line 25
    .line 26
    .line 27
    aget v3, p3, v5

    .line 28
    .line 29
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    aget v2, p3, v5

    .line 34
    .line 35
    aget v3, p3, v4

    .line 36
    .line 37
    const v4, 0x24074

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_2
    const v2, 0x24072

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_3
    if-eqz p3, :cond_0

    .line 52
    .line 53
    const v2, 0x24071

    .line 54
    .line 55
    .line 56
    aget v3, p3, v5

    .line 57
    .line 58
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_4
    if-eqz v3, :cond_0

    .line 63
    .line 64
    array-length v2, v3

    .line 65
    if-lez v2, :cond_0

    .line 66
    .line 67
    const-string v2, " "

    .line 68
    .line 69
    invoke-static {p1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    aget-object v2, v3, v5

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_5
    if-eqz p3, :cond_0

    .line 87
    .line 88
    const v2, 0x24070

    .line 89
    .line 90
    .line 91
    aget v3, p3, v5

    .line 92
    .line 93
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_6
    if-eqz p3, :cond_0

    .line 98
    .line 99
    const v2, 0x2406f

    .line 100
    .line 101
    .line 102
    aget v3, p3, v5

    .line 103
    .line 104
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_7
    if-eqz p3, :cond_0

    .line 109
    .line 110
    aget v2, p3, v5

    .line 111
    .line 112
    aget v3, p3, v4

    .line 113
    .line 114
    const v4, 0x2406e

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_8
    if-eqz p3, :cond_0

    .line 122
    .line 123
    aget v2, p3, v5

    .line 124
    .line 125
    int-to-byte v2, v2

    .line 126
    aget v3, p3, v4

    .line 127
    .line 128
    int-to-byte v4, v3

    .line 129
    const/4 v3, 0x2

    .line 130
    aget v10, p3, v3

    .line 131
    .line 132
    const/4 v3, 0x3

    .line 133
    aget v11, p3, v3

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v5, 0x0

    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    const-wide/16 v8, 0x0

    .line 140
    .line 141
    move-object v0, p0

    .line 142
    move-object v1, p1

    .line 143
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V

    .line 144
    .line 145
    .line 146
    :cond_0
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public broadcastEapEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    :goto_0
    move v4, p3

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const p3, 0x3ade68b1

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :goto_1
    const v2, 0x24051

    .line 14
    .line 15
    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move v3, p2

    .line 19
    move-object v5, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public broadcastFilsNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    const v2, 0x2403e

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v3, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public broadcastInterfaceCreatedEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24064

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastInterfaceRemovedEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24065

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastMloLinksInfoChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;)V
    .locals 1

    .line 1
    const v0, 0x24075

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastNetworkAddedEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24052

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    const v2, 0x24003

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v3, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 1
    const v2, 0x24004

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public broadcastNetworkIdentityRequestEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    const v2, 0x2400f

    .line 2
    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v4, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public broadcastNetworkNotFoundEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x2402f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastRoamingChannelUpdatedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ssid"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    new-array p2, p2, [I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    aput v2, p2, v1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p3, "frequencies"

    .line 40
    .line 41
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 42
    .line 43
    .line 44
    const p2, 0x2406c

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24001

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24002

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastSupplicantServiceDeathEvent()V
    .locals 1

    .line 1
    const v0, 0x24068

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastSupplicantServiceRegistrationEvent()V
    .locals 1

    .line 1
    const v0, 0x24067

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 1

    .line 1
    move-object v0, p5

    .line 2
    new-instance p5, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;

    .line 3
    .line 4
    invoke-direct {p5, p2, p3, p4, v0}, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;-><init>(ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 5
    .line 6
    .line 7
    const p2, 0x24006

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    const/4 p4, 0x0

    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public broadcastTargetBssidEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const v2, 0x2402e

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public broadcastTerminatingEvent()V
    .locals 1

    .line 1
    const v0, 0x24066

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public broadcastTwtNotificationEvent(Ljava/lang/String;B)V
    .locals 1

    .line 1
    const v0, 0x2406f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastTwtTeardownEvent(Ljava/lang/String;BB)V
    .locals 1

    .line 1
    const v0, 0x2406e

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastWpsFailEvent(Ljava/lang/String;II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0x24009

    .line 3
    .line 4
    .line 5
    if-eq p3, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p3, v0, :cond_3

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    if-eq p2, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x12

    .line 15
    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p2, p3

    .line 22
    :goto_0
    const/4 p3, 0x0

    .line 23
    invoke-direct {p0, p1, v1, p3, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 p2, 0x6

    .line 28
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const/4 p2, 0x3

    .line 33
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    const/4 p2, 0x4

    .line 38
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_4
    const/4 p2, 0x5

    .line 43
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public broadcastWpsOverlapEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x2400a

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastWpsSuccessEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x24008

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public broadcastWpsTimeoutEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x2400b

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public declared-synchronized deregisterHandler(ILandroid/os/Handler;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method isMonitoring(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public declared-synchronized registerHandler(ILandroid/os/Handler;)V
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 6
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMonitoring(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "startMonitoring("

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "SemWifiMonitor"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ")"

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "stopMonitoring("

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->mVerboseLoggingEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "SemWifiMonitor"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ")"

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p1
.end method
