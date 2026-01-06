.class public Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;
    }
.end annotation


# static fields
.field private static final AB_REPORT_CONTROLLED_MAN_REC_SCN1:Ljava/lang/String; = "ctrl_man_recon_scn1"

.field private static final AB_REPORT_CONTROLLED_MAN_REC_SCN2:Ljava/lang/String; = "ctrl_man_recon_scn2"

.field private static final AB_REPORT_CONTROLLED_SCN1:Ljava/lang/String; = "ctrl_scn1"

.field private static final AB_REPORT_CONTROLLED_SCN2:Ljava/lang/String; = "ctrl_scn2"

.field private static final AB_REPORT_NOT_CONTROLLED_AUTO_REC_SCN1:Ljava/lang/String; = "not_ctrl_auto_recon_scn1"

.field private static final AB_REPORT_NOT_CONTROLLED_AUTO_REC_SCN2:Ljava/lang/String; = "not_ctrl_auto_recon_scn2"

.field private static final AB_REPORT_NOT_CONTROLLED_MAN_REC_SCN1:Ljava/lang/String; = "not_ctrl_man_recon_scn1"

.field private static final AB_REPORT_NOT_CONTROLLED_MAN_REC_SCN2:Ljava/lang/String; = "not_ctrl_man_recon_scn2"

.field private static final AB_REPORT_NOT_CONTROLLED_MAN_WIFI_OFF_SCN1:Ljava/lang/String; = "not_ctrl_man_wifi_off_scn1"

.field private static final AB_REPORT_NOT_CONTROLLED_MAN_WIFI_OFF_SCN2:Ljava/lang/String; = "not_ctrl_man_wifi_off_scn2"

.field private static final AB_REPORT_NOT_CONTROLLED_SCN1:Ljava/lang/String; = "not_ctrl_scn1"

.field private static final AB_REPORT_NOT_CONTROLLED_SCN2:Ljava/lang/String; = "not_ctrl_scn2"

.field private static final BOUND_CANDIDATE_REASON_BY_LEVEL2_ENTER:I = 0x5

.field private static final BOUND_REASON_BY_LINK_LOST:I = 0x1

.field private static final BOUND_REASON_BY_NUD_FAILURE:I = 0x2

.field private static final CHANNEL_UTILIZATION_OF_COMEBACK_MARGIN:I = 0x19

.field private static final CHANNEL_UTILIZATION_TO_DETERMINE_AS_NOISY_ENV:I = 0x66

.field private static final CHECK_SCANLIST_ALREADY_RELEASED_BY_STEPS:I = 0x1

.field private static final CHECK_SCANLIST_FOUND_CANDIDATE_TO_HANDOVER:I = 0x4

.field private static final CHECK_SCANLIST_NO_NEED_TO_RELEASE:I = 0x0

.field private static final CHECK_SCANLIST_OPERATION_TIMED_OUT:I = 0x3

.field private static final CHECK_SCANLIST_RELEASED_BY_CONSECUTIVE_NO_FOUND:I = 0x2

.field public static final CONNECTED_REASON_BY_AB_STARTED:I = 0xd

.field public static final CONNECTED_REASON_BY_AUTOJOIN:I = 0xb

.field public static final CONNECTED_REASON_BY_MANUAL:I = 0xc

.field public static final CONNECTED_REASON_BY_OTHER:I = 0xe

.field private static final DBG:Z

.field private static final ENTRY:I = 0x1

.field private static final ENTRY_RSSI_OF_BAND_24_GHZ_IN_NOISY_ENV:I = -0x48

.field private static final EVENT_A_GROUP_WAITING_FOR_RECONNECTION_EXPIRED:I = 0x6d

.field private static final EVENT_B_GROUP_WAITING_FOR_RECONNECTION_EXPIRED:I = 0x6e

.field private static final EVENT_DHCP_SESSION:I = 0x67

.field private static final EVENT_DHCP_STARTED_AND_WAITING_COMPLETE:I = 0x68

.field private static final EVENT_NON_NATIVE_SCAN_RESULT_UPDATED:I = 0x6b

.field private static final EVENT_NON_NATIVE_SCAN_RESULT_UPDATED_FOR_ENTRY_RSSI:I = 0x6c

.field private static final EVENT_REACHABILIT_LOST:I = 0x66

.field private static final EVENT_STEP_CHECK_AFTER_DISC:I = 0x65

.field private static final EVENT_STEP_CHECK_AFTER_LEVEL2:I = 0x6a

.field private static final EVENT_THE_LAST_TIMEOUT_WITHOUT_RELEASE:I = 0x64

.field private static final EVENT_WIFI_LINK_DISCONNECTED:I = 0x69

.field private static final EVENT_WIFI_OFF_BY_USER:I = 0x6f

.field private static final EXIT:I = 0x0

.field private static final GOOD:I = 0x3

.field private static final NOT_FOUND_CONSECUTIVE_COUNTER_TO_RELEASE:I = 0x3

.field private static final NUM_OF_BAND_24_GHZ_BSSID_TO_DETERMINE_AS_NOISY_ENV:I = 0x28

.field private static final NUM_OF_BSSID_OF_COMEBACK_MARGIN:I = 0xa

.field private static final PEDOMETER_REGISTER_REASON_BY_ALL:I = 0xffff

.field private static final PEDOMETER_REGISTER_REASON_BY_DHCP_FAIL:I = 0x8

.field private static final PEDOMETER_REGISTER_REASON_BY_DISC:I = 0x1

.field private static final PEDOMETER_REGISTER_REASON_BY_LEVEl2:I = 0x2

.field private static final PEDOMETER_REGISTER_REASON_BY_REACHABILITY_LOST:I = 0x4

.field private static final RELEASE_REASON_BY_AB_PARAM_CHANGED:I = 0x9

.field private static final RELEASE_REASON_BY_ALTERNATIVE_NETWORK_FOUND:I = 0x8

.field private static final RELEASE_REASON_BY_CONSECUTIVE_NOT_FOUND:I = 0x3

.field private static final RELEASE_REASON_BY_PEDOMETER:I = 0x4

.field private static final RELEASE_REASON_BY_SNS_OFF:I = 0x7

.field private static final RELEASE_REASON_BY_THE_LAST_TIMEOUT:I = 0x6

.field private static final RELEASE_REASON_BY_WIFI_CONNECTED:I = 0x5

.field private static final RELEASE_REASON_BY_WIFI_OFF:I = 0xa

.field private static final RSSI_THRESHOLD_UPPER_BOUND2:I = -0x3f

.field private static final RSSI_THRESHOLD_UPPER_BOUND56:I = -0x44

.field private static final SUFFICIENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RssiThresholdNetSelector"

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defaultEntryRssiOfBand24Ghz:I

.field private defaultRssi2:[I

.field private defaultRssi5:[I

.field private defaultRssi6:[I

.field private final defaultRssiThresholds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private hysteresisRssi:I

.field private lastDhcpStartedTimeMs:J

.field private lastReachabilityLostTimeMs:J

.field private mAbTestTargetModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/BoundModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAbTestValue:I

.field private mBoundCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/BoundModel;",
            ">;"
        }
    .end annotation
.end field

.field private mBounedLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/BoundModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsHolding:Z

.field private mIsHoldingAllowed:Z

.field private mIsRunning:Z

.field private mLastConnectedWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private final mLastFoundTsfMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHoldReason:I

.field private mLevel2Rssi:I

.field private final mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mNoBoundedBssidFoundOnScanResult:I

.field private final mPreScanResultProcessor:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

.field private mRechabilityLostRssi:I

.field private mScanResultHookCallback:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

.field private mSnsSettingValue:I

.field private mToastDebug:Z

.field private mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

.field private minStepsToInvalidateLevel2Rssi:I

.field private minStepsToRelease:I


# direct methods
.method public static synthetic $r8$lambda$N6ZK5c0d_mNodfwqIUqWTAAw06U(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lambda$determineDefaultEntryRssi$0(Landroid/net/wifi/ScanResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$sUBBjFPTO_C9P7wgT63ma20iVOE(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lambda$runningStart$1(Ljava/lang/String;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mAddHistoryAndELog(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;)V
    .locals 1

    .line 1
    const-string v0, "CHECK_SCANLIST_OPERATION_TIMED_OUT"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic -$$Nest$mAddHistoryAndILog(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScanResultAndReleaseHoldingIfNeeded(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->checkScanResultAndReleaseHoldingIfNeeded(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetDefaultThresholdsAndInit(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->setDefaultThresholdsAndInit()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->DBG:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/LinkedList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mHistory:Ljava/util/LinkedList;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mToastDebug:Z

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->hysteresisRssi:I

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->minStepsToRelease:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->minStepsToInvalidateLevel2Rssi:I

    .line 27
    .line 28
    const/16 v1, -0x49

    .line 29
    .line 30
    const/16 v2, -0x3c

    .line 31
    .line 32
    const/16 v3, -0x53

    .line 33
    .line 34
    const/16 v4, -0x4e

    .line 35
    .line 36
    filled-new-array {v3, v4, v1, v2}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 41
    .line 42
    const/16 v1, -0x50

    .line 43
    .line 44
    const/16 v2, -0x4b

    .line 45
    .line 46
    const/16 v3, -0x46

    .line 47
    .line 48
    const/16 v5, -0x39

    .line 49
    .line 50
    filled-new-array {v1, v2, v3, v5}, [I

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi5:[I

    .line 55
    .line 56
    const/16 v1, -0x54

    .line 57
    .line 58
    const/16 v2, -0x51

    .line 59
    .line 60
    filled-new-array {v1, v2, v3, v5}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi6:[I

    .line 65
    .line 66
    new-instance v1, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 72
    .line 73
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultEntryRssiOfBand24Ghz:I

    .line 74
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBoundCandidates:Ljava/util/List;

    .line 81
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 88
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestTargetModelList:Ljava/util/List;

    .line 95
    .line 96
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 97
    .line 98
    new-instance v1, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastFoundTsfMap:Ljava/util/HashMap;

    .line 104
    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 106
    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 108
    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHoldingAllowed:Z

    .line 110
    .line 111
    const-wide/16 v1, 0x0

    .line 112
    .line 113
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lastReachabilityLostTimeMs:J

    .line 114
    .line 115
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lastDhcpStartedTimeMs:J

    .line 116
    .line 117
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 118
    .line 119
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mRechabilityLostRssi:I

    .line 120
    .line 121
    const/4 v1, -0x1

    .line 122
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestValue:I

    .line 123
    .line 124
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mSnsSettingValue:I

    .line 125
    .line 126
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 127
    .line 128
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$1;

    .line 129
    .line 130
    const-class v1, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 131
    .line 132
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$1;-><init>(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/lang/Class;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mScanResultHookCallback:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 136
    .line 137
    new-instance v0, Landroid/os/Handler;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mHandler:Landroid/os/Handler;

    .line 147
    .line 148
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    const-string p1, "wifi"

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 157
    .line 158
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 159
    .line 160
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->initRssiTable()V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->initLastFoundTsfMap()V

    .line 164
    .line 165
    .line 166
    new-instance p1, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 167
    .line 168
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;-><init>(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 172
    .line 173
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mPreScanResultProcessor:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 178
    .line 179
    const-string p1, "RssiThresholdNetSelector created"

    .line 180
    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method private AddHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v0, "\n"

    .line 5
    .line 6
    const-string v1, " - "

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/Date;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " "

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mHistory:Ljava/util/LinkedList;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mHistory:Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/16 v0, 0x64

    .line 64
    .line 65
    if-le p1, v0, :cond_0

    .line 66
    .line 67
    sget-object p1, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mHistory:Ljava/util/LinkedList;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_4

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :catch_1
    move-exception p1

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    const-string v0, "RssiThresholdNetSelector"

    .line 82
    .line 83
    const-string v1, "out of memory error in dump: "

    .line 84
    .line 85
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    monitor-exit p0

    .line 89
    goto :goto_3

    .line 90
    :goto_2
    const-string v0, "RssiThresholdNetSelector"

    .line 91
    .line 92
    const-string v1, "format problem in dump: "

    .line 93
    .line 94
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    monitor-exit p0

    .line 98
    :goto_3
    return-void

    .line 99
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    throw p1
.end method

.method private AddHistoryAndELog(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistory(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "RssiThresholdNetSelector"

    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private AddHistoryAndILog(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistory(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "RssiThresholdNetSelector"

    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private channelToFreq(II)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p2, p2, -0x1

    .line 6
    .line 7
    mul-int/lit8 p2, p2, 0x5

    .line 8
    .line 9
    add-int/lit16 p2, p2, 0x1743

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    const/16 p0, 0xe

    .line 13
    .line 14
    if-gt p2, p0, :cond_1

    .line 15
    .line 16
    const/16 p0, 0x967

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 p0, 0x1388

    .line 20
    .line 21
    :goto_0
    mul-int/lit8 p2, p2, 0x5

    .line 22
    .line 23
    add-int/2addr p2, p0

    .line 24
    return p2
.end method

.method private checkScanResultAndReleaseHoldingIfNeeded(Ljava/util/List;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;I)I"
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->checkStepsAndReleaseHoldingIfNeeded()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_7

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/net/wifi/nl80211/NativeScanResult;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/net/wifi/nl80211/NativeScanResult;->getBssid()Landroid/net/MacAddress;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p2}, Landroid/net/wifi/nl80211/NativeScanResult;->getSignalMbm()I

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p2}, Landroid/net/wifi/nl80211/NativeScanResult;->getFrequencyMhz()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiBand(I)I

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    move v4, v0

    .line 65
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_6

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 76
    .line 77
    iget-object v6, v5, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBssid:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastFoundTsfMap:Ljava/util/HashMap;

    .line 86
    .line 87
    iget v7, v5, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 88
    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Ljava/lang/Long;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    const-wide/16 v8, 0x0

    .line 104
    .line 105
    cmp-long v6, v6, v8

    .line 106
    .line 107
    if-eqz v6, :cond_5

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    iget-object v8, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastFoundTsfMap:Ljava/util/HashMap;

    .line 114
    .line 115
    iget v9, v5, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 116
    .line 117
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    check-cast v8, Ljava/lang/Long;

    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    cmp-long v6, v6, v8

    .line 132
    .line 133
    if-lez v6, :cond_5

    .line 134
    .line 135
    move v4, v1

    .line 136
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastFoundTsfMap:Ljava/util/HashMap;

    .line 137
    .line 138
    iget v5, v5, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {p2}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    .line 145
    .line 146
    .line 147
    move-result-wide v7

    .line 148
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    if-eqz v4, :cond_2

    .line 157
    .line 158
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 159
    .line 160
    const-string p0, "RssiThresholdNetSelector"

    .line 161
    .line 162
    const-string p1, "Bounded Bssid found on PreScanResult"

    .line 163
    .line 164
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    return v0

    .line 168
    :cond_7
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 169
    .line 170
    add-int/2addr p1, v1

    .line 171
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 172
    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string p2, "Bounded Bssid is not found on PreScanResult, consecutive count("

    .line 176
    .line 177
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 181
    .line 182
    const-string v1, ")"

    .line 183
    .line 184
    invoke-static {v1, p2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 192
    .line 193
    const/4 p2, 0x3

    .line 194
    if-lt p1, p2, :cond_8

    .line 195
    .line 196
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 197
    .line 198
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->initLastFoundTsfMap()V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->releaseBoundedBssid(I)V

    .line 202
    .line 203
    .line 204
    const/4 p0, 0x2

    .line 205
    return p0

    .line 206
    :cond_8
    return v0
.end method

.method private checkStepsAndInvalidateLevel2RssiIfNeeded()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->isPedometerEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->getStepsSince(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v5, "stepsAfterLevel2Register : "

    .line 22
    .line 23
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v5, "RssiThresholdNetSelector"

    .line 34
    .line 35
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->minStepsToInvalidateLevel2Rssi:I

    .line 39
    .line 40
    int-to-long v5, v0

    .line 41
    cmp-long v0, v3, v5

    .line 42
    .line 43
    if-ltz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->unregisterPedometer(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_1
    return v1
.end method

.method private checkStepsAndReleaseHoldingIfNeeded()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->isPedometerEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->getStepsSince(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "stepsAfterDiscRegister : "

    .line 21
    .line 22
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v4, "RssiThresholdNetSelector"

    .line 33
    .line 34
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->minStepsToRelease:I

    .line 38
    .line 39
    int-to-long v4, v0

    .line 40
    cmp-long v0, v2, v4

    .line 41
    .line 42
    if-ltz v0, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->releaseBoundedBssid(I)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method private determineDefaultEntryRssi(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    long-to-int v0, v0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->getAverage24GHzChannelUtilization(Ljava/util/List;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, [I

    .line 35
    .line 36
    aget v2, v2, v3

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v5, "determineDefaultEntryRssi: total="

    .line 41
    .line 42
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, " / 2.4GHz="

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, ", avgCu="

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v5, ", currentEntryRssi="

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const-string v5, "RssiThresholdNetSelector"

    .line 81
    .line 82
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultEntryRssiOfBand24Ghz:I

    .line 86
    .line 87
    const/4 v5, 0x3

    .line 88
    const/4 v6, 0x2

    .line 89
    if-ne v2, v4, :cond_1

    .line 90
    .line 91
    const/16 v4, 0x28

    .line 92
    .line 93
    if-ge v0, v4, :cond_0

    .line 94
    .line 95
    const/16 v4, 0x66

    .line 96
    .line 97
    if-le v1, v4, :cond_4

    .line 98
    .line 99
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 100
    .line 101
    const/16 v7, -0x48

    .line 102
    .line 103
    aput v7, v4, v3

    .line 104
    .line 105
    add-int/lit8 v8, v7, 0x5

    .line 106
    .line 107
    aput v8, v4, v6

    .line 108
    .line 109
    add-int/lit8 v7, v7, 0xc

    .line 110
    .line 111
    aput v7, v4, v5

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/16 v7, 0x1e

    .line 115
    .line 116
    if-ge v0, v7, :cond_4

    .line 117
    .line 118
    const/16 v7, 0x4d

    .line 119
    .line 120
    if-ge v1, v7, :cond_4

    .line 121
    .line 122
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 123
    .line 124
    aput v4, v7, v3

    .line 125
    .line 126
    add-int/lit8 v8, v4, 0x5

    .line 127
    .line 128
    aput v8, v7, v6

    .line 129
    .line 130
    add-int/lit8 v4, v4, 0x12

    .line 131
    .line 132
    aput v4, v7, v5

    .line 133
    .line 134
    :goto_0
    const-string v4, "determineDefaultEntryRssi: 2.4GHz BSSID="

    .line 135
    .line 136
    const-string v5, " / "

    .line 137
    .line 138
    invoke-static {v4, v0, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p1, " and avgCu="

    .line 150
    .line 151
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p1, "/255, so change entry RSSI on 2.4GHz from "

    .line 158
    .line 159
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p1, " to "

    .line 166
    .line 167
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 171
    .line 172
    aget p1, p1, v3

    .line 173
    .line 174
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 178
    .line 179
    if-eqz p1, :cond_2

    .line 180
    .line 181
    const-string p1, ", but will be applied later"

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_2
    const-string p1, ", and applied now"

    .line 185
    .line 186
    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 197
    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 203
    .line 204
    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mToastDebug:Z

    .line 208
    .line 209
    if-eqz p1, :cond_3

    .line 210
    .line 211
    const-string p1, "2.4GHz BSSID="

    .line 212
    .line 213
    const-string v4, ", avgCU="

    .line 214
    .line 215
    invoke-static {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    mul-int/lit8 v1, v1, 0x64

    .line 220
    .line 221
    div-int/lit16 v1, v1, 0xff

    .line 222
    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v0, "%, change default entry RSSI: "

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v0, " -> "

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 240
    .line 241
    aget v0, v0, v3

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 251
    .line 252
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 257
    .line 258
    .line 259
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 260
    .line 261
    if-nez p1, :cond_4

    .line 262
    .line 263
    new-instance p1, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 264
    .line 265
    invoke-direct {p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;-><init>()V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 269
    .line 270
    invoke-virtual {p1, v3, v0}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->setRssiThresholds(I[I)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->build()Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    .line 292
    .line 293
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 294
    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, [I

    .line 304
    .line 305
    aget v1, v1, v3

    .line 306
    .line 307
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 312
    .line 313
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, [I

    .line 322
    .line 323
    aget v2, v2, v3

    .line 324
    .line 325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 330
    .line 331
    const/16 v5, 0x8

    .line 332
    .line 333
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    check-cast v4, [I

    .line 342
    .line 343
    aget v3, v4, v3

    .line 344
    .line 345
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    .line 359
    .line 360
    const-string v1, "wlan0"

    .line 361
    .line 362
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateConnectionRssiThreshold(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-nez p1, :cond_4

    .line 367
    .line 368
    const-string p1, "updateConnectionRssiThreshold returned failure"

    .line 369
    .line 370
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    :cond_4
    return-void
.end method

.method private getAverage24GHzChannelUtilization(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    move v0, p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getBand()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eq v3, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/IeParser;->parse(Landroid/net/wifi/ScanResult;)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "channelUtilization"

    .line 32
    .line 33
    const/4 v3, -0x1

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v1, v3, :cond_0

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    add-int/2addr p1, v1

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    div-int/2addr p1, p0

    .line 51
    return p1
.end method

.method private getHysteresisRssi(II)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "getHysteresisRssi - consider level2Rssi ("

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 24
    .line 25
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mRechabilityLostRssi:I

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "getHysteresisRssi - consider rechabilityLostRssi ("

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mRechabilityLostRssi:I

    .line 41
    .line 42
    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mRechabilityLostRssi:I

    .line 50
    .line 51
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->hysteresisRssi:I

    .line 56
    .line 57
    add-int/2addr p1, v0

    .line 58
    const/4 v0, 0x1

    .line 59
    if-ne p2, v0, :cond_2

    .line 60
    .line 61
    const/16 v1, -0x3f

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/16 v1, -0x44

    .line 65
    .line 66
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, [I

    .line 77
    .line 78
    aget v2, v2, v0

    .line 79
    .line 80
    if-ge p1, v2, :cond_3

    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, [I

    .line 93
    .line 94
    aget p1, p0, v0

    .line 95
    .line 96
    :cond_3
    if-le p1, v1, :cond_4

    .line 97
    .line 98
    return v1

    .line 99
    :cond_4
    return p1
.end method

.method private getReadibleBandName(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const-string p0, "2.4G"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 p0, 0x2

    .line 8
    if-ne p1, p0, :cond_1

    .line 9
    .line 10
    const-string p0, "5G"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/16 p0, 0x8

    .line 14
    .line 15
    if-ne p1, p0, :cond_2

    .line 16
    .line 17
    const-string p0, "6G"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const-string p0, ""

    .line 21
    .line 22
    return-object p0
.end method

.method private holdBoundedBssid()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHoldingAllowed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->isBoundedListValid()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, ""

    .line 20
    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 35
    .line 36
    iget v6, v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 37
    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, [I

    .line 47
    .line 48
    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, [I

    .line 53
    .line 54
    iget v6, v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 55
    .line 56
    add-int/lit8 v7, v6, -0x3

    .line 57
    .line 58
    aput v7, v5, v1

    .line 59
    .line 60
    aput v6, v5, v4

    .line 61
    .line 62
    add-int/lit8 v7, v6, 0x7

    .line 63
    .line 64
    const/4 v8, 0x2

    .line 65
    aput v7, v5, v8

    .line 66
    .line 67
    add-int/lit8 v6, v6, 0xd

    .line 68
    .line 69
    const/4 v7, 0x3

    .line 70
    aput v6, v5, v7

    .line 71
    .line 72
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->isValidRssiThresholdArray([I)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_1

    .line 77
    .line 78
    const-string v0, "rssis to hold is not valid"

    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    :cond_1
    new-instance v6, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 85
    .line 86
    invoke-direct {v6}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget v7, v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 90
    .line 91
    invoke-virtual {v6, v7, v5}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->setRssiThresholds(I[I)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 96
    .line 97
    invoke-virtual {v6}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->build()Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 102
    .line 103
    .line 104
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 105
    .line 106
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->initLastFoundTsfMap()V

    .line 107
    .line 108
    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v7, "RSSI Threshold\nbssid("

    .line 112
    .line 113
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v7, v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBssid:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v7, ") rssi("

    .line 122
    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    aget v7, v5, v4

    .line 127
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v7, ") band("

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget v7, v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 137
    .line 138
    const-string v8, ")"

    .line 139
    .line 140
    invoke-static {v8, v7, v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 145
    .line 146
    invoke-virtual {v7, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const-string v7, "RssiThresholdNetSelector"

    .line 151
    .line 152
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v2, "Entry RSSI changed for "

    .line 164
    .line 165
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v2, v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 169
    .line 170
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->getReadibleBandName(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, " "

    .line 178
    .line 179
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 183
    .line 184
    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 185
    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, [I

    .line 195
    .line 196
    aget v2, v2, v4

    .line 197
    .line 198
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v2, "->"

    .line 202
    .line 203
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    aget v2, v5, v4

    .line 207
    .line 208
    const-string v3, "\n"

    .line 209
    .line 210
    invoke-static {v3, v2, v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 217
    .line 218
    if-eqz v0, :cond_3

    .line 219
    .line 220
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->registerPedometer(I)V

    .line 221
    .line 222
    .line 223
    :cond_3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 232
    .line 233
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->getSortedRssiThresholdList(Ljava/util/List;)Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const-string v3, "wlan0"

    .line 238
    .line 239
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateConnectionRssiThreshold(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_4

    .line 244
    .line 245
    const-string v0, "updateConnectionRssiThreshold returned failure"

    .line 246
    .line 247
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_4
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 251
    .line 252
    const/16 v0, 0x64

    .line 253
    .line 254
    const-wide/32 v5, 0x1b7740

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistory(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mToastDebug:Z

    .line 264
    .line 265
    if-eqz v0, :cond_5

    .line 266
    .line 267
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 268
    .line 269
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 274
    .line 275
    .line 276
    :cond_5
    return v4

    .line 277
    :cond_6
    return v1
.end method

.method private initAllVariables()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBoundCandidates:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mNoBoundedBssidFoundOnScanResult:I

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->initLastFoundTsfMap()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 18
    .line 19
    const v2, 0xffff

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->unregisterPedometer(I)V

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mRechabilityLostRssi:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 30
    .line 31
    return-void
.end method

.method private initBoundCandidate(Landroid/net/wifi/WifiInfo;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBoundCandidates:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->invalidateNudFailureBound()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->unregisterPedometer(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 21
    .line 22
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mRechabilityLostRssi:I

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "\n"

    .line 29
    .line 30
    const-string v3, ") rssi("

    .line 31
    .line 32
    const-string v4, ") band("

    .line 33
    .line 34
    const-string v5, ") freq("

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    const-string v7, ""

    .line 38
    .line 39
    const-string v8, ")"

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-le v9, v6, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_4

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Landroid/net/wifi/MloLink;

    .line 64
    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    if-nez v10, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v10}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getChannel()I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getBand()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getChannel()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    invoke-direct {v0, v12, v9}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->channelToFreq(II)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    iget-object v12, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v12}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    invoke-virtual {v12, v9}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiBand(I)I

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    new-instance v14, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 113
    .line 114
    invoke-direct {v14, v10, v9, v12, v13}, Lcom/samsung/android/server/wifi/wcm/BoundModel;-><init>(Ljava/lang/String;III)V

    .line 115
    .line 116
    .line 117
    new-instance v15, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v6, "mlo - bssid("

    .line 120
    .line 121
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v6, ") channel("

    .line 128
    .line 129
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v12}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->getReadibleBandName(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    iget-object v9, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 183
    .line 184
    invoke-virtual {v9, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v6, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBoundCandidates:Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_2
    :goto_1
    const/4 v6, 0x1

    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_3
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 200
    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    iget-object v10, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    invoke-static {v10}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    invoke-virtual {v10, v11}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiBand(I)I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    invoke-direct {v1, v6, v9, v10, v11}, Lcom/samsung/android/server/wifi/wcm/BoundModel;-><init>(Ljava/lang/String;III)V

    .line 228
    .line 229
    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v9, "bssid("

    .line 233
    .line 234
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiBand(I)I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-static {v7, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBoundCandidates:Ljava/util/List;

    .line 296
    .line 297
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    move-object/from16 v3, p1

    .line 307
    .line 308
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iput-object v1, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastConnectedWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 313
    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v3, "init per link - size("

    .line 317
    .line 318
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBoundCandidates:Ljava/util/List;

    .line 322
    .line 323
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistory(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mToastDebug:Z

    .line 362
    .line 363
    if-eqz v2, :cond_5

    .line 364
    .line 365
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->DBG:Z

    .line 366
    .line 367
    if-eqz v2, :cond_5

    .line 368
    .line 369
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 370
    .line 371
    const/4 v2, 0x1

    .line 372
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 377
    .line 378
    .line 379
    :cond_5
    return-void
.end method

.method private initLastFoundTsfMap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastFoundTsfMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastFoundTsfMap:Ljava/util/HashMap;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastFoundTsfMap:Ljava/util/HashMap;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastFoundTsfMap:Ljava/util/HashMap;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private initRssiTable()V
    .locals 9

    .line 1
    const-string v0, "RssiThresholdNetSelector"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    instance-of v2, v1, Landroid/net/wifi/WifiContext;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    check-cast v1, Landroid/net/wifi/WifiContext;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiContext;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/net/wifi/WifiContext;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const v6, 0x7f05008c

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x0

    .line 35
    aput v5, v4, v6

    .line 36
    .line 37
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const v7, 0x7f05008e

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    aput v5, v4, v3

    .line 51
    .line 52
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const v7, 0x7f050092

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    aput v5, v4, v2

    .line 66
    .line 67
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const v7, 0x7f050090

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    const/4 v7, 0x3

    .line 81
    aput v5, v4, v7

    .line 82
    .line 83
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi5:[I

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const v8, 0x7f05008d

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    aput v5, v4, v6

    .line 97
    .line 98
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi5:[I

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const v8, 0x7f05008f

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    aput v5, v4, v3

    .line 112
    .line 113
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi5:[I

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const v8, 0x7f050093

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    aput v5, v4, v2

    .line 127
    .line 128
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi5:[I

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const v8, 0x7f050091

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    aput v5, v4, v7

    .line 142
    .line 143
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi6:[I

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const v8, 0x7f05004f

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    aput v5, v4, v6

    .line 157
    .line 158
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi6:[I

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    const v6, 0x7f050050

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    aput v5, v4, v3

    .line 172
    .line 173
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi6:[I

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    const v6, 0x7f050052

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    aput v5, v4, v2

    .line 187
    .line 188
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi6:[I

    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const v5, 0x7f050051

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    aput v1, v4, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :catch_0
    const-string v1, "resources loading error"

    .line 205
    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 210
    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 216
    .line 217
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi5:[I

    .line 227
    .line 228
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 232
    .line 233
    const/16 v2, 0x8

    .line 234
    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi6:[I

    .line 240
    .line 241
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 245
    .line 246
    aget v1, v1, v3

    .line 247
    .line 248
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultEntryRssiOfBand24Ghz:I

    .line 249
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v2, "defaultRssi2: "

    .line 253
    .line 254
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssi2:[I

    .line 258
    .line 259
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    return-void
.end method

.method private invalidateNudFailureBound()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "RssiThresholdNetSelector"

    .line 6
    .line 7
    const-string v1, "invalidateNudFailureBound"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lastReachabilityLostTimeMs:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lastDhcpStartedTimeMs:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mRechabilityLostRssi:I

    .line 20
    .line 21
    const/16 v0, 0x68

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private isBoundedListValid()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_8

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x2

    .line 20
    if-le v0, v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_7

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBssid:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    return v1

    .line 46
    :cond_3
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 47
    .line 48
    if-gez v2, :cond_6

    .line 49
    .line 50
    const/16 v3, -0x7d

    .line 51
    .line 52
    if-ge v2, v3, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 56
    .line 57
    if-nez v2, :cond_5

    .line 58
    .line 59
    return v1

    .line 60
    :cond_5
    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mFreq:I

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    :cond_6
    :goto_0
    return v1

    .line 65
    :cond_7
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_8
    :goto_1
    return v1
.end method

.method private isRssiThresholdResetArray([I)Z
    .locals 3

    .line 1
    array-length p0, p1

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_1

    .line 5
    .line 6
    aget v2, p1, v1

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method private isValidRssiThresholdArray([I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x4

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->isRssiThresholdResetArray([I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_3

    .line 14
    .line 15
    const/16 p0, 0xc8

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/16 v1, -0x7f

    .line 23
    .line 24
    move v2, v0

    .line 25
    :goto_0
    array-length v3, p1

    .line 26
    if-ge v2, v3, :cond_3

    .line 27
    .line 28
    aget v3, p1, v2

    .line 29
    .line 30
    if-le v3, v1, :cond_2

    .line 31
    .line 32
    if-le v3, p0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    return v0

    .line 40
    :cond_3
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_4
    :goto_2
    return v0
.end method

.method private static synthetic lambda$determineDefaultEntryRssi$0(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->getBand()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private synthetic lambda$runningStart$1(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x6f

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private releaseBoundedBssid(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Restore Entry RSSI - reason("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->releaseReasonToString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ")"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "RssiThresholdNetSelector"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const-string v1, "\n"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x5

    .line 36
    if-eq p1, v2, :cond_0

    .line 37
    .line 38
    const/4 v2, 0x7

    .line 39
    if-eq p1, v2, :cond_0

    .line 40
    .line 41
    const/16 v2, 0x9

    .line 42
    .line 43
    if-eq p1, v2, :cond_0

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->isBoundedListValid()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    const-string p1, "Bounded List is not valid, can not release the bounded bssids. use default"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->setDefaultThresholdsAndInit()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v3, 0x1

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 78
    .line 79
    new-instance v4, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 80
    .line 81
    invoke-direct {v4}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget v5, v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 85
    .line 86
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, [I

    .line 97
    .line 98
    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->setRssiThresholds(I[I)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->build()Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 109
    .line 110
    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v5, "  -  "

    .line 114
    .line 115
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v5, v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 119
    .line 120
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->getReadibleBandName(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v5, " "

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 133
    .line 134
    iget v2, v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 135
    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, [I

    .line 145
    .line 146
    aget v2, v2, v3

    .line 147
    .line 148
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->getSortedRssiThresholdList(Ljava/util/List;)Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v2, "wlan0"

    .line 189
    .line 190
    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateConnectionRssiThreshold(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-nez p1, :cond_2

    .line 195
    .line 196
    const-string p1, "updateConnectionRssiThreshold returned failure"

    .line 197
    .line 198
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_2
    const/16 p1, 0x64

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    .line 205
    .line 206
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->initAllVariables()V

    .line 207
    .line 208
    .line 209
    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_3

    .line 217
    .line 218
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistory(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mToastDebug:Z

    .line 222
    .line 223
    if-eqz p1, :cond_3

    .line 224
    .line 225
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 232
    .line 233
    .line 234
    :cond_3
    return-void
.end method

.method private releaseReasonToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "none"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "AB_PARAM_CHANGED"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "BY_ALTERNATIVE_NETWORK_FOUND"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "BY_SNS_OFF"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "BY_THE_LAST_TIMEOUT"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "BY_WIFI_CONNECTED"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "BY_PEDOMETER"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "BY_CONSECUTIVE_NOT_FOUND"

    .line 26
    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reportAbTestResult(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "reportAbTestResult - "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v0, "sem_wifi"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string v0, "EntryRssiControl"

    .line 23
    .line 24
    const-string v1, "hit"

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->reportAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private runningStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mPreScanResultProcessor:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mScanResultHookCallback:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->registerHookCallback(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiControlMonitor()Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 25
    .line 26
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 36
    .line 37
    const-string v0, "running Start"

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private runningStop(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->releaseBoundedBssid(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mPreScanResultProcessor:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mScanResultHookCallback:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;->unregisterHookCallback(Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$HookCallback;)Z

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 17
    .line 18
    const-string p1, "running Stop"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private setDefaultThresholdsAndInit()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    new-instance v3, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, [I

    .line 48
    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->setRssiThresholds(I[I)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->build()Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "wlan0"

    .line 81
    .line 82
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateConnectionRssiThreshold(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    const-string v0, "updateConnectionRssiThreshold returned failure"

    .line 89
    .line 90
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->initAllVariables()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private setupBoundedInfo(ILjava/lang/String;I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "RssiThresholdNetSelector"

    .line 6
    .line 7
    const-string p1, "already holding bounded bssid, ignore this call"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBoundCandidates:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_a

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBssid:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBoundCandidates:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/BoundModel;->clone()Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 65
    .line 66
    invoke-direct {p0, p3, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->getHysteresisRssi(II)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p3, "need to hold the bound list, counter="

    .line 81
    .line 82
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestValue:I

    .line 102
    .line 103
    const-wide/16 v0, 0x7530

    .line 104
    .line 105
    const/4 p3, 0x2

    .line 106
    if-nez p2, :cond_6

    .line 107
    .line 108
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 109
    .line 110
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestTargetModelList:Ljava/util/List;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/BoundModel;->clone()Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 139
    .line 140
    if-ne p2, v2, :cond_4

    .line 141
    .line 142
    const-string p2, "not_ctrl_scn1"

    .line 143
    .line 144
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    if-ne p2, p3, :cond_5

    .line 149
    .line 150
    const-string p2, "not_ctrl_scn2"

    .line 151
    .line 152
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_2
    const-string p2, "[A]need to hold the bound list but skip actual holding"

    .line 156
    .line 157
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/16 p2, 0x6d

    .line 161
    .line 162
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->holdBoundedBssid()Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_9

    .line 171
    .line 172
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 173
    .line 174
    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestValue:I

    .line 175
    .line 176
    if-ne p2, v2, :cond_a

    .line 177
    .line 178
    if-ne p1, v2, :cond_7

    .line 179
    .line 180
    const-string p2, "ctrl_scn1"

    .line 181
    .line 182
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    if-ne p1, p3, :cond_8

    .line 187
    .line 188
    const-string p2, "ctrl_scn2"

    .line 189
    .line 190
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    :goto_3
    const/16 p2, 0x6e

    .line 194
    .line 195
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    const-string p2, "fail to hold bounded list"

    .line 200
    .line 201
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->setDefaultThresholdsAndInit()V

    .line 205
    .line 206
    .line 207
    :cond_a
    :goto_4
    if-ne p1, v2, :cond_b

    .line 208
    .line 209
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->invalidateNudFailureBound()V

    .line 210
    .line 211
    .line 212
    :cond_b
    return-void
.end method


# virtual methods
.method public getHistory()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v0
.end method

.method getSortedRssiThresholdList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/wcm/BoundModel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 32
    .line 33
    iget v4, v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 34
    .line 35
    if-ne v4, v3, :cond_1

    .line 36
    .line 37
    iget v1, v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, [I

    .line 58
    .line 59
    aget v1, v1, v3

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v4, 0x2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 84
    .line 85
    iget v5, v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 86
    .line 87
    if-ne v5, v4, :cond_3

    .line 88
    .line 89
    iget v1, v2, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, [I

    .line 110
    .line 111
    aget v1, v1, v3

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    const/16 v2, 0x8

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 137
    .line 138
    iget v4, v1, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 139
    .line 140
    if-ne v4, v2, :cond_5

    .line 141
    .line 142
    iget p0, v1, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 143
    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, [I

    .line 163
    .line 164
    aget p0, p0, v3

    .line 165
    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/16 v3, 0x68

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/16 v5, 0x6d

    .line 9
    .line 10
    const-string v6, "RssiThresholdNetSelector"

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :pswitch_0
    const-string p1, "EVENT_WIFI_OFF_BY_USER"

    .line 18
    .line 19
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_7

    .line 27
    .line 28
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 29
    .line 30
    if-ne p1, v4, :cond_0

    .line 31
    .line 32
    const-string p1, "not_ctrl_man_wifi_off_scn1"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-ne p1, v2, :cond_1

    .line 39
    .line 40
    const-string p1, "not_ctrl_man_wifi_off_scn2"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestTargetModelList:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    .line 52
    .line 53
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 54
    .line 55
    const/16 p1, 0xa

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->releaseBoundedBssid(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    const-string p1, "EVENT_B_GROUP_WAITING_FOR_RECONNECTION_EXPIRED"

    .line 62
    .line 63
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const/16 p1, 0x6e

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_2
    const-string p1, "EVENT_A_GROUP_WAITING_FOR_RECONNECTION_EXPIRED"

    .line 73
    .line 74
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestTargetModelList:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Ljava/util/List;

    .line 89
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->determineDefaultEntryRssi(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Ljava/util/List;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastConnectedWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastConnectedWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 139
    .line 140
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->qualifiedToHandoverCandidate(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->checkAlternativeNetworksFromScanResults(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    const/4 v2, -0x1

    .line 158
    if-eq v1, v2, :cond_2

    .line 159
    .line 160
    const-string p1, "alternative network found on NonNativeScanResult"

    .line 161
    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/16 p1, 0x8

    .line 166
    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->releaseBoundedBssid(I)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->checkStepsAndInvalidateLevel2RssiIfNeeded()Z

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Ljava/lang/String;

    .line 178
    .line 179
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 180
    .line 181
    const/16 v6, 0x3e8

    .line 182
    .line 183
    if-lt v5, v6, :cond_4

    .line 184
    .line 185
    move v1, v4

    .line 186
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 187
    .line 188
    if-ne v1, v4, :cond_5

    .line 189
    .line 190
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_5

    .line 195
    .line 196
    const-string v1, "wifi disconnected in step 2"

    .line 197
    .line 198
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->setupBoundedInfo(ILjava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->invalidateNudFailureBound()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :pswitch_7
    const-string p1, "Dhcp is not completed within 30secs and Wi-Fi link is not disconnected"

    .line 209
    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndELog(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->invalidateNudFailureBound()V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Ljava/lang/String;

    .line 220
    .line 221
    const-string v0, "start"

    .line 222
    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 230
    .line 231
    .line 232
    move-result-wide v0

    .line 233
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lastReachabilityLostTimeMs:J

    .line 234
    .line 235
    sub-long/2addr v0, v4

    .line 236
    const-wide/16 v4, 0x0

    .line 237
    .line 238
    cmp-long p1, v0, v4

    .line 239
    .line 240
    if-lez p1, :cond_7

    .line 241
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 243
    .line 244
    .line 245
    move-result-wide v0

    .line 246
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lastReachabilityLostTimeMs:J

    .line 247
    .line 248
    sub-long/2addr v0, v4

    .line 249
    const-wide/16 v4, 0xbb8

    .line 250
    .line 251
    cmp-long p1, v0, v4

    .line 252
    .line 253
    if-gez p1, :cond_7

    .line 254
    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 256
    .line 257
    .line 258
    move-result-wide v0

    .line 259
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lastDhcpStartedTimeMs:J

    .line 260
    .line 261
    const-string p1, "Dhcp started after reachability lost, waiting dhcp complete within 30secs..."

    .line 262
    .line 263
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    .line 268
    .line 269
    const-wide/16 v0, 0x7530

    .line 270
    .line 271
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :cond_6
    const-string v0, "complete"

    .line 276
    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_7

    .line 282
    .line 283
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->invalidateNudFailureBound()V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :pswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 288
    .line 289
    .line 290
    move-result-wide v0

    .line 291
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->lastReachabilityLostTimeMs:J

    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->checkStepsAndReleaseHoldingIfNeeded()Z

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :pswitch_b
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 299
    .line 300
    if-nez p1, :cond_8

    .line 301
    .line 302
    :cond_7
    :goto_2
    return-void

    .line 303
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->checkStepsAndReleaseHoldingIfNeeded()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_9

    .line 308
    .line 309
    const-string p0, "already released by steps"

    .line 310
    .line 311
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :cond_9
    const/4 p1, 0x6

    .line 316
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->releaseBoundedBssid(I)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public notifyAbTestParamChanged(I)V
    .locals 2

    .line 1
    const-string v0, "AbTestParam changed : "

    .line 2
    .line 3
    const-string v1, "RssiThresholdNetSelector"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestValue:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mSnsSettingValue:I

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->runningStart()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0xd

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyWifiConnected(Landroid/net/wifi/WifiInfo;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public notifyAllowHolding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHoldingAllowed:Z

    .line 7
    .line 8
    return-void
.end method

.method public notifyDhcpSession(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "notifyDhcpSession "

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v1, 0x67

    .line 20
    .line 21
    iput v1, v0, Landroid/os/Message;->what:I

    .line 22
    .line 23
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public notifyLevel1Entered(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p1, "notifyLevel1Entered"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->unregisterPedometer(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 21
    .line 22
    return-void
.end method

.method public notifyLevel2Entered(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "notifyLevel2Entered "

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLevel2Rssi:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->registerPedometer(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyLevel2Exit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "notifyLevel2Exit"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->unregisterPedometer(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyLinkLost(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLogUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "notifyLinkLost - bssid("

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ") rssi("

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ")"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->setupBoundedInfo(ILjava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyNetworkDisconnected(Ljava/lang/String;III)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "notifyNetworkDisconnected - bssid("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ") local("

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ") reason("

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ") lastRssi("

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ")"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->unregisterPedometer(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/16 v1, 0x69

    .line 65
    .line 66
    iput v1, v0, Landroid/os/Message;->what:I

    .line 67
    .line 68
    mul-int/lit16 p2, p2, 0x3e8

    .line 69
    .line 70
    add-int/2addr p2, p3

    .line 71
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 72
    .line 73
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 74
    .line 75
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public notifyRechabilityLost(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "notifyRechabilityLost - rssi("

    .line 7
    .line 8
    const-string v1, ")"

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x66

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mRechabilityLostRssi:I

    .line 23
    .line 24
    return-void
.end method

.method public notifyScanResultUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x6c

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsRunning:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mIsHolding:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0x6b

    .line 24
    .line 25
    iput v1, v0, Landroid/os/Message;->what:I

    .line 26
    .line 27
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public notifySnsSettingsChanged(I)V
    .locals 2

    .line 1
    const-string v0, "Sns Settings changed : "

    .line 2
    .line 3
    const-string v1, "RssiThresholdNetSelector"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mSnsSettingValue:I

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x7

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->runningStop(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestValue:I

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->runningStart()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/16 v0, 0xe

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyWifiConnected(Landroid/net/wifi/WifiInfo;I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public notifyWifiConnected(Landroid/net/wifi/WifiInfo;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    if-eqz p1, :cond_18

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    const-string v2, "notifyWifiConnected reason : "

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->AddHistoryAndILog(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x6d

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x6e

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestTargetModelList:Ljava/util/List;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget-object v3, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mBounedLists:Ljava/util/List;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v3, 0x0

    .line 48
    :goto_0
    if-nez v3, :cond_3

    .line 49
    .line 50
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 51
    .line 52
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "ctrl_man_recon_scn2"

    .line 57
    .line 58
    const-string v7, "not_ctrl_man_recon_scn2"

    .line 59
    .line 60
    const-string v8, "not_ctrl_auto_recon_scn2"

    .line 61
    .line 62
    const-string v10, "ctrl_man_recon_scn1"

    .line 63
    .line 64
    const-string v11, "not_ctrl_man_recon_scn1"

    .line 65
    .line 66
    const-string v12, "not_ctrl_auto_recon_scn1"

    .line 67
    .line 68
    const/4 v15, 0x1

    .line 69
    if-eqz v5, :cond_e

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-le v9, v15, :cond_e

    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_17

    .line 86
    .line 87
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Landroid/net/wifi/MloLink;

    .line 92
    .line 93
    if-eqz v9, :cond_4

    .line 94
    .line 95
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    if-nez v16, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    invoke-virtual/range {v16 .. v16}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v16

    .line 114
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v17

    .line 118
    if-eqz v17, :cond_d

    .line 119
    .line 120
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v17

    .line 124
    move-object/from16 v13, v17

    .line 125
    .line 126
    check-cast v13, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 127
    .line 128
    if-nez v13, :cond_6

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    if-eqz v4, :cond_c

    .line 132
    .line 133
    iget-object v2, v13, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBssid:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_c

    .line 140
    .line 141
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 142
    .line 143
    iget v14, v13, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 144
    .line 145
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, [I

    .line 154
    .line 155
    aget v2, v2, v15

    .line 156
    .line 157
    iget v13, v13, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 158
    .line 159
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getRssi()I

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    if-lt v14, v2, :cond_c

    .line 164
    .line 165
    invoke-virtual {v9}, Landroid/net/wifi/MloLink;->getRssi()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-gt v2, v13, :cond_c

    .line 170
    .line 171
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 172
    .line 173
    if-ne v2, v15, :cond_9

    .line 174
    .line 175
    const/16 v13, 0xb

    .line 176
    .line 177
    if-ne v1, v13, :cond_7

    .line 178
    .line 179
    const/16 v2, 0x6d

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_d

    .line 186
    .line 187
    invoke-direct {v0, v12}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    const/16 v2, 0x6d

    .line 192
    .line 193
    const/16 v4, 0xc

    .line 194
    .line 195
    if-ne v1, v4, :cond_d

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_8

    .line 202
    .line 203
    invoke-direct {v0, v11}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    const/16 v2, 0x6e

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_d

    .line 214
    .line 215
    invoke-direct {v0, v10}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_9
    const/4 v13, 0x2

    .line 220
    if-ne v2, v13, :cond_c

    .line 221
    .line 222
    const/16 v13, 0xb

    .line 223
    .line 224
    if-ne v1, v13, :cond_a

    .line 225
    .line 226
    const/16 v2, 0x6d

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-eqz v4, :cond_d

    .line 233
    .line 234
    invoke-direct {v0, v8}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_a
    const/16 v2, 0x6d

    .line 239
    .line 240
    const/16 v4, 0xc

    .line 241
    .line 242
    if-ne v1, v4, :cond_d

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_b

    .line 249
    .line 250
    invoke-direct {v0, v7}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_b
    const/16 v2, 0x6e

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_d

    .line 261
    .line 262
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_c
    const/16 v2, 0x6d

    .line 267
    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :cond_d
    :goto_3
    const/16 v2, 0x6d

    .line 271
    .line 272
    const/16 v4, 0x6e

    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_17

    .line 289
    .line 290
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    check-cast v4, Lcom/samsung/android/server/wifi/wcm/BoundModel;

    .line 295
    .line 296
    if-nez v4, :cond_f

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_f
    if-eqz v2, :cond_16

    .line 300
    .line 301
    iget-object v5, v4, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBssid:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_16

    .line 308
    .line 309
    iget-object v5, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->defaultRssiThresholds:Ljava/util/HashMap;

    .line 310
    .line 311
    iget v9, v4, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mBand:I

    .line 312
    .line 313
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    check-cast v5, [I

    .line 322
    .line 323
    aget v5, v5, v15

    .line 324
    .line 325
    iget v4, v4, Lcom/samsung/android/server/wifi/wcm/BoundModel;->mRssi:I

    .line 326
    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    if-lt v9, v5, :cond_16

    .line 332
    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-gt v5, v4, :cond_16

    .line 338
    .line 339
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 340
    .line 341
    if-ne v4, v15, :cond_12

    .line 342
    .line 343
    const/16 v13, 0xb

    .line 344
    .line 345
    if-ne v1, v13, :cond_10

    .line 346
    .line 347
    const/16 v2, 0x6d

    .line 348
    .line 349
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_17

    .line 354
    .line 355
    invoke-direct {v0, v12}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_10
    const/16 v2, 0x6d

    .line 360
    .line 361
    const/16 v4, 0xc

    .line 362
    .line 363
    if-ne v1, v4, :cond_17

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_11

    .line 370
    .line 371
    invoke-direct {v0, v11}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_11
    const/16 v2, 0x6e

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_17

    .line 382
    .line 383
    invoke-direct {v0, v10}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_12
    const/4 v13, 0x2

    .line 388
    if-ne v4, v13, :cond_15

    .line 389
    .line 390
    const/16 v4, 0xb

    .line 391
    .line 392
    if-ne v1, v4, :cond_13

    .line 393
    .line 394
    const/16 v2, 0x6d

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_17

    .line 401
    .line 402
    invoke-direct {v0, v8}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_13
    const/16 v2, 0x6d

    .line 407
    .line 408
    const/16 v5, 0xc

    .line 409
    .line 410
    if-ne v1, v5, :cond_17

    .line 411
    .line 412
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-eqz v1, :cond_14

    .line 417
    .line 418
    invoke-direct {v0, v7}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto :goto_5

    .line 422
    :cond_14
    const/16 v2, 0x6e

    .line 423
    .line 424
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-eqz v1, :cond_17

    .line 429
    .line 430
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->reportAbTestResult(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_15
    const/16 v4, 0xb

    .line 435
    .line 436
    const/16 v5, 0xc

    .line 437
    .line 438
    goto/16 :goto_4

    .line 439
    .line 440
    :cond_16
    const/16 v4, 0xb

    .line 441
    .line 442
    const/16 v5, 0xc

    .line 443
    .line 444
    const/4 v13, 0x2

    .line 445
    goto/16 :goto_4

    .line 446
    .line 447
    :cond_17
    :goto_5
    const/4 v1, 0x5

    .line 448
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->releaseBoundedBssid(I)V

    .line 449
    .line 450
    .line 451
    iget-object v1, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mAbTestTargetModelList:Ljava/util/List;

    .line 452
    .line 453
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 454
    .line 455
    .line 456
    const/16 v2, 0x6d

    .line 457
    .line 458
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    .line 460
    .line 461
    const/16 v2, 0x6e

    .line 462
    .line 463
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    .line 465
    .line 466
    const/4 v1, 0x0

    .line 467
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mLastHoldReason:I

    .line 468
    .line 469
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->initBoundCandidate(Landroid/net/wifi/WifiInfo;)V

    .line 470
    .line 471
    .line 472
    :cond_18
    :goto_6
    return-void
.end method

.method public notifyWlanAdvDebugSet()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->mToastDebug:Z

    .line 3
    .line 4
    return-void
.end method
