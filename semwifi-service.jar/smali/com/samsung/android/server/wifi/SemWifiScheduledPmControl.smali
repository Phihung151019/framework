.class public final Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;,
        Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;
    }
.end annotation


# static fields
.field private static final CONNECTION_STATE_CHANGED:I = 0x5

.field private static final CREATE_SCHEDULED_PM_SESSION:I = 0x1

.field private static final DELAY_FOR_COMMAND_RETRY_MS:I = 0x320

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1f4

.field private static final DUMP_ARG:Ljava/lang/String; = "ScheduledPmControl history:"

.field private static final FAILURE_DUE_TO_BUSY:I = -0xa

.field private static final FAILURE_DUE_TO_FIRMWARE_UNINITIALIZED:I = -0x2

.field private static final FAILURE_DUE_TO_INVALID_ARGS:I = -0x5

.field private static final FAILURE_DUE_TO_NOT_AVAILABLE:I = -0x4

.field private static final FAILURE_DUE_TO_NOT_SUPPORTED:I = -0x3

.field private static final FAILURE_DUE_TO_OTHER_REASON:I = -0x1

.field private static final SCHEDULED_PM_CREATION_EVENT:I = 0x3

.field private static final SCHEDULED_PM_TEARDOWN_EVENT:I = 0x4

.field private static final SESSION_ACTIVATED:I = 0x1

.field private static final SESSION_CREATION_FAILED_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final SESSION_CREATION_SUCCESS:I = 0x0

.field private static final SESSION_NOT_EXISTED:I = 0x0

.field private static final SESSION_SUSPENDED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemWifiScheduledPmControl"

.field private static final TEARDOWN_SCHEDULED_PM_SESSION:I = 0x2

.field private static final TORNDOWN_BY_HOST:I = 0x0

.field private static final TORNDOWN_DUE_TO_MULTI_CHANNEL_CONNECTION:I = 0x3

.field private static final TORNDOWN_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TORNDOWN_DUE_TO_PS_DISABLED:I = 0x7

.field private static final TORNDOWN_DUE_TO_ROAM_CSA:I = 0x4

.field private static final TORNDOWN_SPM_BY_HOST:I = 0xfe

.field private static final TORNDOWN_SPM_DUE_TO_CONCURRENCY:I = 0x2

.field private static final TORNDOWN_SPM_DUE_TO_CSA_TO_2GHZ_BAND:I = 0x1

.field private static final TORNDOWN_SPM_DUE_TO_OTHER_REASONS:I = 0xff

.field private static final TORNDOWN_SPM_DUE_TO_PS_DISABLED:I = 0x3

.field private static final TORNDOWN_SPM_DUE_TO_ROAM_TO_2GHZ_BAND:I


# instance fields
.field private final mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

.field private final mControlHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatedDuration:I

.field private mCreatedInterval:I

.field private mCreatedSessionId:I

.field mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

.field private mSessionStatus:I

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private setupRetryCnt:I

.field private tearDownRetryCnt:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedDuration:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedInterval:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedSessionId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mSessionStatus:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCreatedDuration(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedDuration:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCreatedInterval(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedInterval:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCreatedSessionId(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedSessionId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSessionStatus(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mSessionStatus:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputsetupRetryCnt(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtearDownRetryCnt(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertTwtReasonCode(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->convertTwtReasonCode(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleSetupFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->handleSetupFailures(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->handleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->initializeVariables()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->logControlHistory(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mreportNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->reportNegotiationResult(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->reportTeardownResult(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetupScheduledPm(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupScheduledPm(Ljava/lang/String;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mteardownScheduledPm(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->teardownScheduledPm(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .locals 1

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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedDuration:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedInterval:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedSessionId:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mSessionStatus:I

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 28
    .line 29
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    .line 39
    .line 40
    return-void
.end method

.method private convertTwtReasonCode(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_3

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, p0, :cond_2

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 p0, 0xfe

    .line 13
    .line 14
    if-eq p1, p0, :cond_0

    .line 15
    .line 16
    const/16 p0, 0xff

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x7

    .line 22
    return p0

    .line 23
    :cond_2
    return v0

    .line 24
    :cond_3
    const/4 p0, 0x4

    .line 25
    return p0
.end method

.method private handleSetupFailures(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->teardownSessionIfExist()V

    .line 13
    .line 14
    .line 15
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/16 v0, -0xa

    .line 19
    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/4 v0, -0x5

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, -0x4

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    const/4 v0, -0x2

    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->teardownSessionIfExist()V

    .line 38
    .line 39
    .line 40
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    const/16 v0, 0x320

    .line 45
    .line 46
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private handleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->queryScheduledPmStatus(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    .line 14
    .line 15
    const/16 p1, 0xfe

    .line 16
    .line 17
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(II)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    .line 26
    .line 27
    const/16 v3, 0xa

    .line 28
    .line 29
    if-le v0, v3, :cond_1

    .line 30
    .line 31
    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    .line 32
    .line 33
    const/16 p1, 0xff

    .line 34
    .line 35
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(II)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x2

    .line 40
    const/16 v1, 0x320

    .line 41
    .line 42
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessageDelayed(ILjava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private initializeVariables()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedDuration:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedInterval:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mCreatedSessionId:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mSessionStatus:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->setupRetryCnt:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->tearDownRetryCnt:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    .line 25
    .line 26
    return-void
.end method

.method private logControlHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "SemWifiScheduledPmControl"

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

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

.method private queryScheduledPmStatus(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;
    .locals 6

    .line 1
    const-string v0, "SemWifiScheduledPmControl"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "Invalid status return: "

    .line 6
    .line 7
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 8
    .line 9
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, v3, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    :try_start_0
    const-string v4, "\n"

    .line 24
    .line 25
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v4, "\r"

    .line 30
    .line 31
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v1, " "

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    array-length v4, v1

    .line 42
    const/4 v5, 0x3

    .line 43
    if-ne v4, v5, :cond_0

    .line 44
    .line 45
    aget-object p0, v1, p1

    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iput p0, v3, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    aget-object p0, v1, p0

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    iput p0, v3, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 61
    .line 62
    const/4 p0, 0x2

    .line 63
    aget-object p0, v1, p0

    .line 64
    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    iput p0, v3, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    .line 70
    .line 71
    return-object v3

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iput p1, v3, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    return-object v3

    .line 84
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "exception : "

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iput p1, v3, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    .line 102
    .line 103
    :cond_1
    return-object v3
.end method

.method private removeMessages(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

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

.method private sendMessage(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessageDelayed(ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

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

.method private setupScheduledPm(Ljava/lang/String;II)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p2, " "

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " 2048 -1 -1 -1 -1"

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method private teardownScheduledPm(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownScheduledPm(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private teardownSessionIfExist()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->queryScheduledPmStatus(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public changeSessionParameters(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->createSession(Ljava/lang/String;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public connectionStateChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHandler:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmControlHandler;

    .line 2
    .line 3
    const/4 v0, 0x5

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
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 9
    .line 10
    iput p3, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 11
    .line 12
    iput p4, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->mControlHistory:Ljava/util/LinkedList;

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
    const-string p0, "ScheduledPmControl history:"

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

.method public onScheduledPmTorndown(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public querySessionExistence(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->queryScheduledPmStatus(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public teardownSession(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, v0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->sendMessage(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
