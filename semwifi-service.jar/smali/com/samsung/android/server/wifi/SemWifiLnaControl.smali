.class public final Lcom/samsung/android/server/wifi/SemWifiLnaControl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x7d0

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiLnaControl history:"

.field private static final ELNA_CONTROL_BYPASS:I = 0x1

.field private static final ELNA_CONTROL_NOT_BYPASS:I = 0x0

.field private static final ELNA_VENDOR_CONTROL:I = 0x2

.field private static final GET_SCPM_POLICY:I = 0x1

.field private static final LINK_STATE_UPDATE:I = 0x2

.field private static final LNA_CONTROL_CHECK:I = 0x0

.field private static final LNA_CONTROL_CHECK_PERIOD_LONG_MS:I = 0x2710

.field private static final LNA_CONTROL_CHECK_PERIOD_SHORT_MS:I = 0xbb8

.field private static final LNA_STATUS_QUERY:I = 0x4

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final MINIMUM_BANDWIDTH_MHZ:I = 0x14

.field private static final MIN_SENSITIVITY_TABLE:[[I

.field private static final ON_CONNECTION:I = 0x3

.field private static final RATE_TABLE:[[[D

.field private static final SCPM_CONFIGURATION_NAME:Ljava/lang/String; = "ELNA_CONTROL"

.field private static final TAG:Ljava/lang/String; = "SemWifiLnaControl"

.field private static final UNKNOWN_VERSION_H:Ljava/lang/String; = "9999"

.field private static final UNKNOWN_VERSION_L:Ljava/lang/String; = "0000"

.field private static final isFeatureEnabled:Z = false

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
.field private connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private connectionTimeS:J

.field private cummulativeOffTimeS:J

.field private elnaControlHighThresholdDbm:I

.field private elnaControlLowThresholdDbm:I

.field private final elnaControlVersion:Ljava/lang/String;

.field private elnaCurrent:[I

.field private elnaEnableSensitivityRatio:D

.field private elnaGain:I

.field private final ifaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastBW:I

.field private lastCcaBusyTimeMs:J

.field private lastCheckTimeS:J

.field private lastMCSIdx:I

.field private lastMode:I

.field private lastNSS:I

.field private lastRateStatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;"
        }
    .end annotation
.end field

.field private lastRxTimeMs:J

.field private lastTimeMs:J

.field private lastTxTimeMs:J

.field private latestSCPMVersion:Ljava/lang/String;

.field private lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

.field private lnaStatus:I

.field private lnaStatusChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mContext:Landroid/content/Context;

.field private mIfaceName:Ljava/lang/String;

.field private final mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

.field private priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private rxCurrent:[I

.field private rxTimeRatioPercent:J

.field private scpmDriverVersion:Ljava/lang/String;

.field private scpmElnaControlVersion:Ljava/lang/String;

.field private scpmFirmwareVersion:Ljava/lang/String;

.field private screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private wifiStandardBound:I


# direct methods
.method public static synthetic $r8$lambda$Q2fxzjqIsgrRN1xGoyjg9SJBJVg(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connectionTimeS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->cummulativeOffTimeS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetelnaControlHighThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlHighThresholdDbm:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetelnaControlLowThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlLowThresholdDbm:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetelnaCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaCurrent:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetelnaEnableSensitivityRatio(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaEnableSensitivityRatio:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetelnaGain(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaGain:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->ifaces:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastBW:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCheckTimeS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMCSIdx:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMode:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastNSS:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlnaControlHandler(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatus:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlnaStatusChanged(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatusChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrxCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxCurrent:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrxTimeRatioPercent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxTimeRatioPercent:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetscreenOn(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiStandardBound(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputconnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connectionTimeS:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->cummulativeOffTimeS:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCheckTimeS:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatus:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScpmPolicy(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->checkScpmPolicy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->eLnaControl(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$meLnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->eLnaStatus()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mfindExpectedMCS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->findExpectedMCS(IIII)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getExpectedRate(IIII)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetExpectedRssi(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getExpectedRssi(IIII)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpolicyComplianceCheck(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->policyComplianceCheck()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->updateWifiUsabilityStatsEntry(Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMIN_SENSITIVITY_TABLE()[[I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    const/16 v0, -0x4f

    .line 9
    .line 10
    const/16 v1, -0x4d

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [I

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    const/16 v4, -0x4c

    .line 20
    .line 21
    const/16 v5, -0x50

    .line 22
    .line 23
    filled-new-array {v5, v0, v1, v4}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-array v5, v2, [I

    .line 28
    .line 29
    fill-array-data v5, :array_1

    .line 30
    .line 31
    .line 32
    new-array v6, v2, [I

    .line 33
    .line 34
    fill-array-data v6, :array_2

    .line 35
    .line 36
    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    new-array v7, v0, [I

    .line 40
    .line 41
    fill-array-data v7, :array_3

    .line 42
    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    new-array v8, v1, [I

    .line 47
    .line 48
    fill-array-data v8, :array_4

    .line 49
    .line 50
    .line 51
    filled-new-array/range {v3 .. v8}, [[I

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sput-object v3, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    new-array v4, v3, [[D

    .line 59
    .line 60
    const/4 v5, 0x4

    .line 61
    new-array v5, v5, [D

    .line 62
    .line 63
    fill-array-data v5, :array_5

    .line 64
    .line 65
    .line 66
    filled-new-array {v5}, [[D

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    new-array v6, v3, [[D

    .line 71
    .line 72
    new-array v3, v2, [D

    .line 73
    .line 74
    fill-array-data v3, :array_6

    .line 75
    .line 76
    .line 77
    new-array v2, v2, [D

    .line 78
    .line 79
    fill-array-data v2, :array_7

    .line 80
    .line 81
    .line 82
    filled-new-array {v3, v2}, [[D

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    new-array v2, v0, [D

    .line 87
    .line 88
    fill-array-data v2, :array_8

    .line 89
    .line 90
    .line 91
    new-array v3, v0, [D

    .line 92
    .line 93
    fill-array-data v3, :array_9

    .line 94
    .line 95
    .line 96
    new-array v8, v0, [D

    .line 97
    .line 98
    fill-array-data v8, :array_a

    .line 99
    .line 100
    .line 101
    new-array v0, v0, [D

    .line 102
    .line 103
    fill-array-data v0, :array_b

    .line 104
    .line 105
    .line 106
    filled-new-array {v2, v3, v8, v0}, [[D

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    new-array v0, v1, [D

    .line 111
    .line 112
    fill-array-data v0, :array_c

    .line 113
    .line 114
    .line 115
    new-array v2, v1, [D

    .line 116
    .line 117
    fill-array-data v2, :array_d

    .line 118
    .line 119
    .line 120
    new-array v3, v1, [D

    .line 121
    .line 122
    fill-array-data v3, :array_e

    .line 123
    .line 124
    .line 125
    new-array v1, v1, [D

    .line 126
    .line 127
    fill-array-data v1, :array_f

    .line 128
    .line 129
    .line 130
    filled-new-array {v0, v2, v3, v1}, [[D

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    filled-new-array/range {v4 .. v9}, [[[D

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->RATE_TABLE:[[[D

    .line 139
    .line 140
    return-void

    .line 141
    :array_0
    .array-data 4
        -0x52
        -0x51
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_1
    .array-data 4
        -0x52
        -0x51
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_2
    .array-data 4
        -0x52
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
        -0x40
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_3
    .array-data 4
        -0x52
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
        -0x40
        -0x3b
        -0x39
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_4
    .array-data 4
        -0x52
        -0x4f
        -0x4d
        -0x4a
        -0x46
        -0x42
        -0x41
        -0x40
        -0x3b
        -0x39
        -0x36
        -0x34
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_5
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4016000000000000L    # 5.5
        0x4026000000000000L    # 11.0
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_6
    .array-data 8
        0x401ccccccccccccdL    # 7.2
        0x402ccccccccccccdL    # 14.4
        0x4035b33333333333L    # 21.7
        0x403ce66666666666L    # 28.9
        0x4045a66666666666L    # 43.3
        0x404ce66666666666L    # 57.8
        0x4050400000000000L    # 65.0
        0x40520ccccccccccdL    # 72.2
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_7
    .array-data 8
        0x402e000000000000L    # 15.0
        0x403e000000000000L    # 30.0
        0x4046800000000000L    # 45.0
        0x404e000000000000L    # 60.0
        0x4056800000000000L    # 90.0
        0x405e000000000000L    # 120.0
        0x4060e00000000000L    # 135.0
        0x4062c00000000000L    # 150.0
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_8
    .array-data 8
        0x401ccccccccccccdL    # 7.2
        0x402ccccccccccccdL    # 14.4
        0x4035b33333333333L    # 21.7
        0x403ce66666666666L    # 28.9
        0x4045a66666666666L    # 43.3
        0x404ce66666666666L    # 57.8
        0x4050400000000000L    # 65.0
        0x40520ccccccccccdL    # 72.2
        0x4055accccccccccdL    # 86.7
        0x4058133333333333L    # 96.3
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_9
    .array-data 8
        0x402e000000000000L    # 15.0
        0x403e000000000000L    # 30.0
        0x4046800000000000L    # 45.0
        0x404e000000000000L    # 60.0
        0x4056800000000000L    # 90.0
        0x405e000000000000L    # 120.0
        0x4060e00000000000L    # 135.0
        0x4062c00000000000L    # 150.0
        0x4066800000000000L    # 180.0
        0x4069000000000000L    # 200.0
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_a
    .array-data 8
        0x4040400000000000L    # 32.5
        0x4050400000000000L    # 65.0
        0x4058600000000000L    # 97.5
        0x4060400000000000L    # 130.0
        0x4068600000000000L    # 195.0
        0x4070400000000000L    # 260.0
        0x4072480000000000L    # 292.5
        0x4074500000000000L    # 325.0
        0x4078600000000000L    # 390.0
        0x407b14cccccccccdL    # 433.3
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_b
    .array-data 8
        0x4050400000000000L    # 65.0
        0x4060400000000000L    # 130.0
        0x4068600000000000L    # 195.0
        0x4070400000000000L    # 260.0
        0x4078600000000000L    # 390.0
        0x4080400000000000L    # 520.0
        0x4082480000000000L    # 585.0
        0x4084500000000000L    # 650.0
        0x4088600000000000L    # 780.0
        0x408b15999999999aL    # 866.7
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_c
    .array-data 8
        0x4021333333333333L    # 8.6
        0x4031333333333333L    # 17.2
        0x4039cccccccccccdL    # 25.8
        0x4041333333333333L    # 34.4
        0x4049cccccccccccdL    # 51.6
        0x4051333333333333L    # 68.8
        0x405359999999999aL    # 77.4
        0x4055800000000000L    # 86.0
        0x4059cccccccccccdL    # 103.2
        0x405caccccccccccdL    # 114.7
        0x4060200000000000L    # 129.0
        0x4061eccccccccccdL    # 143.4
    .end array-data

    :array_d
    .array-data 8
        0x4031333333333333L    # 17.2
        0x4041333333333333L    # 34.4
        0x4049cccccccccccdL    # 51.6
        0x4051333333333333L    # 68.8
        0x4059cccccccccccdL    # 103.2
        0x4061333333333333L    # 137.6
        0x40635ccccccccccdL    # 154.9
        0x4065833333333333L    # 172.1
        0x4069d00000000000L    # 206.5
        0x406caccccccccccdL    # 229.4
        0x407021999999999aL    # 258.1
        0x4071eccccccccccdL    # 286.8
    .end array-data

    :array_e
    .array-data 8
        0x4042000000000000L    # 36.0
        0x4052066666666666L    # 72.1
        0x405b066666666666L    # 108.1
        0x4062033333333333L    # 144.1
        0x406b066666666666L    # 216.2
        0x4072033333333333L    # 288.2
        0x4074466666666666L    # 324.4
        0x407684cccccccccdL    # 360.3
        0x407b066666666666L    # 432.4
        0x407e066666666666L    # 480.4
        0x4080e33333333333L    # 540.4
        0x4082c40000000000L    # 600.5
    .end array-data

    :array_f
    .array-data 8
        0x4052000000000000L    # 72.0
        0x4062000000000000L    # 144.0
        0x406b000000000000L    # 216.0
        0x4071a00000000000L    # 282.0
        0x407b000000000000L    # 432.0
        0x4082000000000000L    # 576.0
        0x4084480000000000L    # 649.0
        0x4086880000000000L    # 721.0
        0x408b080000000000L    # 865.0
        0x408e080000000000L    # 961.0
        0x4090e40000000000L    # 1081.0
        0x4092c40000000000L    # 1201.0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->ifaces:Ljava/util/Set;

    .line 13
    .line 14
    const-string v1, "1.0"

    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlVersion:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->latestSCPMVersion:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "9999"

    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    .line 31
    .line 32
    const/16 v1, 0xe

    .line 33
    .line 34
    const/16 v2, 0x1c

    .line 35
    .line 36
    filled-new-array {v1, v2}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaCurrent:[I

    .line 41
    .line 42
    const/16 v2, 0x3c

    .line 43
    .line 44
    const/16 v3, 0x78

    .line 45
    .line 46
    filled-new-array {v2, v3}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxCurrent:[I

    .line 51
    .line 52
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaGain:I

    .line 53
    .line 54
    const/16 v1, -0x23

    .line 55
    .line 56
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlHighThresholdDbm:I

    .line 57
    .line 58
    const/16 v1, -0x4b

    .line 59
    .line 60
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlLowThresholdDbm:I

    .line 61
    .line 62
    const-wide v1, 0x3fe3333333333333L    # 0.6

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaEnableSensitivityRatio:D

    .line 68
    .line 69
    const-wide/16 v1, 0x0

    .line 70
    .line 71
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCheckTimeS:J

    .line 72
    .line 73
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->cummulativeOffTimeS:J

    .line 74
    .line 75
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 78
    .line 79
    .line 80
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 86
    .line 87
    .line 88
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    const/4 v3, 0x2

    .line 91
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatus:I

    .line 92
    .line 93
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 96
    .line 97
    .line 98
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatusChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRxTimeMs:J

    .line 101
    .line 102
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTxTimeMs:J

    .line 103
    .line 104
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCcaBusyTimeMs:J

    .line 105
    .line 106
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTimeMs:J

    .line 107
    .line 108
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxTimeRatioPercent:J

    .line 109
    .line 110
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMCSIdx:I

    .line 111
    .line 112
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastNSS:I

    .line 113
    .line 114
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMode:I

    .line 115
    .line 116
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastBW:I

    .line 117
    .line 118
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$1;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 124
    .line 125
    new-instance v1, Ljava/util/LinkedList;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRateStatList:Ljava/util/List;

    .line 131
    .line 132
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    .line 135
    .line 136
    .line 137
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 138
    .line 139
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl$3;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    .line 142
    .line 143
    .line 144
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 145
    .line 146
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 147
    .line 148
    invoke-virtual {p5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 149
    .line 150
    .line 151
    move-result-object p5

    .line 152
    invoke-direct {v1, p0, p5}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Landroid/os/Looper;)V

    .line 153
    .line 154
    .line 155
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 156
    .line 157
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 158
    .line 159
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    const-string p2, "wifinl80211"

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 168
    .line 169
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 170
    .line 171
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 172
    .line 173
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p3, p1, v0}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 178
    .line 179
    .line 180
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 181
    .line 182
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 187
    .line 188
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 189
    .line 190
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiLnaControl$$ExternalSyntheticLambda0;

    .line 195
    .line 196
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 207
    .line 208
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method private static baseLog(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    div-double/2addr p0, p2

    .line 10
    return-wide p0
.end method

.method private checkScpmPolicy()V
    .locals 14

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    const-string v1, "9999"

    .line 4
    .line 5
    const-string v2, "SCPM: descriptor & stream close failure"

    .line 6
    .line 7
    const-string v3, "SCPM: new policy "

    .line 8
    .line 9
    const-string v4, "SCPM: null file descriptor "

    .line 10
    .line 11
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    const-string v0, "SCPM: null data provider"

    .line 17
    .line 18
    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v7, 0x0

    .line 23
    :try_start_0
    const-string v8, "ELNA_CONTROL"

    .line 24
    .line 25
    invoke-interface {v5, v8}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, " "

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    if-eqz v5, :cond_c

    .line 67
    .line 68
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :catchall_1
    move-exception v0

    .line 78
    move-object v4, v7

    .line 79
    move-object v8, v4

    .line 80
    :goto_1
    move-object v9, v8

    .line 81
    :goto_2
    move-object v7, v5

    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    .line 92
    .line 93
    :try_start_4
    new-instance v8, Ljava/io/DataInputStream;

    .line 94
    .line 95
    invoke-direct {v8, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 96
    .line 97
    .line 98
    :try_start_5
    new-instance v9, Ljava/io/BufferedReader;

    .line 99
    .line 100
    new-instance v10, Ljava/io/InputStreamReader;

    .line 101
    .line 102
    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 106
    .line 107
    .line 108
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    if-nez v7, :cond_2

    .line 113
    .line 114
    const-string v0, "SCPM: empty data"

    .line 115
    .line 116
    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 117
    .line 118
    .line 119
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_2
    move-exception v0

    .line 130
    goto :goto_2

    .line 131
    :cond_2
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 139
    const-string v10, ""

    .line 140
    .line 141
    const/4 v11, 0x2

    .line 142
    if-eqz v7, :cond_3

    .line 143
    .line 144
    :try_start_9
    array-length v12, v7

    .line 145
    if-ne v12, v11, :cond_3

    .line 146
    .line 147
    aget-object v7, v7, v6

    .line 148
    .line 149
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    goto :goto_3

    .line 154
    :cond_3
    move-object v7, v10

    .line 155
    :goto_3
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_4

    .line 160
    .line 161
    const-string v0, "SCPM: wrong policy version"

    .line 162
    .line 163
    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 164
    .line 165
    .line 166
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    :try_start_b
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->latestSCPMVersion:Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v10, :cond_5

    .line 179
    .line 180
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-eqz v10, :cond_5

    .line 185
    .line 186
    const-string v0, "SCPM: existing policy"

    .line 187
    .line 188
    invoke-virtual {p0, v0, v11}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 189
    .line 190
    .line 191
    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_5
    :try_start_d
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {p0, v3, v11}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->latestSCPMVersion:Ljava/lang/String;

    .line 210
    .line 211
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 212
    .line 213
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    .line 214
    .line 215
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    .line 216
    .line 217
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getProductModelName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    :cond_6
    :goto_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-eqz v3, :cond_8

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-eqz v3, :cond_6

    .line 236
    .line 237
    array-length v7, v3

    .line 238
    const/4 v10, 0x3

    .line 239
    if-ge v7, v10, :cond_7

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_7
    aget-object v7, v3, v6

    .line 243
    .line 244
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    if-eqz v7, :cond_6

    .line 253
    .line 254
    array-length v7, v3

    .line 255
    const/4 v12, 0x5

    .line 256
    if-lt v7, v12, :cond_6

    .line 257
    .line 258
    aget-object v7, v3, v11

    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    .line 265
    .line 266
    aget-object v7, v3, v10

    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    .line 273
    .line 274
    const/4 v7, 0x4

    .line 275
    aget-object v7, v3, v7

    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    iput-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 282
    .line 283
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaCurrent:[I

    .line 284
    .line 285
    aget-object v10, v3, v12

    .line 286
    .line 287
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    const/4 v12, 0x0

    .line 296
    aput v10, v7, v12

    .line 297
    .line 298
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaCurrent:[I

    .line 299
    .line 300
    const/4 v10, 0x6

    .line 301
    aget-object v10, v3, v10

    .line 302
    .line 303
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    aput v10, v7, v6

    .line 312
    .line 313
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxCurrent:[I

    .line 314
    .line 315
    const/4 v10, 0x7

    .line 316
    aget-object v10, v3, v10

    .line 317
    .line 318
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    aput v10, v7, v12

    .line 327
    .line 328
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxCurrent:[I

    .line 329
    .line 330
    const/16 v10, 0x8

    .line 331
    .line 332
    aget-object v10, v3, v10

    .line 333
    .line 334
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v10

    .line 342
    aput v10, v7, v6

    .line 343
    .line 344
    const/16 v7, 0x9

    .line 345
    .line 346
    aget-object v7, v3, v7

    .line 347
    .line 348
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaGain:I

    .line 357
    .line 358
    const/16 v7, 0xa

    .line 359
    .line 360
    aget-object v7, v3, v7

    .line 361
    .line 362
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v7

    .line 370
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlHighThresholdDbm:I

    .line 371
    .line 372
    const/16 v7, 0xb

    .line 373
    .line 374
    aget-object v7, v3, v7

    .line 375
    .line 376
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaControlLowThresholdDbm:I

    .line 385
    .line 386
    const/16 v7, 0xc

    .line 387
    .line 388
    aget-object v3, v3, v7

    .line 389
    .line 390
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 395
    .line 396
    .line 397
    move-result-wide v12

    .line 398
    iput-wide v12, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->elnaEnableSensitivityRatio:D
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 399
    .line 400
    goto/16 :goto_4

    .line 401
    .line 402
    :cond_8
    :try_start_e
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 409
    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :catchall_3
    move-exception v0

    .line 414
    move-object v9, v7

    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :catchall_4
    move-exception v0

    .line 418
    move-object v8, v7

    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :catchall_5
    move-exception v0

    .line 422
    move-object v4, v7

    .line 423
    move-object v8, v4

    .line 424
    move-object v9, v8

    .line 425
    :goto_5
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string v3, "SCPM: policy query failure "

    .line 431
    .line 432
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 447
    .line 448
    .line 449
    if-eqz v9, :cond_9

    .line 450
    .line 451
    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 452
    .line 453
    .line 454
    :cond_9
    if-eqz v8, :cond_a

    .line 455
    .line 456
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 457
    .line 458
    .line 459
    :cond_a
    if-eqz v4, :cond_b

    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 462
    .line 463
    .line 464
    :cond_b
    if-eqz v7, :cond_c

    .line 465
    .line 466
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 467
    .line 468
    .line 469
    :cond_c
    :goto_6
    return-void

    .line 470
    :catchall_6
    move-exception v0

    .line 471
    if-eqz v9, :cond_d

    .line 472
    .line 473
    :try_start_11
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 474
    .line 475
    .line 476
    :cond_d
    if-eqz v8, :cond_e

    .line 477
    .line 478
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 479
    .line 480
    .line 481
    :cond_e
    if-eqz v4, :cond_f

    .line 482
    .line 483
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 484
    .line 485
    .line 486
    :cond_f
    if-eqz v7, :cond_10

    .line 487
    .line 488
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 489
    .line 490
    .line 491
    goto :goto_7

    .line 492
    :catchall_7
    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 493
    .line 494
    .line 495
    :cond_10
    :goto_7
    throw v0
.end method

.method private eLnaControl(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->eLnaControl(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatusChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaStatus:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string p1, "Cmd not working"

    .line 24
    .line 25
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private eLnaStatus()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->eLnaStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, -0x1

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    :catch_0
    move p0, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    if-ltz p0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-gt p0, v1, :cond_1

    .line 22
    .line 23
    move v0, p0

    .line 24
    :cond_1
    return v0
.end method

.method private findExpectedMCS(IIII)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    .line 4
    .line 5
    add-int/lit8 v3, p1, -0x1

    .line 6
    .line 7
    aget-object v2, v2, v3

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v0, v3, :cond_1

    .line 11
    .line 12
    aget v3, v2, v0

    .line 13
    .line 14
    mul-int/lit8 v4, p2, 0x3

    .line 15
    .line 16
    add-int/2addr v4, v3

    .line 17
    if-lt p3, v4, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    .line 20
    .line 21
    if-ne p1, v1, :cond_0

    .line 22
    .line 23
    array-length v1, v2

    .line 24
    add-int/lit8 v2, p4, -0x1

    .line 25
    .line 26
    mul-int/2addr v2, v1

    .line 27
    add-int/2addr v2, v0

    .line 28
    move v1, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v1, v0

    .line 31
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v1
.end method

.method private getExpectedRate(IIII)D
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->RATE_TABLE:[[[D

    .line 2
    .line 3
    add-int/lit8 v1, p1, -0x1

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-lt p2, v1, :cond_0

    .line 9
    .line 10
    array-length p2, v0

    .line 11
    add-int/lit8 p2, p2, -0x1

    .line 12
    .line 13
    :cond_0
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    .line 14
    .line 15
    if-ne p1, p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    aget-object p0, v0, p0

    .line 19
    .line 20
    array-length p0, p0

    .line 21
    rem-int/2addr p4, p0

    .line 22
    :cond_1
    aget-object p0, v0, p2

    .line 23
    .line 24
    aget-wide p0, p0, p4

    .line 25
    .line 26
    int-to-double p2, p3

    .line 27
    mul-double/2addr p0, p2

    .line 28
    return-wide p0
.end method

.method private getExpectedRssi(IIII)I
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->wifiStandardBound:I

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    .line 6
    .line 7
    add-int/lit8 v0, p1, -0x1

    .line 8
    .line 9
    aget-object p0, p0, v0

    .line 10
    .line 11
    array-length p0, p0

    .line 12
    rem-int/2addr p3, p0

    .line 13
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->MIN_SENSITIVITY_TABLE:[[I

    .line 14
    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    aget-object p0, p0, p1

    .line 18
    .line 19
    array-length p1, p0

    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    if-ge p3, p1, :cond_1

    .line 23
    .line 24
    add-int/2addr p3, p4

    .line 25
    :cond_1
    aget p0, p0, p3

    .line 26
    .line 27
    mul-int/lit8 p2, p2, 0x3

    .line 28
    .line 29
    add-int/2addr p2, p0

    .line 30
    return p2
.end method

.method private getProductModelName()Ljava/lang/String;
    .locals 2

    .line 1
    const-string p0, "ro.product.model"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x3

    .line 19
    const/4 v1, 0x7

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    :goto_0
    const-string p0, ""

    .line 26
    .line 27
    return-object p0
.end method

.method private getRateStatIdx(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRxMpdu()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    aput v5, v1, v3

    .line 30
    .line 31
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRateStatList:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 48
    .line 49
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getBandwidthInMhz()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getBandwidthInMhz()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v7, v8, :cond_0

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getNumberOfSpatialStreams()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getNumberOfSpatialStreams()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-ne v7, v8, :cond_0

    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getPreamble()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getPreamble()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-ne v7, v8, :cond_0

    .line 78
    .line 79
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRateMcsIdx()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRateMcsIdx()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-ne v7, v8, :cond_0

    .line 88
    .line 89
    aget v7, v1, v3

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRxMpdu()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    sub-int/2addr v7, v6

    .line 96
    aput v7, v1, v3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    move p0, v2

    .line 103
    :goto_2
    if-ge v2, v0, :cond_4

    .line 104
    .line 105
    aget p1, v1, v2

    .line 106
    .line 107
    aget v3, v1, p0

    .line 108
    .line 109
    if-lt p1, v3, :cond_3

    .line 110
    .line 111
    move p0, v2

    .line 112
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    return p0
.end method

.method private getWifiDriverVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object p0

    .line 32
    :cond_2
    :goto_0
    const-string p0, "0000"

    .line 33
    .line 34
    return-object p0
.end method

.method private getWifiFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object p0

    .line 33
    :cond_2
    :goto_0
    const-string p0, "0000"

    .line 34
    .line 35
    return-object p0
.end method

.method private getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "wifi"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mIfaceName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    iget p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object v0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lnaControlHandler:Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->screenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private policyComplianceCheck()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getWifiDriverVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getWifiFirmwareVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "1.0"

    .line 26
    .line 27
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->versionViolation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    :goto_0
    const-string v2, "Compliance violation: ver. "

    .line 39
    .line 40
    const-string v3, " "

    .line 41
    .line 42
    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmDriverVersion:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v2, v3, v1, v3}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmFirmwareVersion:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " 1.0 "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->scpmElnaControlVersion:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x2

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return p0
.end method

.method private updateWifiUsabilityStatsEntry(Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioRxTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioTxTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRateStats()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    const-wide/32 v10, 0xf4240

    .line 24
    .line 25
    .line 26
    div-long/2addr v8, v10

    .line 27
    if-eqz v7, :cond_1

    .line 28
    .line 29
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    if-lez v10, :cond_1

    .line 34
    .line 35
    invoke-direct {v0, v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getRateStatIdx(Ljava/util/List;)I

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    check-cast v11, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 44
    .line 45
    invoke-virtual {v11}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getPreamble()I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    add-int/lit8 v11, v11, 0x1

    .line 50
    .line 51
    iput v11, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMode:I

    .line 52
    .line 53
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    check-cast v11, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 58
    .line 59
    invoke-virtual {v11}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getBandwidthInMhz()I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    iput v11, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastBW:I

    .line 64
    .line 65
    const/16 v12, 0x14

    .line 66
    .line 67
    if-lt v11, v12, :cond_0

    .line 68
    .line 69
    div-int/lit8 v11, v11, 0x14

    .line 70
    .line 71
    int-to-double v11, v11

    .line 72
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 73
    .line 74
    invoke-static {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->baseLog(DD)D

    .line 75
    .line 76
    .line 77
    move-result-wide v11

    .line 78
    double-to-int v11, v11

    .line 79
    :cond_0
    iput v11, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastBW:I

    .line 80
    .line 81
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    check-cast v11, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 86
    .line 87
    invoke-virtual {v11}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getRateMcsIdx()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    iput v11, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastMCSIdx:I

    .line 92
    .line 93
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    check-cast v10, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 98
    .line 99
    invoke-virtual {v10}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->getNumberOfSpatialStreams()I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    iput v10, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastNSS:I

    .line 104
    .line 105
    iput-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRateStatList:Ljava/util/List;

    .line 106
    .line 107
    :cond_1
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRxTimeMs:J

    .line 108
    .line 109
    sub-long v10, v3, v10

    .line 110
    .line 111
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTxTimeMs:J

    .line 112
    .line 113
    sub-long v12, v5, v12

    .line 114
    .line 115
    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTimeMs:J

    .line 116
    .line 117
    sub-long v14, v8, v14

    .line 118
    .line 119
    move-wide/from16 v16, v10

    .line 120
    .line 121
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCcaBusyTimeMs:J

    .line 122
    .line 123
    sub-long v10, v1, v10

    .line 124
    .line 125
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastRxTimeMs:J

    .line 126
    .line 127
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTxTimeMs:J

    .line 128
    .line 129
    iput-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastTimeMs:J

    .line 130
    .line 131
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->lastCcaBusyTimeMs:J

    .line 132
    .line 133
    const-wide/16 v1, 0x64

    .line 134
    .line 135
    mul-long v1, v1, v16

    .line 136
    .line 137
    sub-long/2addr v14, v10

    .line 138
    sub-long/2addr v14, v12

    .line 139
    div-long/2addr v1, v14

    .line 140
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->rxTimeRatioPercent:J

    .line 141
    .line 142
    return-void
.end method

.method private versionViolation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    const-string v1, "\\."

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    array-length v3, p2

    .line 20
    if-ge v2, v3, :cond_6

    .line 21
    .line 22
    array-length v3, p1

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    aget-object v3, p1, v2

    .line 27
    .line 28
    const-string v4, "[^0-9]"

    .line 29
    .line 30
    const-string v5, ""

    .line 31
    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    aget-object v6, p2, v2

    .line 37
    .line 38
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    move v3, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    move v4, v1

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_2
    if-le v4, v3, :cond_4

    .line 67
    .line 68
    return v0

    .line 69
    :cond_4
    if-ge v4, v3, :cond_5

    .line 70
    .line 71
    return v1

    .line 72
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "ver. violation check failure: "

    .line 79
    .line 80
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    return v0

    .line 98
    :cond_6
    return v1

    .line 99
    :cond_7
    :goto_3
    return v0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SemWifiLnaControl"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    const/4 p0, 0x2

    .line 14
    if-ne p2, p0, :cond_2

    .line 15
    .line 16
    const-string p0, "SemWifiLnaControl"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string p0, "SemWifiLnaControl"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 28
    .line 29
    const-string p2, "MM-dd HH:mm:ss.SSS"

    .line 30
    .line 31
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Ljava/util/Date;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " "

    .line 56
    .line 57
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    .line 68
    .line 69
    monitor-enter p1

    .line 70
    :try_start_1
    sget-object p2, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    .line 71
    .line 72
    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    const/16 p2, 0x7d0

    .line 82
    .line 83
    if-le p0, p2, :cond_3

    .line 84
    .line 85
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    monitor-exit p1

    .line 94
    return-void

    .line 95
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string p1, "SemWifiLnaControl"

    .line 99
    .line 100
    const-string p2, "format problem"

    .line 101
    .line 102
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "SemWifiLnaControl history:"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->mWifiScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    return-void
.end method
