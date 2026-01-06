.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;
    }
.end annotation


# static fields
.field private static final DATA_USAGE_DB_UPDATE_INTERVAL_30SEC:I = 0x7530

.field private static final HANDLER_EVENT_DHCP_CLIENT_UPDATE:I = 0x1c

.field private static final HANDLER_EVENT_GUEST_CLIENT_CONNECTED:I = 0x1b

.field private static final HANDLER_KEY_CALLBACK:Ljava/lang/String; = "callback"

.field private static final HANDLER_KEY_CALLBACK_IBINDER:Ljava/lang/String; = "ibinder"

.field private static final HANDLER_KEY_CALLBACK_IDENTIFIER:Ljava/lang/String; = "callback_identifier"

.field private static final HANDLER_KEY_CLIENT_DATA_LIMIT:Ljava/lang/String; = "client_data_limit"

.field private static final HANDLER_KEY_CLIENT_DEVICE_TYPE:Ljava/lang/String; = "client_device_type"

.field private static final HANDLER_KEY_CLIENT_EDITED_NAME:Ljava/lang/String; = "client_edited_name"

.field private static final HANDLER_KEY_CLIENT_IP:Ljava/lang/String; = "client_ip"

.field private static final HANDLER_KEY_CLIENT_MAC:Ljava/lang/String; = "client_mac"

.field private static final HANDLER_KEY_CLIENT_NAME:Ljava/lang/String; = "client_name"

.field private static final HANDLER_KEY_CLIENT_PAUSE_SHARING:Ljava/lang/String; = "client_pause_sharing"

.field private static final HANDLER_KEY_CLIENT_TIME_LIMIT:Ljava/lang/String; = "client_time_limit"

.field private static final HANDLER_KEY_IS_AUTO_HOTSPOT_CLIENT:Ljava/lang/String; = "client_is_autohotspot_client"

.field private static final HANDLER_KEY_IS_DHCP_NAME_DISABLED:Ljava/lang/String; = "is_dhcp_name_disabled"

.field private static final HANDLER_KEY_IS_STATIC_IP:Ljava/lang/String; = "is_static_ip"

.field private static final HANDLER_KEY_LIST_CALLBACK_PARAM_MAX:Ljava/lang/String; = "list_callback_max_param"

.field private static final HANDLER_KEY_LIST_CALLBACK_PARAM_TOP:Ljava/lang/String; = "list_callback_top_param"

.field private static final HANDLE_EVENT_DATE_CHANGED:I = 0x5

.field private static final HANDLE_EVENT_FACTORY_RESET:I = 0x11

.field private static final HANDLE_EVENT_HANDLE_REBOOT:I = 0xc

.field private static final HANDLE_EVENT_MHS_OFF:I = 0x2

.field private static final HANDLE_EVENT_MHS_ON:I = 0x1

.field private static final HANDLE_EVENT_REGISTER_CLIENT_CALLBACK:I = 0x16

.field private static final HANDLE_EVENT_REGISTER_LIST_CALLBACK:I = 0x14

.field private static final HANDLE_EVENT_RESTORE_CLIENT_SETTING:I = 0x12

.field private static final HANDLE_EVENT_RESTORE_OVERALL_DATA_LIMIT:I = 0x18

.field private static final HANDLE_EVENT_SAVE_DATA_USAGE_IN_DB:I = 0xf

.field private static final HANDLE_EVENT_SEND_WIDGET_BROADCAST:I = 0x10

.field private static final HANDLE_EVENT_SET_CLIENT_DATA_LIMIT:I = 0x9

.field private static final HANDLE_EVENT_SET_CLIENT_DEVICE_TYPE_AND_NAME:I = 0x1a

.field private static final HANDLE_EVENT_SET_CLIENT_EDITED_NAME:I = 0x19

.field private static final HANDLE_EVENT_SET_CLIENT_PAUSE_SHARING:I = 0xb

.field private static final HANDLE_EVENT_SET_CLIENT_TIME_LIMIT:I = 0xa

.field private static final HANDLE_EVENT_SET_OVERALL_DATA_LIMIT:I = 0x8

.field private static final HANDLE_EVENT_SHUTDOWN:I = 0xd

.field private static final HANDLE_EVENT_SIM_CHANGED:I = 0x6

.field private static final HANDLE_EVENT_STA_CONNECTED:I = 0x3

.field private static final HANDLE_EVENT_STA_DISCONNECTED:I = 0x4

.field private static final HANDLE_EVENT_UNREGISTER_CLIENT_CALLBACK:I = 0x17

.field private static final HANDLE_EVENT_UNREGISTER_LIST_CALLBACK:I = 0x15

.field private static final HANDLE_EVENT_UPDATE_DATA_USAGE:I = 0xe

.field public static final HANDLE_EVENT_UPDATE_DATA_USAGE_POLLING_RATE:I = 0x13

.field private static final HANDLE_EVENT_UPSTREAM_CHANGED:I = 0x7

.field public static final MOBILE_DATA_UPSTREAM:I = 0x2

.field public static final POLLING_INTERVAL_1000MS:I = 0x3e8

.field public static final POLLING_INTERVAL_2000MS:I = 0x7d0

.field public static final POLLING_INTERVAL_5000MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SemWifiApDataUsage"

.field private static final WIFI_AP_LAST_ACTIVE_SIM:Ljava/lang/String; = "wifi_ap_last_active_sim"

.field public static final WIFI_UPSTREAM:I = 0x1


# instance fields
.field private currentDate:Ljava/util/Calendar;

.field private isEbpfAPICalled:Z

.field private isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mApStaInfoListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

.field private final mCellularDataListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentActiveSimSerialNumber:Ljava/lang/String;

.field private mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDataPollingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDataUsagePollingRateInMillSec:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIsCurrentSessionClientDataLimitWasSet:Z

.field private final mNrEventLock:Ljava/lang/Object;

.field private mSemWifiApClientDhcpResultListener:Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;

.field private mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

.field private mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

.field private mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

.field private mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

.field private mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

.field private mSemWifiApHotspotScreenContentObs:Landroid/database/ContentObserver;

.field private mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

.field private mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

.field private mSemWifiApSettings:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mStreamChangeWakeupMessage:Lcom/android/internal/util/WakeupMessage;

.field private mTempUpStream:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private mUsedCurrentDayAndSimData:Ljava/util/concurrent/atomic/AtomicLong;

.field private mWifiApHandlerThread:Landroid/os/HandlerThread;

.field private mdebugTotalBytesConsumed:J

.field private mdebugTotalNrtBytesConsumed:J

.field private mdebugTotalRTBytesConsumed:J

.field private misCurrentSessionClientTimeLimitWasSet:Z

.field private msemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

.field private msumTotalNRTBytesConsumed:J

.field private msumTotalRTBytesConsumed:J


# direct methods
.method public static synthetic $r8$lambda$0wEtI1PZO4zsKMDjerVSEvqtYsc(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->lambda$registerIntentsCallbacks$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$1wwQzJ4xvFfCbVuhXx9FmAoINH4(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->lambda$registerIntentsCallbacks$0(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Onp7BjhQzIofp4Y1_y_QuVretXg(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->lambda$registerIntentsCallbacks$4(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$b55X6TVc-GeAH0uIZ2A8SETRZmM(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->lambda$registerIntentsCallbacks$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$kLJerSybUgzkVvLesiruVvTAjrE(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->lambda$registerIntentsCallbacks$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisMhsActive(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentActiveSimSerialNumber(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentTetheringUpstream(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataUsagePollingRateInMillSec(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataUsagePollingRateInMillSec:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiApClientListManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiApDataUsageCallBackManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiApDataUsageHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiApOverAllDataLimitManager(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleBootCompleteEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleBootCompleteEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleClientConnectedEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleClientConnectedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleClientDhcpFingerprintResultUpdated(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleClientDhcpFingerprintResultUpdated(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleClientDisconnectedEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleClientDisconnectedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleClientSettingRestoreEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleClientSettingRestoreEvent(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDateChangedEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleDateChangedEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFactoryResetEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleFactoryResetEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGuestClientConnection(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleGuestClientConnection(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetClientDataLimit(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleSetClientDataLimit(Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetClientDeviceName(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleSetClientDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetClientDeviceTypeAndDeviceName(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleSetClientDeviceTypeAndDeviceName(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetClientPauseSharing(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleSetClientPauseSharing(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetClientTimeLimit(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleSetClientTimeLimit(Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetDailyMhsDataLimit(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleSetDailyMhsDataLimit(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShutdownEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleShutdownEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSimChangeEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleSimChangeEvent(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStreamChangedEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleStreamChangedEvent(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateDataUsageEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateDataUsageEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateHistoryDbEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateHistoryDbEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdatePollingRateEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdatePollingRateEvent(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWidgetFunctionalities(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleWidgetFunctionalities()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiApDisableEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleWifiApDisableEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiApEnabledEvent(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleWifiApEnabledEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misInsideHotspotScreen(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isInsideHotspotScreen()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msaveOverAllDataLimitAndSyncCallback(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->saveOverAllDataLimitAndSyncCallback(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupStreamUpdated(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->upStreamUpdated(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->msemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mStreamChangeWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mUsedCurrentDayAndSimData:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 23
    .line 24
    const-string v0, "sim_id_unknown"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/16 v3, 0x1388

    .line 31
    .line 32
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataUsagePollingRateInMillSec:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataPollingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isEbpfAPICalled:Z

    .line 53
    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    .line 56
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mTempUpStream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    .line 68
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mIsCurrentSessionClientDataLimitWasSet:Z

    .line 69
    .line 70
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->misCurrentSessionClientTimeLimitWasSet:Z

    .line 71
    .line 72
    new-instance v0, Ljava/lang/Object;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mNrEventLock:Ljava/lang/Object;

    .line 78
    .line 79
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mdebugTotalBytesConsumed:J

    .line 80
    .line 81
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mdebugTotalNrtBytesConsumed:J

    .line 82
    .line 83
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mdebugTotalRTBytesConsumed:J

    .line 84
    .line 85
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->msumTotalNRTBytesConsumed:J

    .line 86
    .line 87
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->msumTotalRTBytesConsumed:J

    .line 88
    .line 89
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$1;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$1;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 95
    .line 96
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$2;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$2;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCellularDataListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 102
    .line 103
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$3;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$3;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mApStaInfoListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 109
    .line 110
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$5;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$5;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientDhcpResultListener:Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;

    .line 116
    .line 117
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;

    .line 118
    .line 119
    new-instance v1, Landroid/os/Handler;

    .line 120
    .line 121
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$6;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Landroid/os/Handler;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApHotspotScreenContentObs:Landroid/database/ContentObserver;

    .line 128
    .line 129
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 132
    .line 133
    new-instance p2, Landroid/os/HandlerThread;

    .line 134
    .line 135
    const-string v0, "SemWifiApDataUsageHandlerThreads"

    .line 136
    .line 137
    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mWifiApHandlerThread:Landroid/os/HandlerThread;

    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mWifiApHandlerThread:Landroid/os/HandlerThread;

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 152
    .line 153
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;Landroid/os/Looper;)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 157
    .line 158
    new-instance p2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    invoke-direct {p2, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 166
    .line 167
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApSmartPrioritySupported()Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_0

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 182
    .line 183
    .line 184
    :cond_0
    new-instance p2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 185
    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 189
    .line 190
    invoke-direct {p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;)V

    .line 191
    .line 192
    .line 193
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 194
    .line 195
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    const-string v0, "wifi_ap_inside_hotspot_screen"

    .line 202
    .line 203
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApHotspotScreenContentObs:Landroid/database/ContentObserver;

    .line 208
    .line 209
    invoke-virtual {p2, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    .line 211
    .line 212
    new-instance p2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 213
    .line 214
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;-><init>()V

    .line 215
    .line 216
    .line 217
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 218
    .line 219
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    .line 220
    .line 221
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 222
    .line 223
    const/4 v6, 0x0

    .line 224
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mTempUpStream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 225
    .line 226
    const-string v3, "STREAM_CHANGED_TAG"

    .line 227
    .line 228
    const/4 v4, 0x7

    .line 229
    const/4 v5, 0x0

    .line 230
    move-object v1, p1

    .line 231
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mStreamChangeWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    .line 235
    .line 236
    return-void
.end method

.method private getActiveTotalDataUsage()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getGlobalDataUsageStats()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mTotalDataBytes:J

    .line 8
    .line 9
    return-wide v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "connectivity"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    return-object p0
.end method

.method private getMonthlyListNotIncludingTodayDataUsage()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, -0x5

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v3, -0x1

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getMonthlyDataList(Ljava/lang/String;JJ)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "sem_wifi"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getStreamInString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_0

    .line 6
    .line 7
    const-string p0, "No upstream"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "Cellular"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "Wi-Fi"

    .line 14
    .line 15
    return-object p0
.end method

.method private handleBootCompleteEvent()V
    .locals 13

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 15
    .line 16
    new-instance v5, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApSettings:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 24
    .line 25
    new-instance v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 41
    .line 42
    const/4 v11, 0x2

    .line 43
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 48
    .line 49
    const/4 v12, 0x1

    .line 50
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;IIILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 66
    .line 67
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mUsedCurrentDayAndSimData:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 83
    .line 84
    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 89
    .line 90
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getMhsDataConsumedOfGivenDateAndSim(IIILjava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->registerIntentsCallbacks()V

    .line 104
    .line 105
    .line 106
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    const-string v0, "Handle reboot completed"

    .line 109
    .line 110
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private handleClientConnectedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "handleClientConnectedEvent() : mhs state = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->checkIfMacIsInLockNetworkAllowedList(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    const-string p0, "Connected mac is not in Lock Network"

    .line 60
    .line 61
    invoke-static {v0, p0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v3, 0x2

    .line 74
    if-ne v1, v3, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v2, 0x0

    .line 78
    :goto_0
    invoke-virtual {v0, p1, p3, p2, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleClientConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 82
    .line 83
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->handleWifiApStaConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataPollingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleStartTrafficPolling()V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 117
    .line 118
    const/16 p2, 0xf

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_3

    .line 125
    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 127
    .line 128
    const-wide/16 v0, 0x7530

    .line 129
    .line 130
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method

.method private handleClientDhcpFingerprintResultUpdated(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleClientDhcpFingerprintUpdate(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private handleClientDisconnectedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "handleClientDisconnectedEvent() : mhs state = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->checkIfMacIsInLockNetworkAllowedList(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    const-string p0, "Disconnected mac is not in Lock Network"

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateDataUsageEvent()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateHistoryDbEvent()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleClientDisconnected(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 77
    .line 78
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->handleWifiApStaDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getConnectedClientCount()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataPollingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_1

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleStopTrafficPolling()V

    .line 98
    .line 99
    .line 100
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 101
    .line 102
    const/16 p2, 0xf

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 108
    .line 109
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void
.end method

.method private handleClientSettingRestoreEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApSettings:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->restoreClientSettingFromBackup(Lorg/json/JSONObject;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleClientSettingRestoreEvent(Lorg/json/JSONObject;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "Restoring of clients Settings Complete"

    .line 23
    .line 24
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private handleDataAndSimUpdatedEvent()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v5, v0, v1, v3, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleDateOrSimChangedEvent(IIILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mUsedCurrentDayAndSimData:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 32
    .line 33
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v6, v0, v1, v3, v7}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getMhsDataConsumedOfGivenDateAndSim(IIILjava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 40
    .line 41
    .line 42
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne v0, v2, :cond_0

    .line 51
    .line 52
    :goto_0
    move v7, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v4, 0x0

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMobileDataEnableWhenMobileCellularEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getActiveTotalDataUsage()J

    .line 71
    .line 72
    .line 73
    move-result-wide v12

    .line 74
    invoke-virtual/range {v6 .. v13}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->checkForDailyDataLimitReached(ZZZJJ)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "handleDataAndSimUpdatedEvent() : mUsedCurrentDayAndSimData = "

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mUsedCurrentDayAndSimData:Ljava/util/concurrent/atomic/AtomicLong;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private handleDateChangedEvent()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isDateEqual(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateDataUsageEvent()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateHistoryDbEvent()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->handleDateAndSimChanged()V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 33
    .line 34
    const-string v2, "date changed: current date = "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getDateString(Ljava/util/Calendar;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    const-string v2, ", new date = "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getDateString(Ljava/util/Calendar;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->delete6MonthOldData()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApSettings:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->delete6MonthOldClientSetting()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleDataAndSimUpdatedEvent()V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void
.end method

.method private handleFactoryResetEvent()V
    .locals 13

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApSettings:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApSettings:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 18
    .line 19
    const-string v1, "mSemWifiApSettings is null, created new mSemWifiApSettings\n"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApSettings:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->factoryReset()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x2

    .line 38
    const/4 v12, 0x1

    .line 39
    if-ne v1, v3, :cond_1

    .line 40
    .line 41
    move v5, v12

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    move v5, v1

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMobileDataEnableWhenMobileCellularEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 56
    .line 57
    .line 58
    move-result-wide v8

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getActiveTotalDataUsage()J

    .line 60
    .line 61
    .line 62
    move-result-wide v10

    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->saveDailyDataLimitAndProceed(JZZZJJ)V

    .line 66
    .line 67
    .line 68
    const-string v1, "factory reset done (client setting and daily data limit)"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v0, v12}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 101
    .line 102
    const-wide/16 v0, 0x0

    .line 103
    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncRegisterCallbackForDataLimit(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    move-object p0, v0

    .line 110
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private handleGuestClientConnection(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleGuestClientConnection(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private handleSetClientDataLimit(Ljava/lang/String;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    move-wide v2, p2

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleSetConnectedClientDataLimit(Ljava/lang/String;JLcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mIsCurrentSessionClientDataLimitWasSet:Z

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private handleSetClientDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleSetConnectedClientEditedName(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private handleSetClientDeviceTypeAndDeviceName(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZZ)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApClientDeviceTypeSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move v7, p6

    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleSetConnectedClientDeviceTypeAndDeviceName(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZZ)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 28
    .line 29
    .line 30
    move-result-wide p3

    .line 31
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private handleSetClientPauseSharing(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "handleSetClientPauseSharing mac = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",pauseSharing"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 33
    .line 34
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleSetConnectedClientPauseSharing(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const-string p0, "client disconnected , can\'t set data paused"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private handleSetClientTimeLimit(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleSetConnectedClientTimeLimit(Ljava/lang/String;J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->misCurrentSessionClientTimeLimitWasSet:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private handleSetDailyMhsDataLimit(J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p2, "overAll limit is trying to set negative therefore setting to zero(to indicate \'no set limit\'"

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-wide p1, v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getDailyMhsDataLimit()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    cmp-long v2, v2, p1

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p1, "Overall MHS Data Limit is same as previous, not need to proceed forward"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    cmp-long v0, p1, v0

    .line 36
    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateDataUsageEvent()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    cmp-long v0, v0, p1

    .line 47
    .line 48
    if-ltz v0, :cond_2

    .line 49
    .line 50
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "can\'t set the overall data limit, data usage is more than or equal to the limit (datausage = "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v4, " & limit user is setting = "

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v5, ")"

    .line 75
    .line 76
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0, p1, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const p2, 0x10410fb

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->saveOverAllDataLimitAndSyncCallback(J)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private handleShutdownEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateDataUsageEvent()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateHistoryDbEvent()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "device shutdown while hotspot ON, saved the latest info in DB"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private handleSimChangeEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidSimSerialNumber(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateDataUsageEvent()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateHistoryDbEvent()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->handleDateAndSimChanged()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "sim_id_unknown"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isInsideHotspotScreen()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v1, 0x104110d

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const-string v1, "wifi_ap_last_active_sim"

    .line 71
    .line 72
    invoke-static {v0, v1, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 76
    .line 77
    const-string v1, "active Sim changed Event old SIM : "

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    const-string v1, " , new sim = "

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v2, 0x1

    .line 117
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->updateInvalidSimNumberWithGivenSimSerialNumber(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleDataAndSimUpdatedEvent()V

    .line 128
    .line 129
    .line 130
    :cond_2
    return-void
.end method

.method private handleStartTrafficPolling()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "EVENT_START_TRAFFIC_POLLING"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataPollingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 15
    .line 16
    const/16 v0, 0xe

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private handleStopTrafficPolling()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "EVENT_STOP_TRAFFIC_POLLING"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataPollingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 15
    .line 16
    const/16 v0, 0xe

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private handleStreamChangedEvent(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "handleStreamChangedEvent() : "

    .line 8
    .line 9
    const-string v4, " mhs state = "

    .line 10
    .line 11
    invoke-static {v3, v1, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v3, :cond_8

    .line 39
    .line 40
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ne v1, v3, :cond_0

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_0
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 51
    .line 52
    const-string v6, "sim_id_unknown"

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const/4 v6, 0x2

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    if-ne v1, v6, :cond_1

    .line 62
    .line 63
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getCurrentActiveDataSimDetail(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v8, "Unknow sim found, trying to get valid sim serial number = "

    .line 72
    .line 73
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v2, v7, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleSimChangeEvent(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    if-nez v3, :cond_2

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    iget-boolean v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isEbpfAPICalled:Z

    .line 117
    .line 118
    if-nez v5, :cond_2

    .line 119
    .line 120
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 121
    .line 122
    invoke-virtual {v5, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->setHotspotState(Z)V

    .line 123
    .line 124
    .line 125
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isEbpfAPICalled:Z

    .line 126
    .line 127
    const-string v5, "ebpf started"

    .line 128
    .line 129
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleStopTrafficPolling()V

    .line 133
    .line 134
    .line 135
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateDataUsageEvent()V

    .line 136
    .line 137
    .line 138
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateHistoryDbEvent()V

    .line 139
    .line 140
    .line 141
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 142
    .line 143
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 144
    .line 145
    .line 146
    if-eq v1, v4, :cond_4

    .line 147
    .line 148
    if-ne v1, v6, :cond_3

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleStopTrafficPolling()V

    .line 152
    .line 153
    .line 154
    const-string v5, "ebpf polling stop"

    .line 155
    .line 156
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    :goto_0
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataPollingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-nez v5, :cond_5

    .line 167
    .line 168
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_5

    .line 175
    .line 176
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getConnectedClientCount()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-lez v5, :cond_5

    .line 183
    .line 184
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleStartTrafficPolling()V

    .line 185
    .line 186
    .line 187
    :cond_5
    :goto_1
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 188
    .line 189
    const/4 v7, 0x0

    .line 190
    if-ne v1, v6, :cond_6

    .line 191
    .line 192
    move v8, v4

    .line 193
    goto :goto_2

    .line 194
    :cond_6
    move v8, v7

    .line 195
    :goto_2
    invoke-virtual {v5, v8}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleClientStreamChanged(Z)V

    .line 196
    .line 197
    .line 198
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 199
    .line 200
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-ne v5, v6, :cond_7

    .line 207
    .line 208
    move v10, v4

    .line 209
    goto :goto_3

    .line 210
    :cond_7
    move v10, v7

    .line 211
    :goto_3
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMobileDataEnableWhenMobileCellularEnabled()Z

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 222
    .line 223
    .line 224
    move-result-wide v13

    .line 225
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getActiveTotalDataUsage()J

    .line 226
    .line 227
    .line 228
    move-result-wide v15

    .line 229
    invoke-virtual/range {v9 .. v16}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->checkForDailyDataLimitReached(ZZZJJ)V

    .line 230
    .line 231
    .line 232
    new-instance v4, Ljava/lang/StringBuffer;

    .line 233
    .line 234
    const-string v5, "oldStream = "

    .line 235
    .line 236
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 240
    .line 241
    .line 242
    const-string v3, ", new Stream = "

    .line 243
    .line 244
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-static {v2, v3, v7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v3, "Upstream type changed ="

    .line 267
    .line 268
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getStreamInString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const-string v1, "#tag_wifi_ap_lab_hotspot_connection_event#"

    .line 283
    .line 284
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_8
    const-string v3, "Exception : trying to change upstream value when MHS is OFF, checking wifi ap state again"

    .line 289
    .line 290
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    const/16 v5, 0xd

    .line 306
    .line 307
    if-ne v3, v5, :cond_9

    .line 308
    .line 309
    const-string v3, "Exception : Wifi Ap is enabled, proceeding further"

    .line 310
    .line 311
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 315
    .line 316
    .line 317
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleWifiApEnabledEvent()V

    .line 318
    .line 319
    .line 320
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleStreamChangedEvent(I)V

    .line 321
    .line 322
    .line 323
    :cond_9
    :goto_4
    return-void
.end method

.method private handleUpdateDataUsageEvent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->handleDataUsageStatsUpdate(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;->clientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleUpdateDataUsageOfConnClients(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApSmartPrioritySupported()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->msemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->handleDataUsageStats(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x2

    .line 44
    if-ne v0, v1, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->checkDataUsageAndSwitchOffIfReached(J)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private handleUpdateHistoryDbEvent()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidSimSerialNumber(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->currentDate:Ljava/util/Calendar;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-virtual {v1, v2, v2, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getTopHotspotClientsToday(IILjava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getClientListJsonHandler()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, "\n"

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->saveDailyData(IIILjava/lang/String;JLcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method

.method private handleUpdatePollingRateEvent(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x3e8

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x1388

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x7d0

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataUsagePollingRateInMillSec:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataUsagePollingRateInMillSec:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Polling Interval set to "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataUsagePollingRateInMillSec:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 60
    .line 61
    const/16 v0, 0xe

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataUsagePollingRateInMillSec:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    int-to-long v1, p0

    .line 75
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void

    .line 79
    :cond_2
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    const-string p1, "MHS is not active , can\'t set the polling rate"

    .line 82
    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private handleWidgetFunctionalities()V
    .locals 10

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v1, "com.sec.mhs.smartmhswidget"

    .line 4
    .line 5
    const-string v2, "com.sec.mhs.smartmhswidget.ManageMobileHotspotWidget"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-boolean v3, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    array-length v3, v0

    .line 26
    move v5, v4

    .line 27
    :goto_0
    if-ge v5, v3, :cond_0

    .line 28
    .line 29
    aget v6, v0, v5

    .line 30
    .line 31
    sget-object v7, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v8, "Calling update to widget: "

    .line 34
    .line 35
    invoke-static {v6, v8}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v3, "appWidgetIds"

    .line 46
    .line 47
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    array-length v6, v0

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    new-instance v6, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    .line 74
    .line 75
    const-string v2, "com.sec.mhs.smartmhswidget.DashboardMobileHotspotWidget"

    .line 76
    .line 77
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sget-boolean v6, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 91
    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    array-length v6, v0

    .line 95
    :goto_1
    if-ge v4, v6, :cond_2

    .line 96
    .line 97
    aget v7, v0, v4

    .line 98
    .line 99
    sget-object v8, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    const-string v9, "Calling update to widget2: "

    .line 102
    .line 103
    invoke-static {v7, v9}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    if-eqz v0, :cond_3

    .line 114
    .line 115
    array-length v4, v0

    .line 116
    if-eqz v4, :cond_3

    .line 117
    .line 118
    new-instance v4, Landroid/content/Intent;

    .line 119
    .line 120
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 138
    .line 139
    const/16 v1, 0x10

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_4

    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getConnectedClientCount()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-lez v0, :cond_4

    .line 162
    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 164
    .line 165
    const-wide/16 v2, 0x1388

    .line 166
    .line 167
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    .line 169
    .line 170
    :cond_4
    return-void
.end method

.method private handleWifiApDisableEvent()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "handleWifiApDisableEvent() : mhs state = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleStopTrafficPolling()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateDataUsageEvent()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->handleUpdateHistoryDbEvent()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mUsedCurrentDayAndSimData:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleWifiApStopped()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->setHotspotState(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    .line 67
    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isEbpfAPICalled:Z

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mDataPollingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncAllRegisterCallbacks(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;J)V

    .line 89
    .line 90
    .line 91
    :cond_0
    return-void
.end method

.method private handleWifiApEnabledEvent()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "handleWifiApEnabledEvent() : mhs state = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleWifiApStarted()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mIsCurrentSessionClientDataLimitWasSet:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->misCurrentSessionClientTimeLimitWasSet:Z

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method private isInsideHotspotScreen()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "wifi_ap_inside_hotspot_screen"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    return v1
.end method

.method private isMobileDataEnableWhenMobileCellularEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isMobileDataEnable(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private synthetic lambda$registerIntentsCallbacks$0(IIILjava/lang/String;)V
    .locals 0

    .line 1
    const/16 p2, 0xd

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mApStaInfoListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->getWifiApDhcpFingerprintManager()Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientDhcpResultListener:Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->registerDhcpFingerprintUpdateCallback(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/16 p2, 0xb

    .line 29
    .line 30
    if-eq p1, p2, :cond_2

    .line 31
    .line 32
    const/16 p2, 0xe

    .line 33
    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mApStaInfoListener:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->getWifiApDhcpFingerprintManager()Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientDhcpResultListener:Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager;->unregisterDhcpFingerprintUpdateCallback(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpResultListener;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private synthetic lambda$registerIntentsCallbacks$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SIM_STATE_CHANGE state = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v3, " , reason = "

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {v2, p1, v3, p2}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-static {v0, p2, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const-string p2, "LOADED"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getCurrentActiveDataSimDetail(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "SIM_STATE_CHANGE : Loaded = "

    .line 55
    .line 56
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {v0, p2, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 93
    .line 94
    const/4 v0, 0x6

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 102
    .line 103
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    .line 105
    .line 106
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerIntentsCallbacks$2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getCurrentActiveDataSimDetail(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED = "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 31
    .line 32
    const/4 v2, 0x6

    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private synthetic lambda$registerIntentsCallbacks$3()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$registerIntentsCallbacks$4(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/util/Date;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "User Changed Time to yyyy-MM-dd HH:mm:ss = "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private registerIntentsCallbacks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/net/TetheringManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/TetheringManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mTetheringManager:Landroid/net/TetheringManager;

    .line 12
    .line 13
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 26
    .line 27
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$4;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$4;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 56
    .line 57
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    const/16 v2, 0xc

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCellularDataListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 81
    .line 82
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda1;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 91
    .line 92
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda2;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 101
    .line 102
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda3;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 111
    .line 112
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda4;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private saveOverAllDataLimitAndSyncCallback(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :goto_0
    move v3, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMhsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isMobileDataEnableWhenMobileCellularEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getActiveTotalDataUsage()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    move-wide v1, p1

    .line 36
    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->saveDailyDataLimitAndProceed(JZZZJJ)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageCallBackManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->syncRegisterCallbackForDataLimit(J)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private upStreamUpdated(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentTetheringUpstream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mTempUpStream:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mStreamChangeWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mStreamChangeWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "upStreamUpdated() : "

    .line 30
    .line 31
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public backUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Taking backup of clients Settings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApSettings:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->getClientSettingTableBackupString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public factoryReset()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 2
    .line 3
    const/16 v0, 0x11

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getDailyMhsDataLimit()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getMonthlyDataUsage()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getMonthlyListNotIncludingTodayDataUsage()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, " "

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sub-int/2addr v1, v4

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    array-length v5, v2

    .line 71
    const/4 v6, 0x2

    .line 72
    if-ne v5, v6, :cond_1

    .line 73
    .line 74
    :try_start_0
    aget-object v1, v2, v4

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    add-long/2addr v5, v7

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    sub-int/2addr p0, v4

    .line 90
    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    aget-object v1, v2, v1

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string v2, "last month data is not correct ? = "

    .line 126
    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getSemWifiApEbpf()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->msemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApSmartPrioritySupported()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Landroid/os/Handler;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->msemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->msemWifiApTrafficPriority:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 35
    .line 36
    return-object p0
.end method

.method public getTodayMhsClientCountInDB()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getTotalNumberOfClientsInDb()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getTodayTotalDataUsage()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mUsedCurrentDayAndSimData:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->getGlobalDataUsageStats()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;->mCurrentDayAndSimCellularBytes:J

    .line 14
    .line 15
    add-long/2addr v0, v2

    .line 16
    return-wide v0
.end method

.method public getTopHotspotClientsToday(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getTopHotspotClientsToday(IILjava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mCurrentActiveSimSerialNumber:Ljava/lang/String;

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWeeklyDataList(Ljava/lang/String;JJ)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApClientListManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->getDeepCopyClientDetailsObject(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public guestClientConnected(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "guest Client connected mac = "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/os/Message;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    const/16 p1, 0x1b

    .line 38
    .line 39
    iput p1, v0, Landroid/os/Message;->what:I

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public handleBootCompleted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public internetNetworktypeChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isOverAllMhsDataLimitReached()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->restartAdvBecauseOfUpstreamChanged()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public isClientDataLimitWasSetInLastSession()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mIsCurrentSessionClientDataLimitWasSet:Z

    .line 2
    .line 3
    return p0
.end method

.method public isClientTImeLimitWasSetInLastSession()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->misCurrentSessionClientTimeLimitWasSet:Z

    .line 2
    .line 3
    return p0
.end method

.method public isNeededToShowWifiApDatalimitReachedDialog()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isActiveNetworkIsCellular(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->isOverAllMhsDataLimitReached()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public isOverAllMhsDataLimitReached()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->isDataLimitReached(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "getTodayTotalDataUsage:"

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getTodayTotalDataUsage()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ",dailyDataLimit:"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApOverAllDataLimitManager:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApOverAllDataLimitManager;->getGlobalDataLimitPerDay()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    return p0
.end method

.method public isOverAllMhsDataLimitSet()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->getDailyMhsDataLimit()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ibinder"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "callback_identifier"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string p1, "client_mac"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Landroid/os/Message;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    const/16 p2, 0x16

    .line 32
    .line 33
    iput p2, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ibinder"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "callback_identifier"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string p1, "list_callback_max_param"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string p1, "list_callback_top_param"

    .line 22
    .line 23
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Landroid/os/Message;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    const/16 p2, 0x14

    .line 37
    .line 38
    iput p2, p1, Landroid/os/Message;->what:I

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public restoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/os/Message;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    const/16 p1, 0x12

    .line 11
    .line 12
    iput p1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public restoreDailyHotspotDataLimit(J)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    const/16 p1, 0x18

    .line 13
    .line 14
    iput p1, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setClientDataLimit(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "client_mac"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "client_data_limit"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroid/os/Message;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    const/16 p2, 0x9

    .line 31
    .line 32
    iput p2, p1, Landroid/os/Message;->what:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public setClientTimeLimit(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "client_mac"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "client_time_limit"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroid/os/Message;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    const/16 p2, 0xa

    .line 31
    .line 32
    iput p2, p1, Landroid/os/Message;->what:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public setDailyMhsDataLimit(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/Message;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    iput v1, v0, Landroid/os/Message;->what:I

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "setWifiApClientDataPaused mac = "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", val = "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    new-instance v0, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "client_mac"

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "client_pause_sharing"

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/Message;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    const/16 p2, 0xb

    .line 62
    .line 63
    iput p2, p1, Landroid/os/Message;->what:I

    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public setWifiApClientEditedDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "client_mac"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "client_edited_name"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroid/os/Message;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    const/16 p2, 0x19

    .line 31
    .line 32
    iput p2, p1, Landroid/os/Message;->what:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public unregisterClientDataUsageCallback(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callback_identifier"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Landroid/os/Message;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x17

    .line 20
    .line 21
    iput v0, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public unregisterClientListDataUsageCallback(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callback_identifier"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Landroid/os/Message;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x15

    .line 20
    .line 21
    iput v0, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public updateDeviceDetailsFromNsd(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApClientDeviceTypeSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p3}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;->isValidDeviceType(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "client_mac"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "client_device_type"

    .line 30
    .line 31
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string p1, "client_name"

    .line 35
    .line 36
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "client_ip"

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "is_static_ip"

    .line 45
    .line 46
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const-string p1, "is_dhcp_name_disabled"

    .line 50
    .line 51
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string p1, "client_is_autohotspot_client"

    .line 55
    .line 56
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Landroid/os/Message;

    .line 60
    .line 61
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    const/16 p2, 0x1a

    .line 68
    .line 69
    iput p2, p1, Landroid/os/Message;->what:I

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage;->mSemWifiApDataUsageHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsage$SemWifiApDataUsageHandler;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method
