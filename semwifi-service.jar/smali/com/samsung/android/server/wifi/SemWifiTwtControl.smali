.class public final Lcom/samsung/android/server/wifi/SemWifiTwtControl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;,
        Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;
    }
.end annotation


# static fields
.field private static final CONNECTION_STATE_CHANGED:I = 0x6

.field private static final CREATE_TWT_SESSION:I = 0x1

.field private static final DELAY_FOR_COMMAND_RETRY_MS:I = 0x320

.field private static final DELAY_FOR_RECOVERY_MS:I = 0x64

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1f4

.field private static final DUMP_ARG:Ljava/lang/String; = "TWT Control history:"

.field private static final FLOW_TYPE_ANNOUNCED:I = 0x0

.field private static final FLOW_TYPE_NON_ANNOUNCED:I = 0x1

.field private static final MIN_LATENCY_TOLERANCE_MS:I = 0x2710

.field private static final NEGOTICATION_TYPE_BROADCAST:I = 0x1

.field private static final NEGOTICATION_TYPE_INDIVIDUAL:I = 0x0

.field private static final NOT_ACCEPTABLE_RESPONSE:I = 0x1

.field private static final NOT_SUPPORT_TWT_INFORMATION:I = 0x8

.field private static final NOT_UPDATE_PARAMETER:I = 0x4

.field private static final NO_RESPONSE_FROM_PEER:I = 0x10

.field private static final REJECT_PARAMETER_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemWifiTwtControl"

.field private static final TEARDOWN_TWT_SESSION:I = 0x2

.field private static final TRIGGER_TYPE_NON_TRIGGER_ENABLED:I = 0x0

.field private static final TRIGGER_TYPE_TRIGGER_ENABLED:I = 0x1

.field private static final TWT_ACTIVATED:I = 0x1

.field private static final TWT_CMD_FAILURE_BUSY:I = -0xa

.field private static final TWT_CMD_FAILURE_INVALID_ARGS:I = -0x5

.field private static final TWT_CMD_FAILURE_NOT_AVAILABLE:I = -0x4

.field private static final TWT_CMD_FAILURE_NOT_SUPPORTED:I = -0x3

.field private static final TWT_CMD_FAILURE_OTHERS:I = -0x1

.field private static final TWT_CMD_FAILURE_UNINITIALIZED:I = -0x2

.field private static final TWT_DRIVER_COMMAND_TIMEOUT:I = 0x5

.field private static final TWT_LATENCY_TOLERANCE:I = 0x14

.field private static final TWT_NEGOTIATION_RESULT_EVENT:I = 0x3

.field private static final TWT_NEGO_RESULT_ACCEPTED:I = 0x0

.field private static final TWT_NEGO_RESULT_FAILED_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TWT_NEGO_RESULT_IE_VALIDATION_FAILED:I = 0x3

.field private static final TWT_NEGO_RESULT_NOT_ACCEPTABLE_SUGGESTION:I = 0x4

.field private static final TWT_NEGO_RESULT_NO_RESPONSE_FROM_PEER:I = 0x2

.field private static final TWT_NEGO_RESULT_REJECTED:I = 0x1

.field private static final TWT_NEGO_RESULT_TWT_INFORMATION_DISABLED_AP:I = 0x5

.field private static final TWT_NOTIFY_CLEAR_TWT_REQUIRED_BIT:I = 0x3

.field private static final TWT_NOTIFY_DONGLE_READY:I = 0x1

.field private static final TWT_NOTIFY_SET_TWT_REQUIRED_BIT:I = 0x2

.field private static final TWT_NO_NEGOTIATION:I = 0x0

.field private static final TWT_RATE_TOLERANCE:I = 0x14

.field private static final TWT_SETUP_CMD_TIMEOUT_MS:I = 0x44c

.field private static final TWT_SUSPENDED:I = 0x2

.field private static final TWT_TEARDOWN_CMD_TIMEOUT_MS:I = 0x898

.field private static final TWT_TEARDOWN_EVENT:I = 0x4

.field private static final TWT_TORNDOWN_BY_HOST:I = 0x0

.field private static final TWT_TORNDOWN_BY_PEER:I = 0x1

.field private static final TWT_TORNDOWN_DUE_TO_BT_COEX:I = 0x5

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_CHANNEL_CONNECTION:I = 0x3

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_CONNECTION_IN_SAME_CHANNEL:I = 0x2

.field private static final TWT_TORNDOWN_DUE_TO_MULTI_LINK_ACTIVATION:I = 0x8

.field private static final TWT_TORNDOWN_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TWT_TORNDOWN_DUE_TO_PS_DISABLED:I = 0x7

.field private static final TWT_TORNDOWN_DUE_TO_ROAM_CSA:I = 0x4

.field private static final TWT_TORNDOWN_DUE_TO_WIFI_SCAN:I = 0x9

.field private static final TWT_TORNDOWN_FAILED_DUE_TO_NO_RESPONSE_FROM_PEER:I = 0x6


# instance fields
.field private errorDetectionCntForCmdTimeout:I

.field private errorDetectionCntForTwtSetup:I

.field private errorDetectionCntForTwtTeardown:I

.field private mApAbnormality:I

.field private mFirmwareAbnormality:I

.field private mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNegotiatedDuration:I

.field private mNegotiatedInterval:I

.field private mNegotiatedSessionId:I

.field private mNegotiationStatus:I

.field mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

.field private final mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

.field private final mTwtSetupHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWaitingSetupResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWaitingTeardownResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private setupRetryCnt:I

.field private tearDownRetryCnt:I


# direct methods
.method static bridge synthetic -$$Nest$fgeterrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForCmdTimeout:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtTeardown:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedSetupAfterTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingRenegotiation(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingSetupResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingTeardownResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForCmdTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputerrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtTeardown:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmApAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFirmwareAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mFirmwareAbnormality:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegotiatedDuration(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegotiatedInterval(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegotiatedSessionId(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->handleNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetupFailures(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->handleSetupFailures(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiTwtControl;ILcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->handleTeardownFailures(ILcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->initializeVariables()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mreportNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V
    .locals 2

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportNegotiationResult(IIII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static bridge synthetic -$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportTeardownResult(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetupTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;III)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupTwt(Ljava/lang/String;III)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mteardownAllTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mteardownTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownTwt(Ljava/lang/String;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingSetupResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingTeardownResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    .line 41
    .line 42
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    .line 43
    .line 44
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 45
    .line 46
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 47
    .line 48
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 56
    .line 57
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Landroid/os/Looper;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    .line 67
    .line 68
    return-void
.end method

.method private doesApNotResponseToTwtRequest()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x10

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private doesApSuggestNotAcceptableSession()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private handleNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Negotiation result "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    const/4 v2, 0x1

    .line 50
    const/4 v3, 0x0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    .line 57
    .line 58
    add-int/2addr v4, v2

    .line 59
    iput v4, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    .line 60
    .line 61
    const/4 v5, 0x3

    .line 62
    if-le v4, v5, :cond_3

    .line 63
    .line 64
    const-string v0, "Stop retry due to burst failure"

    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    .line 70
    .line 71
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->querySessionExistence(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 83
    .line 84
    if-ne p1, v1, :cond_2

    .line 85
    .line 86
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 87
    .line 88
    or-int/lit8 v0, v0, 0x10

    .line 89
    .line 90
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 91
    .line 92
    :cond_2
    invoke-direct {p0, v3, p1, v3, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportNegotiationResult(IIII)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    .line 97
    .line 98
    const/4 v4, 0x4

    .line 99
    if-eq v0, v4, :cond_5

    .line 100
    .line 101
    const/4 v3, 0x5

    .line 102
    if-eq v0, v3, :cond_4

    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    const/16 v0, 0x320

    .line 106
    .line 107
    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 112
    .line 113
    or-int/lit8 v0, v0, 0x8

    .line 114
    .line 115
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 116
    .line 117
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 122
    .line 123
    or-int/2addr p1, v2

    .line 124
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 125
    .line 126
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 127
    .line 128
    invoke-direct {p0, p1, v4, v3, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportNegotiationResult(IIII)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_6
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 133
    .line 134
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 135
    .line 136
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 137
    .line 138
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 139
    .line 140
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    .line 141
    .line 142
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 143
    .line 144
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    .line 145
    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 147
    .line 148
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->isAgreementAcceptable(Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 155
    .line 156
    or-int/2addr v0, v2

    .line 157
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 158
    .line 159
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_7
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 164
    .line 165
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    .line 166
    .line 167
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    .line 168
    .line 169
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->reportNegotiationResult(IIII)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method private handleSetupFailures(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-le v0, v2, :cond_0

    .line 11
    .line 12
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/16 v0, -0xa

    .line 19
    .line 20
    const/16 v2, 0x320

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eq p1, v0, :cond_8

    .line 24
    .line 25
    const/4 v0, -0x5

    .line 26
    if-eq p1, v0, :cond_6

    .line 27
    .line 28
    const/4 v0, -0x4

    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    .line 31
    const/4 v0, -0x2

    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    if-eq p1, v0, :cond_8

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->queryTwtStatus(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->status:I

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 62
    .line 63
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 64
    .line 65
    if-lez v0, :cond_4

    .line 66
    .line 67
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    .line 73
    .line 74
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 75
    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 77
    .line 78
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 79
    .line 80
    if-ne v0, v1, :cond_3

    .line 81
    .line 82
    const-string p1, "Unexpected setup failure. Teardown all session for recovery."

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    const/4 v0, 0x2

    .line 92
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    const-string p1, "Unexpected setup id. Teardown all session."

    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 106
    .line 107
    return-void

    .line 108
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 109
    .line 110
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 111
    .line 112
    if-gtz v0, :cond_7

    .line 113
    .line 114
    iput v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 115
    .line 116
    :cond_7
    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_8
    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private handleTeardownFailures(ILcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->querySessionExistence(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 20
    .line 21
    iget p2, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 22
    .line 23
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 24
    .line 25
    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 26
    .line 27
    const/4 p1, 0x4

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/16 v0, -0xa

    .line 33
    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    const-string p2, "Unexpected teardown failure "

    .line 37
    .line 38
    const-string v0, " Teardown all session for recovery."

    .line 39
    .line 40
    invoke-static {p2, p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    .line 53
    .line 54
    const/16 v0, 0xa

    .line 55
    .line 56
    if-le p1, v0, :cond_2

    .line 57
    .line 58
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const/4 p1, 0x2

    .line 63
    const/16 v0, 0x320

    .line 64
    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private initializeVariables()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingSetupResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingTeardownResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedDuration:I

    .line 23
    .line 24
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedInterval:I

    .line 25
    .line 26
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiatedSessionId:I

    .line 27
    .line 28
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 29
    .line 30
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 31
    .line 32
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    .line 33
    .line 34
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtSetup:I

    .line 35
    .line 36
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForTwtTeardown:I

    .line 37
    .line 38
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->errorDetectionCntForCmdTimeout:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 41
    .line 42
    const-string v2, ""

    .line 43
    .line 44
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 45
    .line 46
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 47
    .line 48
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 49
    .line 50
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 51
    .line 52
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mFirmwareAbnormality:I

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 56
    .line 57
    return-void
.end method

.method private isAgreementAcceptable(Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)Z
    .locals 7

    .line 1
    iget v0, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_4

    .line 5
    .line 6
    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget v3, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 12
    .line 13
    mul-int/lit8 v4, v3, 0x64

    .line 14
    .line 15
    div-int/2addr v4, v2

    .line 16
    mul-int/lit8 v4, v4, 0x50

    .line 17
    .line 18
    div-int/lit8 v4, v4, 0x64

    .line 19
    .line 20
    iget v5, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 21
    .line 22
    mul-int/lit8 v6, v5, 0x64

    .line 23
    .line 24
    div-int/2addr v6, v0

    .line 25
    sub-int/2addr v2, v3

    .line 26
    sub-int/2addr v0, v5

    .line 27
    sub-int v3, v0, v2

    .line 28
    .line 29
    if-lez v3, :cond_1

    .line 30
    .line 31
    const/16 v5, 0x2710

    .line 32
    .line 33
    if-ge v3, v5, :cond_1

    .line 34
    .line 35
    add-int/2addr v2, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    mul-int/lit8 v2, v2, 0x78

    .line 38
    .line 39
    div-int/lit8 v2, v2, 0x64

    .line 40
    .line 41
    :goto_0
    if-lt v6, v4, :cond_3

    .line 42
    .line 43
    if-le v0, v2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, ""

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " / "

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, " requested, but "

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget p1, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget p1, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 84
    .line 85
    const-string p2, " received"

    .line 86
    .line 87
    invoke-static {p2, p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return v1

    .line 95
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v2, "Interval is zero: "

    .line 98
    .line 99
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " "

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget p1, p2, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return v1
.end method

.method private isTwtInformationFrameNotSupported()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private logTwtControlHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "SemWifiTwtControl"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string v1, "MM-dd HH:mm:ss.SSS "

    .line 9
    .line 10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/Date;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 v0, 0x1f4

    .line 58
    .line 59
    if-le p1, v0, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method private queryTwtStatus(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 11
    .line 12
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :try_start_0
    const-string v3, "\n"

    .line 20
    .line 21
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v3, "\r"

    .line 26
    .line 27
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, " "

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-lez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    aget-object p2, p1, v2

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    :goto_0
    iput p2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    aget-object p2, p1, p2

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iput p2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->status:I

    .line 56
    .line 57
    const/4 p2, 0x2

    .line 58
    aget-object p2, p1, p2

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iput p2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 65
    .line 66
    const/4 p2, 0x3

    .line 67
    aget-object p1, p1, p2

    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    return-object v1

    .line 76
    :catch_0
    move-exception p1

    .line 77
    const-string p2, "Exception "

    .line 78
    .line 79
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_1
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->status:I

    .line 88
    .line 89
    return-object v1
.end method

.method private removeMessages(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private reportNegotiationResult(IIII)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onSessionCreationResult(IIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private reportTeardownResult(II)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->onSessionTeardownResult(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private sendMessageDelayed(ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    int-to-long p2, p3

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private sendTimeoutEventForRecovery(Ljava/lang/String;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 7
    .line 8
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x5

    .line 11
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setupTwt(Ljava/lang/String;III)I
    .locals 3

    .line 1
    const/16 v0, 0x44c

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendTimeoutEventForRecovery(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    const-string v1, " 0 0 0 "

    .line 9
    .line 10
    const-string v2, " "

    .line 11
    .line 12
    invoke-static {v0, v1, p2, p3, v2}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string p3, " -1 -1 -1 -1 -1 -1 -1"

    .line 17
    .line 18
    invoke-static {p3, p4, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setupTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method private teardownAllTwt()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/16 v2, 0x64

    .line 17
    .line 18
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private teardownTwt(Ljava/lang/String;I)I
    .locals 2

    .line 1
    const/16 v0, 0x898

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendTimeoutEventForRecovery(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    const-string v1, " 0"

    .line 9
    .line 10
    invoke-static {v0, p2, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method


# virtual methods
.method public changeSessionParameters(Ljava/lang/String;III)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->createSession(Ljava/lang/String;III)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWaitingRenegotiation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 p4, 0x1

    .line 14
    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownSession(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public connectionStateChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtControlHandler:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public createSession(Ljava/lang/String;III)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 9
    .line 10
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 11
    .line 12
    iput p4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mTwtSetupHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "TWT Control history:"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

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
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

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
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public getAbnormalityOfAP()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mApAbnormality:I

    .line 2
    .line 3
    return p0
.end method

.method public hasAbnormalityInFirmware()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mFirmwareAbnormality:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public hasTwtIotIssue()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->isTwtInformationFrameNotSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->doesApSuggestNotAcceptableSession()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->doesApNotResponseToTwtRequest()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public onChannelSwitchCompleted(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string p1, "Operating channel changed "

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNegotiationStatus:I

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/16 p1, 0x1388

    .line 15
    .line 16
    if-le p2, p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mNeedSetupAfterTeardown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->teardownAllTwt()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public onNegotiationCompleted(Ljava/lang/String;BBBBBBJII)V
    .locals 0

    .line 1
    const/4 p3, 0x5

    .line 2
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->setupRetryCnt:I

    .line 7
    .line 8
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 9
    .line 10
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 14
    .line 15
    and-int/lit16 p1, p2, 0xff

    .line 16
    .line 17
    iput p1, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 18
    .line 19
    and-int/lit16 p1, p4, 0xff

    .line 20
    .line 21
    iput p1, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 22
    .line 23
    iput p10, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 24
    .line 25
    iput p11, p3, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onTwtNotificationForReady(Ljava/lang/String;B)V
    .locals 0

    .line 1
    const-string p1, "Notification from dongle "

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onTwtTorndown(Ljava/lang/String;BB)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->tearDownRetryCnt:I

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 14
    .line 15
    and-int/lit16 p1, p2, 0xff

    .line 16
    .line 17
    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 18
    .line 19
    and-int/lit16 p1, p3, 0xff

    .line 20
    .line 21
    iput p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 22
    .line 23
    const/4 p1, 0x4

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public querySessionExistence(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    const-string v1, "\n"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "\r"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, " "

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    aget-object p1, p1, v2

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-lez p0, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const-string v0, "exception : "

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string p1, "Session existence query failed"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return v2
.end method

.method public queryTwtCapabilities(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0xa

    .line 15
    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    const-string v1, "exception : "

    .line 32
    .line 33
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->logTwtControlHistory(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return v0
.end method

.method public teardownSession(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->sendMessage(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
