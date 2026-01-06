.class public Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.super Lcom/android/internal/telephony/StateMachine;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DEFAULT_SATELLITE_STAY_AT_LISTENING_FROM_RECEIVING_MILLIS:J = 0x7530L

.field public static final blacklist DEFAULT_SATELLITE_STAY_AT_LISTENING_FROM_SENDING_MILLIS:J = 0x2bf20L

.field public static final blacklist DEMO_MODE_SATELLITE_STAY_AT_LISTENING_MILLIS:J = 0xbb8L

.field protected static final blacklist EVENT_ESOS_INACTIVITY_TIMER_TIMED_OUT:I = 0xb

.field protected static final blacklist EVENT_NB_IOT_INACTIVITY_TIMER_TIMED_OUT:I = 0x6

.field protected static final blacklist EVENT_P2P_SMS_INACTIVITY_TIMER_TIMED_OUT:I = 0xe

.field protected static final blacklist EVENT_SCREEN_OFF_INACTIVITY_TIMER_TIMED_OUT:I = 0xa

.field public static final blacklist SATELLITE_STAY_AT_LISTENING_FROM_RECEIVING_MILLIS:Ljava/lang/String; = "satellite_stay_at_listening_from_receiving_millis"

.field public static final blacklist SATELLITE_STAY_AT_LISTENING_FROM_SENDING_MILLIS:Ljava/lang/String; = "satellite_stay_at_listening_from_sending_millis"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;


# instance fields
.field private final blacklist mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final blacklist mAlarmListenerESOS:Landroid/app/AlarmManager$OnAlarmListener;

.field private final blacklist mAlarmListenerP2P:Landroid/app/AlarmManager$OnAlarmListener;

.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private final blacklist mConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentState:I

.field private final blacklist mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

.field private blacklist mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

.field private final blacklist mDisablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

.field private final blacklist mEnablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

.field private final blacklist mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mIdleState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

.field private blacklist mIgnoreCellularServiceState:Z

.field private blacklist mInactivityStartTimestamp:J

.field private blacklist mIsBinding:Z

.field private blacklist mIsBound:Z

.field private blacklist mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

.field private blacklist mIsDemoMode:Z

.field private blacklist mIsDeviceAlignedWithSatellite:Z

.field private blacklist mIsEsosInActivityTimerStarted:Z

.field private blacklist mIsP2pSmsInActivityTimerStarted:Z

.field private blacklist mIsRegisteredScreenStateChanged:Z

.field final blacklist mIsSatelliteSupported:Z

.field blacklist mIsScreenOn:Z

.field protected blacklist mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

.field private blacklist mLastDatagramTransferState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

.field private final blacklist mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/satellite/ISatelliteModemStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeningState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNotConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private final blacklist mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

.field private blacklist mPreviousState:I

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private blacklist mSatelliteGatewayService:Landroid/telephony/satellite/stub/ISatelliteGateway;

.field private blacklist mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

.field private blacklist mSatelliteGatewayServicePackageName:Ljava/lang/String;

.field private final blacklist mSatelliteModemInterface:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

.field private blacklist mSatelliteNbIotInactivityTimeoutMillis:J

.field private blacklist mSatelliteStayAtListeningFromReceivingMillis:J

.field private blacklist mSatelliteStayAtListeningFromSendingMillis:J

.field private blacklist mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

.field private final blacklist mTransferringState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

.field private final blacklist mUnavailableState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;


# direct methods
.method public static synthetic blacklist $r8$lambda$CwImlXTahQ1q4NLV7XY_7uEy7Sw(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ee1A9YvnJxi91cm4Gpl93hm6ABQ(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ILjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$notifyStateChangedEvent$3(ILjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jRffe7Dtw2078E_N2jjjJXAkt1E(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$notifyStateChangedEvent$4(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$txPc91CQN_C6IjHtdjmjMX02USQ(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$onEmergencyModeChanged$1(ZLjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yFMCRJf12iigJ9gvX17zJwQyNTg(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$onEmergencyModeChanged$2(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnablingState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mEnablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExponentialBackoff(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/ExponentialBackoff;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIdleState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoreCellularServiceState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeningState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeningState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mNotConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPreviousState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteModemInterface(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteModemInterface:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteStayAtListeningFromReceivingMillis(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromReceivingMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteStayAtListeningFromSendingMillis(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromSendingMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionMetricsStats(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferringState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mTransferringState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsEsosInActivityTimerStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsEsosInActivityTimerStarted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsP2pSmsInActivityTimerStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsP2pSmsInActivityTimerStarted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPreviousState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatelliteGatewayService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/telephony/satellite/stub/ISatelliteGateway;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayService:Landroid/telephony/satellite/stub/ISatelliteGateway;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbindService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->bindService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendUserInactivity(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->endUserInactivity()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluateStartingEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingEsosInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluateStartingP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingP2pSmsInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEventP2pSmsInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleEventP2pSmsInactivityTimerTimedOut()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEventScreenOffInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleEventScreenOffInactivityTimerTimedOut()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEventScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/os/AsyncResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleEventScreenStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSatelliteEnabledStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleSatelliteEnabledStateChanged(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleSatelliteEnablementStarted(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misConcurrentTnScanningSupported(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isConcurrentTnScanningSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misReceiving(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isReceiving(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSending(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isSending(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misTnScanningAllowedDuringSatelliteSession(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isTnScanningAllowedDuringSatelliteSession()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->notifyStateChangedEvent(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplogw(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->registerForScreenStateChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msLogState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sLogState(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->startNbIotInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopEsosInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopNbIotInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopP2pSmsInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unbindService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unregisterForScreenStateChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 99
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->DEBUG:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;ZLcom/android/internal/telephony/satellite/SatelliteModemInterface;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 304
    const-string v3, "SatelliteSessionController"

    move-object/from16 v10, p2

    invoke-direct {v0, v3, v10}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 151
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    .line 154
    const-string v3, ""

    iput-object v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 158
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    .line 164
    new-instance v12, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;

    const/4 v4, 0x0

    invoke-direct {v12, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v12, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mUnavailableState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;

    .line 165
    new-instance v13, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    invoke-direct {v13, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v13, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    .line 166
    new-instance v14, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    invoke-direct {v14, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v14, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mEnablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    .line 167
    new-instance v15, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

    invoke-direct {v15, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v15, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDisablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

    .line 168
    new-instance v5, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    invoke-direct {v5, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIdleState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    .line 169
    new-instance v6, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    invoke-direct {v6, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v6, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mTransferringState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    .line 170
    new-instance v7, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

    invoke-direct {v7, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v7, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeningState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

    .line 171
    new-instance v8, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    invoke-direct {v8, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v8, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mNotConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    .line 172
    new-instance v9, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    invoke-direct {v9, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v9, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    .line 178
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    .line 179
    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    .line 180
    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    .line 185
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDemoMode:Z

    const/4 v11, 0x1

    .line 187
    iput-boolean v11, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    .line 188
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    move-object/from16 v16, v5

    const-wide/16 v4, 0x0

    .line 189
    iput-wide v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    .line 190
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;-><init>(III)V

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLastDatagramTransferState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    const/4 v11, 0x0

    .line 198
    iput-object v11, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 203
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteSessionController$1;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 212
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsEsosInActivityTimerStarted:Z

    .line 213
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsP2pSmsInActivityTimerStarted:Z

    .line 215
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteSessionController$2;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$2;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerESOS:Landroid/app/AlarmManager$OnAlarmListener;

    .line 224
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteSessionController$3;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$3;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerP2P:Landroid/app/AlarmManager$OnAlarmListener;

    .line 306
    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 307
    iput-object v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    move-object/from16 v4, p3

    .line 308
    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object/from16 v4, p5

    .line 309
    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteModemInterface:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    .line 310
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 311
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    move-object v11, v6

    .line 312
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteStayAtListeningFromSendingMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromSendingMillis:J

    .line 314
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteStayAtListeningFromReceivingMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromReceivingMillis:J

    .line 316
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteNbIotInactivityTimeoutMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteNbIotInactivityTimeoutMillis:J

    .line 317
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 318
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, -0x1

    .line 319
    iput v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPreviousState:I

    .line 320
    iput v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    .line 321
    iput-boolean v2, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSatelliteSupported:Z

    move-object v5, v4

    .line 322
    new-instance v4, Lcom/android/internal/telephony/ExponentialBackoff;

    move-object v6, v11

    new-instance v11, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    const-wide/16 v5, 0x7d0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    const-wide/32 v7, 0xfa00

    move-object/from16 v21, v9

    const/4 v9, 0x2

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v22, v19

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 339
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_0

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 343
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 344
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 345
    const-class v4, Landroid/app/AlarmManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 347
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 348
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 349
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 350
    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 351
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 352
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    move-object/from16 v1, v22

    .line 353
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    move-object/from16 v1, v23

    .line 354
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    move-object/from16 v1, v24

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    move/from16 v2, p4

    .line 356
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->setInitialState(Z)V

    .line 357
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->start()V

    .line 360
    iget v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sLogState(IZ)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private blacklist bindService()V
    .locals 5

    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1636
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1637
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1638
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1639
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    .line 1641
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteGatewayPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1643
    const-string v0, "Unable to bind to the satellite gateway service because the package is undefined."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    .line 1647
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1648
    :try_start_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1649
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void

    :catchall_0
    move-exception p0

    .line 1649
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1653
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.telephony.satellite.SatelliteGatewayService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1656
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    .line 1658
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1661
    const-string v0, "Successfully bound to the satellite gateway service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1663
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1664
    :try_start_4
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1665
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1666
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error binding to the satellite gateway service. Retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 1668
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1667
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catchall_1
    move-exception v1

    .line 1665
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1671
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1672
    :try_start_8
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1673
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1674
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 1675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception binding to the satellite gateway service. Retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 1676
    invoke-virtual {v2}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms. Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1675
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p0

    .line 1673
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    goto :goto_2

    .line 1636
    :cond_3
    :goto_1
    :try_start_a
    monitor-exit v0

    return-void

    .line 1638
    :goto_2
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0
.end method

.method private blacklist checkForInactivity()V
    .locals 4

    .line 2089
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLastDatagramTransferState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    if-nez v0, :cond_1

    .line 2095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    :cond_1
    return-void
.end method

.method private blacklist displaySatelliteSessionFlow(Ljava/lang/String;)V
    .locals 1

    .line 2465
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private blacklist endUserInactivity()V
    .locals 6

    .line 2111
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    .line 2113
    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 2114
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->updateMaxInactivityDurationSec(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 2116
    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    :cond_0
    return-void
.end method

.method private blacklist evaluateStartingEsosInactivityTimer()V
    .locals 11

    .line 1895
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isEsosInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    const-string v0, "isEsosInActivityTimerStarted: ESOS inactivity timer already started"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1901
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v0

    .line 1902
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEsosSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1903
    const-string v0, "evaluateStartingEsosInactivityTimer: ESOS is not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1907
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1908
    const-string v0, "evaluateStartingEsosInactivityTimer: request is not emergency"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1912
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    if-eqz v0, :cond_4

    .line 1919
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    if-nez v0, :cond_3

    .line 1920
    const-string v0, "evaluateStartingEsosInactivityTimer: ScreenOff. Ignore alignment status and continue"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    goto :goto_0

    .line 1923
    :cond_3
    const-string v0, "evaluateStartingEsosInactivityTimer: can\'t start ESOS inactivity timer due to device aligned satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1930
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getEsosInactivityTimeoutDurationSec()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 1931
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v1

    .line 1932
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1933
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1939
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerESOS:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1940
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v4, v0

    add-long v5, v1, v4

    const-string v7, "SatelliteSessionController"

    new-instance v8, Landroid/os/HandlerExecutor;

    .line 1942
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v9, Landroid/os/WorkSource;

    invoke-direct {v9}, Landroid/os/WorkSource;-><init>()V

    iget-object v10, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerESOS:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v4, 0x2

    .line 1940
    invoke-virtual/range {v3 .. v10}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 1948
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsEsosInActivityTimerStarted:Z

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateStartingEsosInactivityTimer: start ESOS inactivity timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1944
    :catch_0
    const-string v0, "evaluateStartingEsosInactivityTimer: can not access AlarmManager to start timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1953
    :cond_5
    const-string v0, "evaluateStartingEsosInactivityTimer: can\'t start ESOS inactivity timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist evaluateStartingOrStoppingEsosInactivityTimer()V
    .locals 12

    .line 2316
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v0

    .line 2317
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEsosSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2318
    const-string v0, "evaluateStartingOrStoppingEsosInactivityTimer: ESOS is not supported. stop timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 2319
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopEsosInactivityTimer()V

    return-void

    .line 2323
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2324
    const-string v0, "evaluateStartingOrStoppingEsosInactivityTimer: request is not emergency.stop timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 2325
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopEsosInactivityTimer()V

    return-void

    .line 2329
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    if-eqz v0, :cond_3

    .line 2330
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    if-nez v0, :cond_2

    .line 2331
    const-string v0, "evaluateStartingOrStoppingEsosInactivityTimer: ScreenOff. Ignore alignment status and continue"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    goto :goto_0

    .line 2334
    :cond_2
    const-string v0, "evaluateStartingOrStoppingEsosInactivityTimer: can\'t start ESOS inactivity timer due to device aligned satellite. stop timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 2336
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopEsosInactivityTimer()V

    return-void

    .line 2341
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isEsosInActivityTimerStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_4

    .line 2342
    const-string v0, "evaluateStartingOrStoppingEsosInactivityTimer: timer already started. sustain running timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2347
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getEsosInactivityTimeoutDurationSec()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 2348
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v2

    .line 2349
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2350
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2352
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerESOS:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2353
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v5, v0

    add-long v6, v2, v5

    const-string v8, "SatelliteSessionController"

    new-instance v9, Landroid/os/HandlerExecutor;

    .line 2355
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v10, Landroid/os/WorkSource;

    invoke-direct {v10}, Landroid/os/WorkSource;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerESOS:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v5, 0x2

    .line 2353
    invoke-virtual/range {v4 .. v11}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsEsosInActivityTimerStarted:Z

    .line 2362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateStartingOrStoppingEsosInactivityTimer: start ESOS inactivity timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2357
    :catch_0
    const-string v0, "evaluateStartingOrStoppingEsosInactivityTimer: can not access AlarmManager to start timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2365
    :cond_5
    const-string v0, "evaluateStartingOrStoppingEsosInactivityTimer: can\'t start ESOS inactivity timer - transfer state not idle"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist evaluateStartingP2pSmsInactivityTimer()V
    .locals 11

    .line 2001
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    const-string v0, "isP2pSmsInActivityTimerStarted: P2P_SMS inactivity timer already started"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2007
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v0

    .line 2008
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsSupportedOnCarrierRoamingNtn(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2009
    const-string v0, "evaluateStartingP2pSmsInactivityTimer: P2P_SMS is not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2013
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    if-eqz v0, :cond_2

    .line 2014
    const-string v0, "evaluateStartingP2pSmsInactivityTimer: can\'t start P2P_SMS inactivity timer due to device aligned satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2019
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getP2pSmsInactivityTimeoutDurationSec()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 2020
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v1

    .line 2021
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2022
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2028
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerP2P:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2029
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2030
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v4, v0

    add-long v5, v1, v4

    const-string v7, "SatelliteSessionController"

    new-instance v8, Landroid/os/HandlerExecutor;

    .line 2031
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v9, Landroid/os/WorkSource;

    invoke-direct {v9}, Landroid/os/WorkSource;-><init>()V

    iget-object v10, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerP2P:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v4, 0x2

    .line 2029
    invoke-virtual/range {v3 .. v10}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 2037
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsP2pSmsInActivityTimerStarted:Z

    .line 2039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateStartingP2pSmsInactivityTimer: start P2P_SMS inactivity timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2033
    :catch_0
    const-string v0, "evaluateStartingP2pSmsInactivityTimer: can not access AlarmManager to start timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2042
    :cond_3
    const-string v0, "evaluateStartingP2pSmsInactivityTimer: can\'t start P2P_SMS inactivity timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getEsosInactivityTimeoutDurationSec()I
    .locals 2

    .line 1882
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 1884
    const-string v0, "satellite_roaming_esos_inactivity_timeout_sec_int"

    const/16 v1, 0x258

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/SatelliteSessionController;
    .locals 2

    .line 238
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    if-nez v0, :cond_0

    .line 243
    const-string v0, "SatelliteSessionController"

    const-string v1, "SatelliteSessionController was not yet initialized."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    return-object v0
.end method

.method private blacklist getP2pSmsInactivityTimeoutDurationSec()I
    .locals 2

    .line 1988
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 1990
    const-string v0, "satellite_roaming_p2p_sms_inactivity_timeout_sec_int"

    const/16 v1, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist getSatelliteGatewayPackageName()Ljava/lang/String;
    .locals 1

    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1628
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    return-object p0

    .line 1630
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10403c2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSatelliteNbIotInactivityTimeoutMillis()J
    .locals 2

    .line 2174
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2175
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0149

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    int-to-long v0, p0

    return-wide v0

    .line 2178
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e014e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0
.end method

.method private blacklist getSatelliteStayAtListeningFromReceivingMillis()J
    .locals 2

    .line 2165
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    return-wide v0

    .line 2168
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e014f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getSatelliteStayAtListeningFromSendingMillis()J
    .locals 2

    .line 2156
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    return-wide v0

    .line 2159
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0150

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getScreenOffInactivityTimeoutDurationSec()I
    .locals 2

    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 1877
    const-string v0, "satellite_roaming_screen_off_inactivity_timeout_sec_int"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist getSubId()I
    .locals 0

    .line 1581
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result p0

    return p0
.end method

.method private blacklist handleEventP2pSmsInactivityTimerTimedOut()V
    .locals 3

    .line 1840
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isEsosInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    const-string v0, "handleEventP2pSmsInactivityTimerTimedOut: processing: ESOS inactivity timer running can not move to IDLE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1844
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isTnScanningAllowedDuringSatelliteSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1845
    const-string v0, "handleEventP2pSmsInactivityTimerTimedOut: Transition to IDLE state"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIdleState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1848
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1849
    const-string v0, "handleEventP2pSmsInactivityTimerTimedOut: Emergency mode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1853
    :cond_2
    const-string v0, "handleEventP2pSmsInactivityTimerTimedOut: request disable satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 1857
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$4;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    const/4 p0, 0x0

    .line 1854
    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method

.method private blacklist handleEventScreenOffInactivityTimerTimedOut()V
    .locals 3

    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    const-string v0, "handleEventScreenOffInactivityTimerTimedOut: Emergency mode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->loge(Ljava/lang/String;)V

    return-void

    .line 2130
    :cond_0
    const-string v0, "handleEventScreenOffInactivityTimerTimedOut: request disable satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 2132
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 2135
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$5;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    const/4 p0, 0x0

    .line 2132
    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method

.method private blacklist handleEventScreenStateChanged(Landroid/os/AsyncResult;)V
    .locals 8

    if-nez p1, :cond_0

    .line 1774
    const-string p1, "handleEventScreenStateChanged: asyncResult is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void

    .line 1778
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1779
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    if-ne v0, p1, :cond_1

    .line 1780
    const-string p1, "handleEventScreenStateChanged: screen state is not changed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1783
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    .line 1785
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1786
    const-string p1, "handleEventScreenStateChanged: device is not in CarrierRoamingNbIotNtn"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->logd(Ljava/lang/String;)V

    return-void

    .line 1790
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1797
    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 1799
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screen state changed to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    if-eqz v0, :cond_5

    const-string v0, "ON"

    goto :goto_1

    :cond_5
    const-string v0, "OFF"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". reevaluate eSOS timer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1800
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingOrStoppingEsosInactivityTimer()V

    return-void

    .line 1806
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v0

    .line 1807
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsSupportedOnCarrierRoamingNtn(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1808
    const-string p1, "handleEventScreenStateChanged: P2P_SMS is not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    :cond_7
    if-nez p1, :cond_9

    .line 1814
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getScreenOffInactivityTimeoutDurationSec()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 1816
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_8

    .line 1817
    const-string p1, "handleEventScreenStateChanged: can not access AlarmManager to start timer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1822
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v3, p1

    add-long v2, v1, v3

    new-instance v5, Landroid/os/HandlerExecutor;

    .line 1823
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6}, Landroid/os/WorkSource;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v1, 0x2

    .line 1821
    const-string v4, "SatelliteSessionController"

    invoke-virtual/range {v0 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEventScreenStateChanged: start timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    :cond_9
    const/16 p1, 0xa

    .line 1827
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1829
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez p1, :cond_a

    .line 1830
    const-string p1, "handleEventScreenStateChanged: can not access AlarmManager to stop timer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1834
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1835
    const-string p1, "handleEventScreenStateChanged: stop timer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSatelliteEnabledStateChanged(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1608
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1610
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Unexpected satellite radio powered-on state changed event"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSatelliteEnablementStarted(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1730
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDisablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_0
    return-void
.end method

.method private blacklist isConcurrentTnScanningSupported()Z
    .locals 3

    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConcurrentTnScanningSupported: mIsConcurrentTnScanningSupportedForCtsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 2252
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2255
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 2258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConcurrentTnScanningSupported: ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDemoMode()Z
    .locals 0

    .line 750
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDemoMode:Z

    return p0
.end method

.method private blacklist isMockModemAllowed()Z
    .locals 1

    .line 2152
    sget-boolean p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->DEBUG:Z

    if-nez p0, :cond_1

    const-string p0, "persist.radio.allow_mock_modem"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isNbIotInactivityTimerStarted()Z
    .locals 1

    const/4 v0, 0x6

    .line 2214
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method private blacklist isP2pSmsSupportedOnCarrierRoamingNtn(I)Z
    .locals 2

    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteRoamingP2pSmSSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2231
    const-string p1, "isP2pSmsSupportedOnCarrierRoamingNtn: P2P_SMS is not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return v1

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSupportedServicesOnCarrierRoamingNtn(I)[I

    move-result-object p1

    const/4 v0, 0x3

    .line 2236
    invoke-static {p1, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2238
    const-string p1, "isP2pSmsSupportedOnCarrierRoamingNtn: P2P_SMS service is not supported on carrier roaming ntn."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return v1

    .line 2244
    :cond_1
    const-string p1, "isP2pSmsSupportedOnCarrierRoamingNtn: P2_SMS is supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isReceiving(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isSending(I)Z
    .locals 1

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private blacklist isTnScanningAllowedDuringSatelliteSession()Z
    .locals 3

    .line 2264
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTnScanningAllowedDuringSatelliteSession: mIsTnScanningDuringSatelliteSessionAllowedForCtsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 2268
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2271
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 2274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTnScanningAllowedDuringSatelliteSession: ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$new$0()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayService:Landroid/telephony/satellite/stub/ISatelliteGateway;

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    if-eqz v1, :cond_2

    .line 326
    :cond_1
    monitor-exit v0

    return-void

    .line 328
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 331
    :try_start_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    .line 332
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 333
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unbindService()V

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 333
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 336
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->bindService()V

    return-void

    .line 328
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private synthetic blacklist lambda$notifyStateChangedEvent$3(ILjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 2

    .line 1594
    :try_start_0
    invoke-interface {p3, p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->onSatelliteModemStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStateChangedEvent RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1597
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$notifyStateChangedEvent$4(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 0

    .line 1602
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyModeChanged$1(ZLjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 2

    .line 454
    :try_start_0
    invoke-interface {p3, p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->onEmergencyModeChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmergencyModeChanged RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 457
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyModeChanged$2(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Z)Lcom/android/internal/telephony/satellite/SatelliteSessionController;
    .locals 9

    .line 263
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSatelliteSupported:Z

    if-eq p3, v1, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    .line 267
    iget-object v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 268
    iget-boolean v2, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    .line 269
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->cleanUpResource()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 272
    :goto_0
    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    .line 277
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;ZLcom/android/internal/telephony/satellite/SatelliteModemInterface;)V

    sput-object v3, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    .line 278
    const-string p0, "SatelliteSessionController"

    if-eqz v1, :cond_2

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "make() existingListeners: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 283
    const-string p1, "make() existIgnoreCellularServiceState is true"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    .line 287
    :cond_3
    sget-object p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    return-object p0
.end method

.method private blacklist notifyStateChangedEvent(I)V
    .locals 3

    const/4 v0, 0x1

    .line 1587
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sLogState(IZ)V

    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->onSatelliteModemStateChanged(I)V

    .line 1591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1592
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1601
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .locals 1

    .line 2280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->logd(Ljava/lang/String;)V

    .line 2281
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 2282
    const-string v0, "SatelliteSessionController"

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .locals 1

    .line 2294
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->loge(Ljava/lang/String;)V

    .line 2295
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 2296
    const-string v0, "SatelliteSessionController"

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist plogw(Ljava/lang/String;)V
    .locals 1

    .line 2287
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->logw(Ljava/lang/String;)V

    .line 2288
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 2289
    const-string v0, "SatelliteSessionController"

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist registerForScreenStateChanged()V
    .locals 5

    .line 1740
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v0, :cond_0

    .line 1742
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    .line 1741
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->registerForScreenStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1744
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    .line 1745
    const-string v0, "registerForScreenStateChanged: registered"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1747
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForScreenStateChanged: skip register, mIsRegisteredScreenStateChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceStateMonitor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogw(Ljava/lang/String;)V

    return-void
.end method

.method private varargs blacklist sLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 2456
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    if-eqz v0, :cond_0

    const/16 v2, 0x9

    const/4 v4, 0x3

    const/16 v1, 0x8

    move-object v3, p1

    move-object v5, p2

    .line 2457
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/satellite/SatelliteController;->sLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private blacklist sLogState(IZ)V
    .locals 2

    .line 2446
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->satelliteModemStateToString(I)Ljava/lang/String;

    move-result-object p1

    .line 2447
    const-string v0, "state"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sLog(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 2451
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SatelliteModem state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->displaySatelliteSessionFlow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist setInitialState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1574
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    return-void

    .line 1576
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mUnavailableState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    return-void
.end method

.method private blacklist startNbIotInactivityTimer()V
    .locals 3

    .line 2189
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isSatelliteEnabledForNtnOnlySubscription()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    const-string v0, "startNbIotInactivityTimer: Can\'t start timer because satellite was not enabled for OEM based NB IOT"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2195
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isNbIotInactivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2196
    const-string v0, "NB IOT inactivity timer is already started"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2200
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v0

    .line 2201
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2202
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 2203
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteNbIotInactivityTimeoutMillis:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    :cond_2
    return-void
.end method

.method private blacklist stopEsosInactivityTimer()V
    .locals 2

    .line 1959
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isEsosInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1964
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsEsosInActivityTimerStarted:Z

    .line 1967
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerESOS:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1973
    const-string v0, "stopEsosInactivityTimer: ESOS inactivity timer stopped"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1969
    :catch_0
    const-string v0, "stopEsosInactivityTimer: can not access AlarmManager to stop timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist stopNbIotInactivityTimer()V
    .locals 1

    const/4 v0, 0x6

    .line 2210
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopP2pSmsInactivityTimer()V
    .locals 2

    .line 2048
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2053
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsP2pSmsInActivityTimerStarted:Z

    .line 2056
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerP2P:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    const-string v0, "stopP2pSmsInactivityTimer: P2P_SMS inactivity timer stopped"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2058
    :catch_0
    const-string v0, "stopP2pSmsInactivityTimer: can not access AlarmManager to stop timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist unbindService()V
    .locals 3

    .line 1681
    const-string v0, "unbindService"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    const/4 v0, 0x0

    .line 1683
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayService:Landroid/telephony/satellite/stub/ISatelliteGateway;

    .line 1684
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 1685
    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1686
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    .line 1687
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    if-eqz v1, :cond_0

    .line 1689
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1690
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 1687
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist unregisterForScreenStateChanged()V
    .locals 2

    .line 1759
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->unregisterForScreenStateChanged(Landroid/os/Handler;)V

    const/16 v0, 0x9

    .line 1761
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/16 v1, 0xa

    .line 1762
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1764
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    .line 1765
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    const/4 v0, 0x0

    .line 1767
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    .line 1768
    const-string v0, "unregisterForScreenStateChanged: unregistered"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist cleanUpResource()V
    .locals 6

    .line 699
    const-string v0, "cleanUpResource"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 700
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    const-wide/16 v1, 0x0

    .line 701
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    .line 702
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unregisterForScreenStateChanged()V

    .line 703
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    .line 704
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 706
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerESOS:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListenerP2P:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 708
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsEsosInActivityTimerStarted:Z

    .line 709
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsP2pSmsInActivityTimerStarted:Z

    .line 715
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 718
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 720
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpResource: unregisterForServiceStateChanged phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quitNow()V

    return-void
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN EVENT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1558
    :pswitch_0
    const-string p0, "EVENT_P2P_SMS_INACTIVITY_TIMER_TIMED_OUT"

    return-object p0

    .line 1564
    :pswitch_1
    const-string p0, "EVENT_SERVICE_STATE_CHANGED"

    return-object p0

    .line 1561
    :pswitch_2
    const-string p0, "EVENT_ENABLE_CELLULAR_MODEM_WHILE_SATELLITE_MODE_IS_ON_DONE"

    return-object p0

    .line 1555
    :pswitch_3
    const-string p0, "EVENT_ESOS_INACTIVITY_TIMER_TIMED_OUT"

    return-object p0

    .line 1552
    :pswitch_4
    const-string p0, "EVENT_SCREEN_OFF_INACTIVITY_TIMER_TIMED_OUT"

    return-object p0

    .line 1549
    :pswitch_5
    const-string p0, "EVENT_SCREEN_STATE_CHANGED"

    return-object p0

    .line 1546
    :pswitch_6
    const-string p0, "EVENT_SATELLITE_ENABLEMENT_FAILED"

    return-object p0

    .line 1543
    :pswitch_7
    const-string p0, "EVENT_SATELLITE_ENABLEMENT_STARTED"

    return-object p0

    .line 1540
    :pswitch_8
    const-string p0, "EVENT_NB_IOT_INACTIVITY_TIMER_TIMED_OUT"

    return-object p0

    .line 1534
    :pswitch_9
    const-string p0, "EVENT_DISABLE_CELLULAR_MODEM_WHILE_SATELLITE_MODE_IS_ON_DONE"

    return-object p0

    .line 1537
    :pswitch_a
    const-string p0, "EVENT_SATELLITE_MODEM_STATE_CHANGED"

    return-object p0

    .line 1531
    :pswitch_b
    const-string p0, "EVENT_SATELLITE_ENABLED_STATE_CHANGED"

    return-object p0

    .line 1528
    :pswitch_c
    const-string p0, "EVENT_LISTENING_TIMER_TIMEOUT"

    return-object p0

    .line 1525
    :pswitch_d
    const-string p0, "EVENT_DATAGRAM_TRANSFER_STATE_CHANGED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
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

.method public blacklist isEsosInActivityTimerStarted()Z
    .locals 0

    .line 1983
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsEsosInActivityTimerStarted:Z

    return p0
.end method

.method public blacklist isInDisablingState()Z
    .locals 2

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInDisablingState: getCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDisablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInEnablingState()Z
    .locals 2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInEnablingState: getCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mEnablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isP2pSmsInActivityTimerStarted()Z
    .locals 0

    .line 2072
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsP2pSmsInActivityTimerStarted:Z

    return p0
.end method

.method protected blacklist isSatelliteEnabledForNtnOnlySubscription()Z
    .locals 2

    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getNtnOnlySubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 2220
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2221
    const-string v0, "isSatelliteEnabledForOemBasedNbIot: highest priority satellite subscription is not NTN-only subscription"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 2379
    const-string p0, "SatelliteSessionController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 2389
    const-string p0, "SatelliteSessionController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 2429
    const-string p0, "SatelliteSessionController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2440
    const-string p0, "SatelliteSessionController"

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .locals 0

    .line 2409
    const-string p0, "SatelliteSessionController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 2399
    const-string p0, "SatelliteSessionController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .locals 0

    .line 2419
    const-string p0, "SatelliteSessionController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onCellularServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 736
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onDatagramTransferStateChanged(III)V
    .locals 1

    .line 376
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;-><init>(III)V

    .line 378
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLastDatagramTransferState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    const/4 p2, 0x1

    .line 380
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    if-ne p1, p2, :cond_0

    .line 383
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->checkForInactivity()V

    return-void

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->endUserInactivity()V

    return-void
.end method

.method public blacklist onEmergencyModeChanged(Z)V
    .locals 3

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmergencyModeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 461
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onSatelliteEnabledStateChanged(Z)V
    .locals 1

    .line 401
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteEnablementFailed(Z)V
    .locals 1

    .line 423
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteEnablementStarted(Z)V
    .locals 1

    .line 412
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .locals 1

    const/4 v0, 0x4

    .line 434
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public blacklist registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 2

    .line 474
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    invoke-interface {p1, v0}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->onSatelliteModemStateChanged(I)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->onEmergencyModeChanged(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForSatelliteModemStateChanged: Got RemoteException ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setAlarmManager(Landroid/app/AlarmManager;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public blacklist setDemoMode(Z)V
    .locals 0

    .line 619
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDemoMode:Z

    return-void
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .locals 2

    .line 634
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceAlignedWithSatellite: isAligned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 637
    iget-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    const/4 v0, 0x7

    const/4 v1, 0x6

    if-eqz p1, :cond_2

    .line 640
    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopEsosInactivityTimer()V

    .line 649
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopP2pSmsInactivityTimer()V

    .line 650
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->endUserInactivity()V

    return-void

    .line 642
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingOrStoppingEsosInactivityTimer()V

    .line 643
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopP2pSmsInactivityTimer()V

    .line 644
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->endUserInactivity()V

    return-void

    .line 661
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_4

    .line 665
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingOrStoppingEsosInactivityTimer()V

    .line 667
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingP2pSmsInactivityTimer()V

    .line 670
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->checkForInactivity()V

    return-void
.end method

.method blacklist setSatelliteGatewayServicePackageName(Ljava/lang/String;)Z
    .locals 3

    .line 552
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isMockModemAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 553
    const-string p1, "setSatelliteGatewayServicePackageName: modifying satellite gateway service package name is not allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return v1

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSatelliteGatewayServicePackageName: config_satellite_gateway_service_package is updated, new packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 561
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 564
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    goto :goto_1

    .line 562
    :cond_2
    :goto_0
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    .line 567
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    if-eqz p1, :cond_3

    .line 568
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 569
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    .line 570
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 571
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unbindService()V

    .line 573
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->bindService()V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 571
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setSatelliteIgnoreCellularServiceState(Z)Z
    .locals 2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteIgnoreCellularServiceState : old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " new : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 540
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    const/4 p0, 0x1

    return p0
.end method

.method blacklist setSatelliteListeningTimeoutDuration(J)Z
    .locals 2

    .line 505
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isMockModemAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const-string p1, "Updating listening timeout duration is not allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteListeningTimeoutDuration: timeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteStayAtListeningFromSendingMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromSendingMillis:J

    .line 515
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteStayAtListeningFromReceivingMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromReceivingMillis:J

    .line 517
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteNbIotInactivityTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteNbIotInactivityTimeoutMillis:J

    goto :goto_0

    .line 519
    :cond_1
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromSendingMillis:J

    .line 520
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromReceivingMillis:J

    .line 521
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteNbIotInactivityTimeoutMillis:J

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist setTnScanningSupport(ZZZ)Z
    .locals 2

    .line 589
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isMockModemAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    const-string p1, "setTnScanningSupport: modifying TN scanning support is not allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTnScanningSupport: reset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", concurrentTnScanningSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tnScanningDuringSatelliteSessionAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 599
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    .line 600
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    goto :goto_0

    .line 602
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    .line 604
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist unregisterForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
